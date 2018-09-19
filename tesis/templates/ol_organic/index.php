<?php
/*---------------------------------------------------------------
# Package - Joomla Template based on Sboost Framework   
# ---------------------------------------------------------------
# Author - olwebdesign http://www.olwebdesign.com
# Copyright (C) 2008 - 2017 olwebdesign.com. All Rights Reserved.
# Websites: http://www.olwebdesign.com
-----------------------------------------------------------------*/
//no direct accees
defined ('_JEXEC') or die ('resticted aceess');
require_once(dirname(__FILE__).'/lib/sboost.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language;?>" >
<head>
<?php
$sboost->loadHead();
$sboost->addCSS('template.css,joomla.css,menu.css,override.css,modules.css,ama.css');
if ($sboost->isRTL()) $sboost->addCSS('template_rtl.css');
?>

<?php if($this->params->get('social_api_type', '1') == '1') : ?>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/social.css" rel="stylesheet" type="text/css" />
<?php endif; ?>
<?php if($this->params->get('show_awesome')=='1') : ?>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/font-awesome.css" rel="stylesheet" type="text/css" />
<?php endif; ?>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/js/custom.js"></script>
</head>
<?php $sboost->addFeatures('ie6warn'); ?>
<body class="bg <?php echo $sboost->direction ?> clearfix">
<header class="header-section navbar-fixed menu-skew swingInX">
<div id="menuout" class="clearfix">
<div class="logo-wraper">
<div class="mx-base clearfix">
<?php 
$sboost->addFeatures('logo');//Logo
?>
</div>
</div>
<div class="header-top clearfix">
<div class="mx-base">
<?php $sboost->addFeatures('social'); //social ?>	
<?php 
$sboost->addFeatures('date'); //date feature
?>
</div>
</div>
<div class="mx-base clearfix">
<div class="main_menu">
<?php 
$sboost->addModules("mainmenu"); //position mainmenu
?>
</div>	
</div>
</div>
</header>

<?php if ($sboost->showSlideItem()): ?>
<?php include 'slider/slider.php'; ?>
<?php endif; ?>
<?php if ($this->countModules( 'top' )) : ?>
<div class="mx-base clearfix">
<?php 
$sboost->addModules('top', 'mx_xhtml'); //top 
?>	
</div>
<?php endif; ?> 
<?php if ($this->countModules( 'top1 or top2 or top3 or top4 or top5 or top6' )) : ?>
<div id="mx-coce">
<div class="mx-base clearfix">
<?php
$sboost->addModules('top1, top2, top3, top4, top5, top6', 'mx_block', 'mx-userpos'); //positions top1-top6 
?>
</div>
</div>
<?php endif; ?> 
<?php $sboost->addModules('section', 'mx_xhtml'); //section  ?>
<div id="mx-basebody">	
<div class="mx-base main-bg clearfix">
<?php 
$sboost->addModules("breadcrumbs"); //breadcrumbs
?>
<div class="clearfix">
<?php $sboost->loadLayout(); //mainbody ?>
</div>
</div>
</div>
<?php if ($this->countModules( 'extra1 or extra2' )) : ?>
<div id="extra">
<?php
$sboost->addModules('extra1, extra2', 'mx_block', 'mx-extra'); //position header
?>
</div>
<?php endif; ?> 
<?php if ($this->countModules( 'pricing' )) : ?>
<div id="mx-coceb">
<div class="mx-base clearfix">
<?php $sboost->addModules('pricing', 'mx_xhtml'); //pricing  ?>
</div>
</div>
<?php endif; ?> 
<?php if ($this->countModules( 'map' )) : ?>
<div id="botmap">
<div class="mx-base clearfix">
<?php $sboost->addModules('map', 'mx_xhtml'); //map  ?>
</div>
</div>
<?php endif; ?> 
<?php $sboost->addModules('bottom', 'mx_xhtml'); //bottom  ?>
<?php if ($this->countModules( 'bottom1 or bottom2 or bottom3 or bottom4 or bottom5 or bottom6' )) : ?>
<div id="bottsite" class="clearfix">
<?php
$sboost->addModules('bottom1, bottom2, bottom3, bottom4, bottom5, bottom6', 'mx_block', 'mx-bottoms', '', false, true); //positions bottom1-bottom6 
?>
</div>
<?php endif; ?> 

<!--Start Footer-->
<div id="mx-footer">
<div class="mx-base clearfix">
<div id="mx-bft" class="clearfix">
<div class="cp">
<?php $sboost->addFeatures('copyright,designed')  ?>					
</div>
<?php	
$sboost->addModules("footer-nav"); 
?>
</div>
</div>
</div>
<!--End Footer-->

<?php 
$sboost->addFeatures('analytics,jquery,ieonly'); /*--- analytics, jquery features ---*/
?>
<jdoc:include type="modules" name="debug" />

</body>
</html>