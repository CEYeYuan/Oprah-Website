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
                <div style="text-align:center">

    
        <?php 
            foreach($result->result() as $row){
               echo "<p style='text-align:left;font-size:12pt'><b>Language: </b>".$row->name."</p>";
               $string=str_replace(' ', '', $row->title);
               $url=base_url().$string;
               echo "<p style='text-align:left;font-size:12pt'><b>Title: </b><a href=$url>".$row->title."</a></p>";
               echo "</br>";
            }

            $data['name']=$result->row()->name;
            $data['type']=$result->row()->type;
            $data['examples']=$result->row()->examples;
            $data['source']=$result->row()->source;
            $data['description']=$result->row()->description;
            $data['derivational']=$result->row()->derivational;
            $data['inflectional']=$result->row()->inflectional;
            $data['prefixes']=$result->row()->prefixes;
            $data['infixes']=$result->row()->infixes;
            $data['variation']=$result->row()->variation;
            $data['frequency']=$result->row()->frequency;
            $data['extent']=$result->row()->extent;
            /*echo "<div style='text-align:center'>";
            echo "<p><b>Language:</b>".$name."</p>";
            echo "<p><b>Type:</b>".$type."</p>";
            echo "<p><b>Examples:</b>".$examples."</p>";
            echo "<p><b>Source:</b>".$source."</p>";
            echo "<p><b>Description:</b>".$description."</p>";
            echo "<p><b>Derivational:</b>".$derivational."</p>";
            echo "<p><b>Inflectional:</b>".$inflectional."</p>";
            echo "<p><b>Prefixes:</b>".$prefixes."</p>";
            echo "<p><b>Infixes:</b>".$infixes."</p>";
            echo "<p><b>Variation:</b>".$variation."</p>";
            echo "<p><b>Frequency:</b>".$frequency."</p>";
            echo "<p><b>Extent:</b>".$extent."</p>";
            echo "</div>";*/
            ?>
                </div>
            </div>
        </div>

        <?php $this->load->view('footer'); ?>
    </body>
</html>