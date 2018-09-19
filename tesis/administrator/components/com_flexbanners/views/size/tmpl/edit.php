<?php
/**
 * @copyright Copyright (C) 2009-2012 inch communications ltd. All rights reserved.
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
		if (task == 'size.cancel' || document.formvalidator.isValid(document.id('size-form')))
		{
			Joomla.submitform(task, document.getElementById('size-form'));
		}
	}
</script>
<form action="<?php echo JRoute::_('index.php?option=com_flexbanners&layout=edit&sizeid=' . (int)$this -> item -> sizeid);?>" method="post" name="adminForm" id="size-form" class="form-validate">
	<!-- Begin Content -->
<?php if(version_compare(JVERSION, '3.0', 'ge')) { ?>
		<ul class="nav nav-tabs">
		  <li class="active"><a href="#general" data-toggle="tab"><?php echo empty($this->item->sizeid) ? JText::_('ADMIN_FLEXBANNER_NEWSIZE') : JText::sprintf('ADMIN_FLEXBANNER_EDITSIZE', $this->item->sizeid);?></a></li>
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
								<?php echo $this->form->getLabel('sizename'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('sizename'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('width'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('width'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('height'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('height'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('maxfilesize'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('maxfilesize'); ?>
							</div>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this->form->getLabel('sizeid'); ?>
							</div>
							<div class="controls">
								<?php echo $this->form->getInput('sizeid'); ?>
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