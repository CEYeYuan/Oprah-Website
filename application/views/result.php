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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
            $("#searchField").focus();
        })  ;
        </script>
        <title>Query Result</title>
        <?php $this->load->view('header');?>
        <script>

        // an XMLHttpRequest
        var xhr = null;

        /*
         * void
         * quote()
         *
         * Gets a quote.
         */
        function quote()
        {
            // instantiate XMLHttpRequest object
            try
            {
                xhr = new XMLHttpRequest();
            }
            catch (e)
            {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }

            // handle old browsers
            if (xhr == null)
            {
                alert("Ajax not supported by your browser!");
                return;
            }

            // get symbol
            var symbol = document.getElementById("searchField").value;

            // construct URL
            var url = "main/query?content=" + symbol;

            // get quote
            xhr.onreadystatechange =
            function()
            {
                // only handle loaded requests
                if (xhr.readyState == 4)
                {
                    if (xhr.status == 200)
                    {
                        // evaluate JSON
                        var quote = eval("(" + xhr.responseText + ")");

                        // show JSON in textarea
                        document.getElementById("all").value = xhr.responseText;

                        // insert quote into DOM
                        var div = document.createElement("div");
                        var text = document.createTextNode(symbol + ": " + quote.price);
                        div.appendChild(text);
                        document.getElementById("quotes").appendChild(div);
                    }
                    else
                        alert("Error with Ajax call!");
                }
            }
            xhr.open("GET", url, true);
            xhr.send(null);
        }

    </script>
    </head>
    <body id="all">
        </br>
        </br>
        </br>
        <div  class="input-group">
            <form id="frmOptions" method="get" class="span12 col-lg-4 col-lg-offset-4" action='<?php echo base_url();?>main/query'>
                <div class="row-fluid">
                    <div class="form-group">
                        <div class="input-group ">
                            <input type="text" class="form-control " placeholder="Search" id="searchField" 
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
               
               $url=base_url().'main/id/'.$row->id;
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