<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>The Oprah Effect Database</title>
        <!-- Bootstrap core CSS -->
        <link type="text/css" href='<?php echo base_url(); ?>assets/css/bootstrap.min.css' rel="stylesheet">
        <link rel="stylesheet" href='<?php echo base_url(); ?>/assets/css/bootstrap.css'>
        <link rel="stylesheet" href='<?php echo base_url(); ?>/assets/css/style.css'>
        <!-- Custom styles for this template -->
        <link href="jumbotron.css" rel="stylesheet">
        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
        <title>Query Result</title>
        <?php $this->load->view('header');?>
    </head>
    <body>
        </br>
        </br>
        </br>
        <div  class="input-group">
            <form id="frmOptions" method="get" class="span12 col-lg-4 col-lg-offset-4" action='<?php echo base_url();?>main/query'>
                <div class="row-fluid">
                    <div class="form-group">
                        <div class="input-group ">
                            <input type="text" class="form-control " placeholder="Search" 
                            name="content" >
                            <span class="input-group-btn col-lg-offset-4"><button type="submit" class="btn btn-success">Search</button></span>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div class="jumbotron">
            <div class="container">
                </br>

    
        <?php 
         
            echo "<div style='text-align:center'>";
            echo "<p style='text-align:left;font-size:12pt'><b>Title:</b>&nbsp".$title."</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Language:</b>&nbsp".$name."</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Type:</b>&nbsp".$type."</p>";

            echo "<p style='text-align:left;font-size:12pt'><b>Examples:</b>";
           // $example = preg_split("/[\s,]+/",$examples);
            $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';

            $example = preg_split($regexp, $examples);

            $i=count($example);
            echo "<table>";
            echo "<col width='110'>";
            echo "<col width='180'>";
            echo "<col width='110'>";
            echo "<col width='500'>";
        


         
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }
            echo "</table>";
            echo "</p>";
            
            echo "<p style='text-align:left;font-size:12pt'><b>Source:</b>&nbsp".$source."</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Description:</b>&nbsp".$description."</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Derivational:</b>&nbsp";
                if(strlen($derivational)>=50){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $de = preg_split($regexp, $derivational);

                 $i=count($de);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";    
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt'>".$de[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$de[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$de[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$de[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $derivational;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Inflectional:</b>&nbsp";
            
            if(strlen($inflectional)>=50){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $example = preg_split($regexp, $inflectional);

                 $i=count($example);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";    
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p>";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $inflectional;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Prefixes:</b>&nbsp";
           
            if( strlen($prefixes)>=50){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $example = preg_split($regexp, $prefixes);

                 $i=count($example);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";    
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $prefixes;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Infixes:</b>&nbsp";
             if( strlen($infixes)>=50){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $example = preg_split($regexp, $infixes);

                 $i=count($example);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";    
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $infixes;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Variation:</b>&nbsp".$variation."</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Frequency:</b>&nbsp".$frequency."</p>";
            echo "<p style='text-align:left;font-size:12pt'><b>Extent:</b>&nbsp".$extent."</p>";
            echo "</div>";
            ?>
                </div>
            </div>
        </div>

        <?php $this->load->view('footer'); ?>
    </body>
</html>