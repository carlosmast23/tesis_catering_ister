<?php
/**
* @copyright Copyright (C) 2009-2013 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

// no direct access
defined('_JEXEC') or die;

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
		if (task == 'client.cancel' || document.formvalidator.isValid(document.id('client-form')))
		{
			Joomla.submitform(task, document.getElementById('client-form'));
		}
	}
</script>
<form action="<?php echo JRoute::_('index.php?option=com_flexbanners&layout=edit&clientid='.(int) $this->item->clientid); ?>" method="post" name="adminForm" id="client-form" class="form-validate form-horizontal">
	<!-- Begin Content -->
<?php if(version_compare(JVERSION, '3.0', 'ge')) { ?>
		<ul class="nav nav-tabs">
		  <li class="active"><a href="#general" data-toggle="tab"><?php echo empty($this->item->clientid) ? JText::_('ADMIN_FLEXBANNER_NEWCLIENT') : JText::sprintf('ADMIN_FLEXBANNER_EDITCLIENT', $this->item->clientid);?></a></li>
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
								<?php echo $this->form->getLabel('clientname'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('clientname'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('contactname'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('contactname'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('contactemail'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('contactemail'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('juserid'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('juserid'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('clientid'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('clientid'); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<input type="hidden" name="task" value="" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
	<!-- End Content -->
</form>