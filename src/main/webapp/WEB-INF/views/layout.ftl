<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap, from Twitter</title>
		<link href="<@spring.url "/static/css/bootstrap.css"/>" rel="stylesheet">
		<style>
			body {
				padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
			}
		</style>
		<link href="<@spring.url "/static/css/bootstrap-responsive.css"/>" rel="stylesheet">

		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
	    <#include "includes/header.ftl"/>

		<div class="container">
			<div class="row">
				<div class="span4">
					<@sidebar/>
				</div>
				<div class="span8">
					<@main/>
				</div>
			</div>
		</div><!-- /container -->
	</body>
</html>
