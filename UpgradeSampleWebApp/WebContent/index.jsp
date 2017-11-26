<!DOCTYPE html>
<html lang="en" id="ng-app" ng-app="reportsTool">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Reports tool</title>

    <!-- Bootstrap Core CSS -->
    <link href="dist/css/bootstrap.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="dist/css/main.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="dist/css/font-awesome.css" rel="stylesheet" type="text/css">

    <!-- MetisMenu CSS -->
    <link href="data/FIROIE_COUNT_BY_OBJECT_BAR.txt">
    
    <link rel="stylesheet" href="bower_components/nvd3/build/nv.d3.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<base href="/partials">

</head>

<body ng-controller="LandingPageController">

    <div class="container" id="wrapper" class="col-xs-12">
        <div class="loader-container" ng-show="showLoader">
            <div class="loader-message">
                Please wait
            </div>
        </div>
        <!-- Navigation -->
        <div ng-include="'partials/navPanel.html'">
        </div>
		<div class="view-container">
			<!--Include partails here-->
			<div ng-view></div>
			<!--  <div ng-include="'../partials/businessProcess.html'"> -->
		</div>

    </div>
    <!-- /#wrapper -->

   <script type="text/javascript"  src="UpgradeSampleWebApp/bower_components/jquery/dist/jquery.min.js"></script>

     <!-- Metis Menu Plugin JavaScript -->
    <script type="text/javascript" src="UpgradeSampleWebApp/bower_components/metisMenu/dist/metisMenu.min.js"></script>

   
    <script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular/angular.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-route/angular-route.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-animate/angular-animate.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-cookies/angular-cookies.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-sanitize/angular-sanitize.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-touch/angular-touch.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/d3/d3.js"></script>	
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/nvd3/build/nv.d3.min.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-nvd3/dist/angular-nvd3.js"></script>

    <script type="text/javascript" src="UpgradeSampleWebApp/bower_components/floatThead/dist/jquery.floatThead.js"></script>
    <script type="text/javascript" src="UpgradeSampleWebApp/bower_components/angular-floatThead/angular-floatThead.js"></script>
	
    
    <script type="text/javascript" src="UpgradeSampleWebApp/scripts/app.js"></script>
     <!--Development section - comment when using node server command instead of app-->
	<script type="text/javascript" src="UpgradeSampleWebApp/scripts/server.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/scripts/util.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/scripts/chartService.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/scripts/navController.js"></script>
    <script type="text/javascript" src="UpgradeSampleWebApp/scripts/s4TabService.js"></script>
    <script type="text/javascript" src="UpgradeSampleWebApp/scripts/services.js"></script>
    <script type="text/javascript" src="UpgradeSampleWebApp/scripts/s4TabController.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/scripts/impactAnalysisController.js"></script>
    <script type="text/javascript" src="UpgradeSampleWebApp/scripts/bpController.js"></script>
    <script type="text/javascript" src="UpgradeSampleWebApp/scripts/inventoryController.js"></script>
	<script type="text/javascript" src="UpgradeSampleWebApp/scripts/directives.js"></script>
    
    
  

</body>

</html>
