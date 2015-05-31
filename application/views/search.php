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
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				</br>
				<div style="text-align:center">
					<!-- <img src="<?php echo base_url();?>assets/img/linguistics_logo.jpg" alt="logo" /><-->
				</div>
				</br>
				</br>
				</br>
				</br>
				</br>
				</br>
				<p style="font-size:12pt"><b>About</b> 
					The Oprah effect is an underdescribed phenomenon that involves an alternation anywhere in the root under affixation. For instance, some speakers of Dutch can pronounce the bare root <i>Oprah</i> with the English rhotic, while affixed words such as the diminutive <i>Oprahtje</i> must have the native Dutch rhotic. This is a searchable database of Oprah effects reported in world's languages. 
				</p>
				<p style="font-size:12pt"><b>Significance</b>
					The Oprah effect is unlike most phonological patterns in that the alternating sound can be at any distance from the affix. As we will see, these sounds may differ in what kind of morphologically complex words they appear, both within a single language and across languages. For example, some sounds are possible in suffixed, but not prefixed, words. Other sounds are possible in inflected, but not derived, words. We will also see that while the Oprah effect is particularly common in loanwords, it can be found in native words as well.
				</p>
				<p style="font-size:12pt"> You can search this database by entering keywords below. You can also search the database by specific criteria.</p>
			</div>
		</div>
		<div  class="input-group">
			<form id="frmOptions" method="post" class="span12 col-lg-4 col-lg-offset-4" action='<?php echo base_url();?>main/query'>
				<div class="row-fluid">
					<div class="form-group">
						<div class="input-group ">
							<input type="text" class="form-control " placeholder="Search" name="content" >
							<span class="input-group-btn col-lg-offset-4"><button type="submit" class="btn btn-success">Search</button></span>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!--/.navbar-collapse -->
		<?php $this->load->view('footer');?>
		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="../../dist/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	</body>
</html>