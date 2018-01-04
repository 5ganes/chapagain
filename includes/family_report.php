<?php
function findTree($parent, $tree, $father){
    $sql ="SELECT family.id as id, name, gender FROM family join rel_father on family.id = rel_father.memberId 
    where rel_father.fatherId  = '$parent'";
    $cnt = mysql_query($sql);
    if(mysql_num_rows($cnt) > 0){
      while($res = mysql_fetch_array($cnt)){
        $tree .= ", ['".$res['name']."', '".$father."' ]";
      }
      $cnt = mysql_query($sql);
      while($res = mysql_fetch_array($cnt)){
        if($res['gender'] == 'Male'){
          $parent = $res['id'];
          $tree = findTree($parent, $tree, $res['name']);
        }
      }
    }
    return $tree;
}
$father = 'First Father';
$tree = "[['".$father."', '']";
$result = findTree(8, $tree, $father);
$result .= ']';
?>

<script type='text/javascript' src='https://www.google.com/jsapi'></script>  
<script type='text/javascript'>  
	google.load('visualization', '1', {packages:['orgchart']});  
	google.setOnLoadCallback(drawChart);  
	function drawChart() {  
		var data = new google.visualization.DataTable();  
		data.addColumn('string', 'Node');  
		data.addColumn('string', 'Parent');  
		data.addRows(<?php echo $result;?>);  
		var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));  
		chart.draw(data);  
	}  
</script> 

<!-- generate pdf during the print -->
<script>
    function printContent(el){
      //document.getElementById(e1).style="font-size:15px";
      var restorepage = document.body.innerHTML;
      var printcontent = document.getElementById(el).innerHTML;
      document.body.innerHTML = printcontent;
      window.print();
      document.body.innerHTML = restorepage;
    }
 </script>
<!-- generate pdf during the print end -->

<style type="text/css">
	.google-visualization-orgchart-node{border: none}
</style>
<div class="jumbotron" style="margin-top: 2%;">
    <div id="jumbo2">
        <div class="container welcome" style="width: 100%">
            <div class="row">
                <div class="col-sm-12 innerpage">
                    <h2 class="features">Family Report</h2>
                    <p><a target="_blank" href="#container" class="print" onClick="printContent('chart_div')">Print / Generate PDF</a></p>
                    <div id='chart_div' style="color: black"></div>
                </div>
            </div>
          </div>
    </div>
</div>