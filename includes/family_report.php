<?php
  if(isset($_GET['parentDBId'])){
    $parentDBId = $_GET['parentDBId'];
    // die();
  }
  else{
    $parentDBId = 1;
  }
?>
<script src="gojstreeassets/go.js"></script>
<style type="text/css">
  .title-parenttabs{
    margin: 0 0 2% 0%; display: flex; color: black;
  }
  .title{
    padding: 0.8% 1%;
  }
  .parenttabs{
    margin-top: 1%; text-align: left; padding: 0;
  }
  .parenttabs select{
    width: 300px; height: 90%; color: black;
  }
  .parenttabs select option{
  }
  @media screen and (max-width: 600px){
    .title-parenttabs{
      flex-direction: column;
    }
    .title{
      width: 100%;
    }
  }
</style>

<script type="text/javascript">
  function myLoad(){
    var parent = document.getElementById('parentId');
    parent.addEventListener('change', function(){
      var parentValue = this.value;
      location.href ='family-report/' + parentValue;

      //   var xhttp = new XMLHttpRequest();
      //   xhttp.onreadystatechange = function() {
      //     if (this.readyState == 4 && this.status == 200) {
      //       treeString = this.responseText;
      //       alert(treeString);
      //       // init();
      //     }
      //   };
      //   xhttp.open("POST", "gojstreeassets/getTreeByParentAjax.php", true);
      //   var data = new FormData();
      //   data.append('parentId', parentValue);
      //   xhttp.send(data);
    });
  }
  document.addEventListener('DOMContentLoaded', myLoad);
</script>

<div class="jumbotron" style="margin-top: 2%;">
    <div id="jumbo2">
        <div class="container welcome" style="width: 100%">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title-parenttabs row">
                      <div class="title col-sm-3"><h2 class="features">Family Report</h2></div>
                      <div class="parenttabs col-sm-5">
                        <div class="col-sm-5">Tree By Parent : </div>
                        <select name="parentId" id="parentId" class="col-sm-7">
                          <?php
                            // get the first parents
                            $sql = "SElECT id, name FROM family WHERE id IN(1,2,3,4,5,6,7)";
                            $result = mysql_query($sql);
                            while($row = mysql_fetch_array($result)){
                              if($parentDBId == $row['id']) $selected = 'selected';
                              else $selected = '';
                              echo '<option value="' . $row['id'] . '" ' . $selected . '>' . $row['name'] . '</option>';
                            }
                          ?>
                        </select>
                      </div>
                      <div class="col-sm-3">
                        <a href=""></a>
                      </div>
                    </div>
                    <div id="sample">
                      <div id="myDiagramDiv" style="background-color: white; border: solid 1px black; width: 100%; height: 550px">
                      </div>
                      <p>
                        <button id="zoomToFit">Zoom to Fit</button> 
                        <button id="centerRoot">Center on root</button>
                      </p>
                    </div>
                </div>
            </div>
          </div>
    </div>
</div>

<?php
  function findTree($parentDBId, $tree, $parent){
  //{ key: 0, name: "George V", gender: "M", birthYear: "1865", deathYear: "1936", reign: "1910-1936" },
      $sql ="SELECT 
            f1.id as id, 
            f1.name as name, 
            f1.gender as gender,
            f1.birthDate as birthDate,
            f1.maritalStatus as maritalStatus,
            -- f2.name as fatherName,
            f3.name as motherName 
           FROM 
                    family as f1 
               LEFT JOIN 
                    rel_father as rf on f1.id = rf.memberId
               LEFT JOIN 
                    family as f2 on rf.fatherId = f2.id
               LEFT JOIN 
                    rel_mother as rm on f1.id = rm.memberId
               LEFT JOIN
                     family as f3 on rm.motherId = f3.id
           WHERE 
              rf.fatherId  = '$parentDBId'";
      
      $cnt = mysql_query($sql);
      if(mysql_num_rows($cnt) > 0){
          while($res = mysql_fetch_array($cnt)){
            global $key;
            $keyBackup = $key;
            $tree[] = '{ key: '. $key++ .', parent: ' . $parent .', name: "'. $res['name'] .'", gender: "'. substr($res['gender'], 0, 1) .'", motherName: "'. $res['motherName'] .'", bornDate: "'. $res['birthDate'] .'", maritalStatus: "'. $res['maritalStatus'] .'" }';
            if($res['gender'] == 'Male'){
              $parentDBId = $res['id'];
                $tree = findTree($parentDBId, $tree, $keyBackup);
                //$key = $key++;
            }
          }
      }
      return $tree;
  }
  $tree = array();
  $tree[] = '{ key: 0, name: "Haridas", gender: "M", motherName: "", bornDate: "1936", maritalStatus: "Married" }';
  $tree = findTree($parentDBId, $tree, 0); // findTree(parentIdDB, $treeArray, parentNodePosition);
  $treeString = implode(', ', $tree);
  // echo implode(', ', $tree); die();
  // echo '<pre>'; print_r($treeString); die();
   // echo '<pre>'; print_r($tree); die();

