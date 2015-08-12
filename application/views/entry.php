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
        <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
        <script>
            $(document).ready(function(){
                $("#inputSearch").focus();
            })
     
            function f1(input){
              input.href="<?php echo base_url();?>main/reference";
            }
        </script>
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
                            <input type="text" class="form-control " placeholder="Search" id="inputSearch"
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
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Title:</b>&nbsp".$title."</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Language:</b>&nbsp".$name."</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Type:</b>&nbsp".$type."</p>";

            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Examples:</b>";
           // $example = preg_split("/[\s,]+/",$examples);
            $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';

            $example = preg_split($regexp, $examples);

            $i=count($example);
            echo "<table>";
            echo "<col width='110'>";
            echo "<col width='280'>";
            echo "<col width='180'>";
            echo "<col width='400'>";
        


            if ($name!=='French'&&$name!=='Canadian English'){
                 for ($x=0;4*$x+3<$i;$x++){
                        echo "<tr>";
                        echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x]."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+1]."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+2]."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+3]."</td>";
                        echo "</tr>";
                        echo "</p >";
                      }
                         echo "</table>";
                        echo "</p>";
            }else
            {   
                if ($name==='French'){
                 echo "<tr>";
                        echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."lə eʁo"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'the hero'"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."l eʁo-in"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'the heroine'"."</td>";
                        echo "</tr>";
                        echo "</p >";

                        echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."lə pəti itlɛʁ"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'the little Hitler'"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."œ̃ pətit itleʁjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'a little follower of Hitler'"."</td>";
                        echo "</tr>";
                        echo "</p >";

                        echo "</table>";
                        echo "</p>";
                }
                else if ($name==='Canadian English'){
                    echo "<tr>";
                        echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."film nwɑʀ"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘film noir’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."nuwɑɹ-ɪst"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘noirist’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                        echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretién (name)’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kɹeɪtʃjɛn-z"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘possesive’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                          echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."menaʒ a tʀwɑ"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."ménage á trois’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."meɪnɑʒ ɑ tɹwɑ-z"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘plural’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                          echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."o pɛʀ"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘au pair’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."oʊpɛəɹ-z"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘plural’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                            echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'Montreal’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mʌntɹiɑl-əɹ"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Montrealer’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                        echo "</table>";
                        echo "</p>";

                }

            }
           
            
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Source:</b>&nbsp".$source."</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Description:</b>&nbsp".$description."</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Derivational suffixes: </b>&nbsp";
            echo $dtrigger;
            echo "</p>";
            echo "<p>";
                if(strlen($derivational)>=1){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $de = preg_split($regexp, $derivational);

                 $i=count($de);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";    
            if ($name!=='Canadian English'){
                     for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$de[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$de[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$de[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$de[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
                 }
            }else{

                     echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretién (name)’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kɹeɪtʃjɛn-ɪzəm"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretiénism’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                         echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'Montreal’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mʌntɹiɑl-əɹ"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Montrealer’"."</td>";
                        echo "</tr>";
                        echo "</p >";
            }
       
            echo "</table>";
            echo "</p>";
                }else
                echo $derivational;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Inflectional suffixes:</b>&nbsp";
            echo $itrigger;
            echo "</p>";
            echo "<p>";
            
            if(strlen($inflectional)>=1){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $example = preg_split($regexp, $inflectional);

                 $i=count($example);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";  
            if ($name!=='Canadian English')   {
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p>";
            }
            }else{

                    echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretién (name)’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."  kɹeɪtʃjɛn-z"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘plural’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                  echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'Montreal’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mʌntɹiɑl-z"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘plural’"."</td>";
                        echo "</tr>";
                        echo "</p >";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $inflectional;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Prefixes:</b>&nbsp";
            echo $ptrigger;
            echo "</p>";
            echo "<p>";
           
            if( strlen($prefixes)>=1){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $example = preg_split($regexp, $prefixes);

                 $i=count($example);
                  echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='150'>";
                echo "<col width='500'>"; 
         if ($name!=='Canadian English') {       
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }}
            else{
                 echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretién (name)’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."æntaɪ-kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘anti-’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                  echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'Montreal’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."nɒn-mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘non-’"."</td>";
                        echo "</tr>";
                        echo "</p >";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $prefixes;
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Infixes:</b>&nbsp";
             if( strlen($infixes)>=65 || $name==='Tagalog'){
                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                 if( $name==='Tagalog'){
                    echo $infixes;
                    $infixes="fiesta    ‘feast’ p=in=ag-pista-han \n";
                 }

                  $example = preg_split($regexp, $infixes);

                 $i=count($example);
                echo "<table>";
                echo "<col width='150'>";
                echo "<col width='180'>";
                echo "<col width='150'>";
                echo "<col width='500'>";
            if ($name!=='Canadian English'){    
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }}
             else{
                 echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretién (name)’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."kɹeɪ-fʌkɪŋ-tʃjɛn"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Chretién-expletive’ "."</td>";
                        echo "</tr>";
                        echo "</p >";

                          echo "<p >";
                          echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."\t"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."\t"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."æntaɪ-fʌkɪŋ-kʀetjɛ̃"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘anti-Chretién-expletive’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                  echo "<p >";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."'Montreal’"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."mʌntɹi-fʌkɪŋ-ɑl"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘Montreal-expletive’"."</td>";
                        echo "</tr>";
                        echo "</p >";

                         echo "<p >";
                          echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."\t"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."\t"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."nɒn-fʌkɪŋ—mɔ̃ʀeal"."</td>";
                        echo "<td style='text-align:left;font-size:12pt;color:#000000'>"."‘non-Montreal-expletive’"."</td>";
                        echo "</tr>";
                        echo "</p >";
            }
            echo "</table>";
            echo "</p>";
                }else
                echo $infixes;
            echo "</p>";

            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Variation:</b>&nbsp".$variation."</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Frequency:</b>&nbsp";
            if($name!='Tagalog')
                echo  $frequency;
            else{
                echo "<p style='text-align:left;font-size:12pt;color:#000000'>";
                echo "Corpus data available.";
                echo "</p>";
               $str="filipino 20,074        pilipino 12,011 
                affix+filipino 86   affix+pilipino 1,117
                fiesta 952  pista 416   
                affix+fiesta 27 affix+pista 607";

                 $regexp = '/\G(?:"[^"]*"|\'[^\']*\'|[^"\'\s]+)*\K\s+/';
                  $example = preg_split($regexp, $str);

                 $i=count($example);
                echo "<table>";
                echo "<col width='110'>";
                echo "<col width='180'>";
                echo "<col width='110'>";
                echo "<col width='500'>";    
            for ($x=0;4*$x+3<$i;$x++){
                echo "<tr>";
                echo "<p >";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+1]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+2]."</td>";
                echo "<td style='text-align:left;font-size:12pt;color:#000000'>".$example[4*$x+3]."</td>";
                echo "</tr>";
                echo "</p >";
            }
            echo "</table>";
            echo "</p>";
            }
            echo "<p style='text-align:left;font-size:12pt;color:#000000'>";
            if ($name==='Tagalog')
                echo "F-variants are about twice as frequent as p-variants in the non-affixed words. F-variants are rare in affixed words.";
            echo "</p>";  
            echo "</p>";
            echo "<p style='text-align:left;font-size:12pt;color:#000000'><b>Extent:</b>&nbsp".$extent."</p>";
            echo "</div>";
            ?>
                </div>
            </div>
        </div>

        <?php $this->load->view('footer'); ?>
    </body>
</html>