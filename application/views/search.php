<!DOCTYPE html>
<html lang="en">
	<head>
		<?php $this->load->view('header'); ?>
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
		<script src="../../dist/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
		<script>
		
            $(document).ready(function(){
            	$("#searchInput").focus();
            })
		
		</script>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<!-- Main jumbotron for a primary marketing message or call to action -->
		
<div class="container">
  <div class="jumbotron">
  <br/><br/><br/><br/><br/><br/>
   
   
  
  <div class="row">
    <div class="col-sm-3">
      <img src="<?php echo base_url();?>assets/img/oprah.jpg" alt="oprah winfrey" width=240px height=340px />
      
    </div>
    <div class="col-sm-7">
    <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>
    	<form  method="get" action='<?php echo base_url();?>main/query'>
     <div class="input-group ">
			
			


							<input type="text" class="form-control " placeholder="Search"  id="searchInput"
							name="content" >
							<span class="input-group-btn col-lg-offset-4">
								<button type="submit" class="btn btn-success">Search</button>
							</span>

						</div>

						<div class="container">
						<div style="font-size:12pt">
	
							<br/>
							
							<b>Type:  &nbsp &nbsp </b>
							<input type="checkbox" name="type[]" value="Native"/> Native &nbsp &nbsp
							<input type="checkbox" name="type[]" value="Loanwords"/> Loanwords &nbsp &nbsp
							<input type="checkbox" name="type[]" value="Others"/> Others
							<br/>
							<b>Affixes  triggers: &nbsp &nbsp</b>
							<input type="checkbox" name="affixes[]" value='dtrigger'/> Derivational  &nbsp &nbsp
							<input type="checkbox" name="affixes[]" value='itrigger'/> Inflectional &nbsp &nbsp
							<input type="checkbox" name="affixes[]" value='ptrigger'/> Prefixes &nbsp &nbsp
							<input type="checkbox" name="affixes[]" value='infixes'/> Infixes
						</div>	
							
						</div>
						</form>
    </div>
    <div class="col-sm-2">
     <br/> <br/> <br/> <br/>
      <img src="<?php echo base_url();?>assets/img/oprah.jpg" width=90px height=120px style="position:relative;top:40px" >       
      
    </div>
  </div>

			
		
				 <br/> <br/> <br/> <br/>
				<p style="font-size:12pt"><b>About</b> 
					The Oprah effect is an underdescribed phenomenon that involves an alternation anywhere in the root under affixation. For instance, some speakers of Dutch can pronounce the bare root <i>Oprah</i> with the English rhotic, while affixed words such as the diminutive <i>Oprahtje</i> must have the native Dutch rhotic. This is a searchable database of Oprah effects reported in world's languages. 
				</p>
				<p style="font-size:12pt"><b>Significance</b>
					The Oprah effect is unlike most phonological patterns in that the alternating sound can be at any distance from the affix. As we will see, these sounds may differ in what kind of morphologically complex words they appear, both within a single language and across languages. For example, some sounds are possible in suffixed, but not prefixed, words. Other sounds are possible in inflected, but not derived, words. We will also see that while the Oprah effect is particularly common in loanwords, it can be found in native words as well.
				</p>
				<!--<p style="font-size:12pt"> You can search this database by entering keywords below. You can also search the database by specific criteria.</p><-->
			</div>
		</div>
		</div>
		</div>
		
		<!--/.navbar-collapse -->
		<?php $this->load->view('footer');?>
		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->

	</body>
</html>