?>
<script id="code">
  init();
  function init() {
    // if (window.goSamples) goSamples();  // init for these samples -- you don't need to call this
    var $ = go.GraphObject.make;  // for conciseness in defining templates

    myDiagram =
      $(go.Diagram, "myDiagramDiv",  // must be the ID or reference to div
        {
          "toolManager.hoverDelay": 100,  // 100 milliseconds instead of the default 850
          allowCopy: false,
          layout:  // create a TreeLayout for the family tree
            $(go.TreeLayout,
              { angle: 90, nodeSpacing: 10, layerSpacing: 40, layerStyle: go.TreeLayout.LayerUniform })
        });

    var bluegrad = '#90CAF9';
    var pinkgrad = '#F48FB1';

    // Set up a Part as a legend, and place it directly on the diagram
    myDiagram.add(
      $(go.Part, "Table",
        { position: new go.Point(300, 10), selectable: false },
        $(go.TextBlock, "Indexes",
          { row: 0, font: "700 14px Droid Serif, sans-serif" }),  // end row 0
        $(go.Panel, "Horizontal",
          { row: 1, alignment: go.Spot.Left },
          $(go.Shape, "Rectangle",
            { desiredSize: new go.Size(30, 30), fill: bluegrad, margin: 5 }),
          $(go.TextBlock, "Males",
            { font: "700 13px Droid Serif, sans-serif" })
        ),  // end row 1
        $(go.Panel, "Horizontal",
          { row: 2, alignment: go.Spot.Left },
          $(go.Shape, "Rectangle",
            { desiredSize: new go.Size(30, 30), fill: pinkgrad, margin: 5 }),
          $(go.TextBlock, "Females",
            { font: "700 13px Droid Serif, sans-serif" })
        )  // end row 2
      ));

    // get tooltip text from the object's data
    function tooltipTextConverter(person) {
      var str = "";
      if (person.bornDate !== undefined) str += "BirthDate: " + person.bornDate;
      if (person.motherName !== undefined) str += "\nMotherName: " + person.motherName;
      if (person.maritalStatus !== undefined) str += "\nMaritalStatus: " + person.maritalStatus;
      return str;
    }

    // define tooltips for nodes
    var tooltiptemplate =
      $(go.Adornment, "Auto",
        $(go.Shape, "Rectangle",
          { fill: "whitesmoke", stroke: "black" }),
        $(go.TextBlock,
          { font: "bold 8pt Helvetica, bold Arial, sans-serif",
            wrap: go.TextBlock.WrapFit,
            margin: 5 },
          new go.Binding("text", "", tooltipTextConverter))
      );

    // define Converters to be used for Bindings
    function genderBrushConverter(gender) {
      if (gender === "M") return bluegrad;
      if (gender === "F") return pinkgrad;
      return "orange";
    }

    // replace the default Node template in the nodeTemplateMap
    myDiagram.nodeTemplate =
      $(go.Node, "Auto",
        { deletable: false, toolTip: tooltiptemplate },
        new go.Binding("text", "name"),
        $(go.Shape, "Rectangle",
          { fill: "lightgray",
            stroke: null, strokeWidth: 0,
            stretch: go.GraphObject.Fill,
            alignment: go.Spot.Center },
          new go.Binding("fill", "gender", genderBrushConverter)),
        $(go.TextBlock,
          { font: "700 12px Droid Serif, sans-serif",
            textAlign: "center",
            margin: 10, maxSize: new go.Size(80, NaN) },
          new go.Binding("text", "name"))
      );

    // define the Link template
    myDiagram.linkTemplate =
      $(go.Link,  // the whole link panel
        { routing: go.Link.Orthogonal, corner: 5, selectable: false },
        $(go.Shape, { strokeWidth: 3, stroke: '#424242' }));  // the gray link shape

    // here's the family data
    var nodeDataArray = [
      <?php echo $treeString; ?>
    ];
    //var nodeDataArray = [treeString];

    // create the model for the family tree
    myDiagram.model = new go.TreeModel(nodeDataArray);

    document.getElementById('zoomToFit').addEventListener('click', function() {
      myDiagram.zoomToFit();
    });

    document.getElementById('centerRoot').addEventListener('click', function() {
      myDiagram.scale = 1;
      myDiagram.scrollToRect(myDiagram.findNodeForKey(0).actualBounds);
    });

  }
</script>