<?php 
  $host = "localhost";
  $uname = "root";    
  $psw = "";          
  $dbname = "chapagain";
  
  $links = mysql_connect($host,$uname,$psw) or die("Sorry, couldnot connect to MySQL Server");
  $db = mysql_select_db($dbname,$links) or die("Sorry, couldnot find database");      
  mysql_set_charset('utf8');
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
<html>  
  <head>  
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

  </head>  
  <body>  
    <a href="#container" class="print" onClick="printContent('chart_div')">Print</a>
   <div id='chart_div'></div>  
  </body>  
 </html>