<?php
/**
* @copyright Copyright (C) 2009-2013 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

// no direct access
defined('_JEXEC') or die ;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
if(version_compare(JVERSION, '3.0', 'ge')) {
	JHtml::_('bootstrap.tooltip');
	JHtml::_('dropdown.init');
	JHtml::_('formbehavior.chosen', 'select');
	JHtml::_('behavior.multiselect');

} else {
	JHtml::_('behavior.tooltip');
}
	JHtml::_('behavior.formvalidation');
$canDo	= FlexbannersHelper::getActions();
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'location.cancel' || document.formvalidator.isValid(document.id('location-form')))
		{
			Joomla.submitform(task, document.getElementById('location-form'));
		}
	}
</script>
<form action="<?php echo JRoute::_('index.php?option=com_flexbanners&layout=edit&locationid=' . (int)$this -> item -> locationid);?>" method="post" name="adminForm" id="location-form" class="form-validate">
	<!-- Begin Content -->
<?php if(version_compare(JVERSION, '3.0', 'ge')) { ?>
		<ul class="nav nav-tabs">
		  <li class="active"><a href="#general" data-toggle="tab"><?php echo empty($this->item->locationid) ? JText::_('ADMIN_FLEXBANNER_NEWLOCATION') : JText::sprintf('ADMIN_FLEXBANNER_EDITLOCATION', $this->item->locationid);?></a></li>
		</ul>
<?php } ?>
		<div class="tab-content">
			<!-- Begin Tabs -->
			<div class="tab-pane active" id="general">
				<div class="row-fluid">
					<div class="span6">
						<?php if ($canDo->get('core.edit.state')) : ?>
							<div class="control-group">
								<div class="control-label">
									<?php echo $this->form->getLabel('state'); ?>
								</div>
								<div class="controls">
									<?php echo $this->form->getInput('state'); ?>
								</div>
							</div>
						<?php endif; ?>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('locationname'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('locationname'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('locationid'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('locationid'); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token');?>
	</div>
	<div class="clr"></div>
</form>