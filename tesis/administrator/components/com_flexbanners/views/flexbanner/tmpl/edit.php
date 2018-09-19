<?php
/**
 * @copyright Copyright (C) 2009-2013 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
 */

defined('_JEXEC') or die ;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

JHtml::_('jquery.framework');
JHtml::_('behavior.formvalidator');
JHtml::_('formbehavior.chosen', 'select', null, array('disable_search_threshold' => 0 ));

// Add the script to the document head.
JFactory::getDocument() -> addScriptDeclaration('
	Joomla.submitbutton = function(task)
	{
		if (task == "flexbanner.cancel" || document.formvalidator.isValid(document.getElementById("banner-form")))
		{
			Joomla.submitform(task, document.getElementById("banner-form"));
		}
	};
	
	jQuery(document).on("change","#jform_imageurl", function () {
		var image = document.getElementsByName("imagelib")[0];


if 		(
		(document.adminForm.jform_imageurl.value != "") 
	&&
	(
	document.adminForm.jform_imageurl.value.test(/gif/g)
	||document.adminForm.jform_imageurl.value.test(/png/g)
	||document.adminForm.jform_imageurl.value.test(/jpg/g)
	)
	)
		{
			image.src = "../" + document.adminForm.jform_imageurl.value;
		} else {
			image.src = "../images/blank.png";
		}
	});

');
?>	

<form action="<?php echo JRoute::_('index.php?option=com_flexbanners&layout=edit&id=' . (int)$this -> item -> id); ?>" method="post" name="adminForm" id="banner-form" class="form-validate form-horizontal">
	<?php echo JLayoutHelper::render('joomla.edit.title_alias', $this); ?>
	<!-- Begin Banner -->
	<div class="form-horizontal">
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>
		<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', 'Details'); ?>
	<div class="row-fluid">
		<div class="span9" >
			<?php foreach($this->form->getFieldset('flexbannerclient') as $field): ?>
			<div class="control-group">
				<div class="control-label">
					<?php echo $field -> label; ?>
				</div>
				<div class="controls">
					<?php echo $field -> input; ?>
				</div>
			</div>
			<?php endforeach; ?>
				<?php echo $this -> form -> getControlGroup('locationid'); ?>
			<?php echo $this -> form -> getControlGroup('sizeid'); ?>
			<div class="control-group">
				<div class="control-label">
					<?php echo $this -> form -> getLabel('type'); ?>
				</div>
				<div class="controls">
					<?php echo $this -> form -> getInput('type'); ?>
				</div>

				<div id="image">
					<div class="row-fluid">
						<div class="control-label">
							<?php echo $this -> form -> getLabel('imageurl'); ?>
						</div>
						<div class="controls">
							<?php echo $this -> form -> getInput('imageurl'); ?>
						</div>
					</div>

					<div class="control-label">
						<label><?php echo JText::_('ADMIN_FLEXBANNER_BANNERIMAGE'); ?></label>
					</div>
					<div class="controls">
						<?php
						if (preg_match("/gif|jpg|jpeg|png/", $this->item->imageurl)) {
						?><img src="../<?php echo $this -> item -> imageurl; ?>" name="imagelib" />
						<?php
						} else {
						?><img src="../images/blank.png" name="imagelib" />
						<?php
						}
						?>
					</div>
				</div>
				<div id="flash">
					<div class="row-fluid">
						<div class="control-label">
							<?php echo $this -> form -> getLabel('flash'); ?>
						</div>
						<div class="controls">
							<?php echo $this -> form -> getInput('flash'); ?>
						</div>
					</div>
				</div>
				<div class="clr"><BR /></div>
				<div id="cloud_image">
						<div class="control-label">
							<?php echo $this -> form -> getLabel('cloud_imageurl'); ?>
						</div>
						<div class="controls">
							<?php echo $this -> form -> getInput('cloud_imageurl'); ?>
						</div>
						<div class="control-group">
							<div class="control-label">
								<label><?php echo JText::_('ADMIN_FLEXBANNER_BANNERIMAGE'); ?></label>
							</div>
							<div class="controls">
								<?php if (preg_match("/swf|html/", $this->item->cloud_imageurl)) {
								?><img src="../images/blank.png" name="imagelib">
								<?php
								} elseif (preg_match("/gif|jpg|png/", $this->item->cloud_imageurl)) {
								?><img src="<?php echo $this -> item -> cloud_imageurl; ?>" name="imagelib" />
								<?php
								} else {
								?><img src="../images/blank.png" name="imagelib" />
								<?php
								}
								?>
							</div>
							
						</div>
					</div>

					<div id="custom">
						<div class="control-group">
							<div class="control-label">
								<?php echo $this -> form -> getLabel('customcode'); ?>
							</div>
							<div class="controls">
								<?php echo $this -> form -> getInput('customcode'); ?>
							</div>
						</div>
					</div>
					<div class="clr"><BR /></div>
					<div id="linkurl">
						<div class="control-group">
							<div class="control-label">
								<?php echo $this -> form -> getLabel('linkid'); ?>
							</div>
							<div class="controls">
								<?php echo $this -> form -> getInput('linkid'); ?>
							</div>
						</div>
						<div class="control-group">
								<?php echo $this -> form -> getControlGroup('imagealt'); ?>
						</div>
						<div class="control-group">
							<div class="control-label">
								<?php echo $this -> form -> getLabel('newwin'); ?>
							</div>
							<div class="controls">
								<?php echo $this -> form -> getInput('newwin'); ?>
							</div>
						</div>
					</div>

					<div class="control-group">
						<div class="control-label">
							<?php echo $this -> form -> getLabel('id'); ?>
						</div>
						<div class="controls">
							<?php echo $this -> form -> getInput('id'); ?>
						</div>
					</div>
				</div>
			</div>



	<!-- End Newsfeed -->
	<!-- Begin Sidebar -->
			<div class="span3">
				<?php echo JLayoutHelper::render('joomla.edit.global', $this); ?>
			</div>
		</div>

	<!-- End Sidebar -->
	<?php echo JHtml::_('bootstrap.endTab'); ?>	

	<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'restrictions', 'Content Restrictions'); ?>
	<?php echo $this -> form -> renderFieldset('flexbanner'); ?>
	<?php echo JHtml::_('bootstrap.endTab'); ?>

	<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'otherparams', 'Banner Details'); ?>
	<?php echo $this -> form -> renderFieldset('otherparams'); ?>
	<?php echo JHtml::_('bootstrap.endTab'); ?>

	<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'publishing', JText::_('JGLOBAL_FIELDSET_PUBLISHING')); ?>
					<?php foreach ($this->form->getFieldset('publish') as $field) :
					?>
					<div class="control-group">
						<div class="control-label">
							<?php echo $field -> label;?>
						</div>
						<div class="controls">
							<?php echo $field -> input;?>
						</div>
					</div>
					<?php endforeach;?>
	<?php echo JHtml::_('bootstrap.endTab'); ?>
	<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</div>

	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>
	
</form>
