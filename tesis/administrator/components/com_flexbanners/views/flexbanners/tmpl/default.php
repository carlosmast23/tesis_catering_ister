<?php
/**
* @copyright Copyright (C) 2009-2013 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');

	JHtml::_('bootstrap.tooltip');
	JHtml::_('dropdown.init');
	JHtml::_('formbehavior.chosen', 'select');
	JHtml::_('behavior.multiselect');

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
$canOrder	= $user->authorise('core.edit.state', 'com_flexbanners.category');
$archived	= $this->state->get('filter.published') == 2 ? true : false;
$trashed	= $this->state->get('filter.published') == -2 ? true : false;
$params		= (isset($this->state->params)) ? $this->state->params : new JObject;
$saveOrder	= $listOrder == 'ordering';
if ($saveOrder)
{
	$saveOrderingUrl = 'index.php?option=com_flexbanners&task=flexbanners.saveOrderAjax&tmpl=component';
	JHtml::_('sortablelist.sortable', 'articleList', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}
$sortFields = $this->getSortFields();
?>
<script type="text/javascript">
	Joomla.orderTable = function()
	{
		table = document.getElementById("sortTable");
		direction = document.getElementById("directionTable");
		order = table.options[table.selectedIndex].value;
		if (order != '<?php echo $listOrder; ?>')
		{
			dirn = 'asc';
		}
		else
		{
			dirn = direction.options[direction.selectedIndex].value;
		}
		Joomla.tableOrdering(order, dirn, '');
	}
</script>
<style>.icon-48-flexbanner {
  background-image: url('components/com_flexbanners/images/header/flexbanner-48.png');
}
</style>
<form action="<?php echo JRoute::_('index.php?option=com_flexbanners&view=flexbanners'); ?>" method="post" name="adminForm" id="adminForm">

	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">

		<div id="filter-bar" class="btn-toolbar">
			<div class="filter-search btn-group pull-left">
				<label for="filter_search" class="element-invisible"><?php echo JText::_('COM_FLEXBANNER_SEARCH_IN_TITLE');?></label>
				<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('COM_FLEXBANNER_SEARCH_IN_TITLE'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" title="<?php echo JText::_('COM_FLEXBANNER_SEARCH_IN_TITLE'); ?>" />
			</div>
			<div class="btn-group pull-left">
				<button type="submit" class="btn hasTooltip" title="<?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
				<button type="button" class="btn hasTooltip" title="<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.id('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
			</div>
			<div class="btn-group pull-right hidden-phone">
				<label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC');?></label>
				<?php echo $this->pagination->getLimitBox(); ?>
			</div>
			<div class="btn-group pull-right hidden-phone">
				<label for="directionTable" class="element-invisible"><?php echo JText::_('JFIELD_ORDERING_DESC');?></label>
				<select name="directionTable" id="directionTable" class="input-medium" onchange="Joomla.orderTable()">
					<option value=""><?php echo JText::_('JFIELD_ORDERING_DESC');?></option>
					<option value="asc" <?php if ($listDirn == 'asc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_ASCENDING');?></option>
					<option value="desc" <?php if ($listDirn == 'desc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_DESCENDING');?></option>
				</select>
			</div>
			<div class="btn-group pull-right">
				<label for="sortTable" class="element-invisible"><?php echo JText::_('JGLOBAL_SORT_BY');?></label>
				<select name="sortTable" id="sortTable" class="input-medium" onchange="Joomla.orderTable()">
					<option value=""><?php echo JText::_('JGLOBAL_SORT_BY');?></option>
					<?php echo JHtml::_('select.options', $sortFields, 'value', 'text', $listOrder);?>
				</select>
			</div>
		</div>

		<div class="clearfix"> </div>
		<table class="table table-striped adminlist" id="articleList">
		<thead>
			<tr>
				<th width="1%" class="nowrap center hidden-phone">
					<?php echo JHtml::_('grid.sort', '<i class="icon-menu-2"></i>', 'ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING'); ?>
				</th>
				<th width="20">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th width="180">
					<?php echo JHtml::_('grid.sort',  'COM_FLEXBANNER_HEADING_NAME', 'name', $listDirn, $listOrder); ?>
				</th>
				<th align="left" width="150" nowrap>
					<?php echo JText::_('ADMIN_FLEXBANNER_BANNERIMAGE'); ?>
				</th>
				<th width="1%" class="nowrap center">
					<?php echo JHtml::_('grid.sort', 'JSTATUS', 'a.published', $listDirn, $listOrder); ?>
				</th>
				<th width="160">
					<?php echo JHTML::_('grid.sort',  'ADMIN_FLEXBANNER_CLIENT', 'clientid', $listDirn, $listOrder ); ?>
				</th>
				<th width="180">
					<?php echo JHTML::_('grid.sort',  'ADMIN_FLEXBANNER_LOCATION', 'locationid', $listDirn, $listOrder ); ?>
				</th>
				<th width="130">
					<?php echo JText::_('ADMIN_FLEXBANNER_BANNERDAILYIMP'); ?>
				</th>
				<th width="130" nowrap="nowrap">
					<?php echo JText::_('ADMIN_FLEXBANNER_BANNERIMPMADE'); ?>
				</th>
				<th width="90" align="center">
					<?php echo JText::_('ADMIN_FLEXBANNER_BANNERCLICKS'); ?>
				</th>
				<th width="200" align="center">
					<?php echo JText::_('ADMIN_FLEXBANNER_BANNERPERCENTCLICKS'); ?>
				</th>
				<th width="80">
					<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_LANGUAGE', 'a.language', $this->state->get('list.direction'), $this->state->get('list.ordering')); ?>
				</th>
				<th width="10" class="nowrap">
					<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'id', $listDirn, $listOrder); ?>
				</th>
		</thead>
		<tfoot>
			<tr>
				<td colspan="14">
					<?php echo $this->pagination->getListFooter(); ?>
           		<div style="float:left">
					 <?php echo LiveUpdate::getIcon(); ?>
					</div> 
					 <div style="float:right">
					 	<br />
					</div>
				</td>
			</tr>
		</tfoot>
		<tbody>
			<?php foreach ($this->items as $i => $item) :
				$ordering  = ($listOrder == 'ordering');
				$item->cat_link = JRoute::_('index.php?option=com_categories&extension=com_flexbanners&task=edit&type=other&clientid[]='. $item->catid);
				$canCreate  = $user->authorise('core.create',	  'com_flexbanners.category.'.$item->catid);
				$canEdit    = $user->authorise('core.edit',	  'com_flexbanners.category.'.$item->catid);
				$canCheckin = $user->authorise('core.manage',	  'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
				$canChange  = $user->authorise('core.edit.state', 'com_flexbanners.category.'.$item->catid) && $canCheckin;
				?>
				<tr class="row<?php echo $i % 2; ?>" sortable-group-id="<?php echo $item->catid?>">
					<td class="order nowrap center hidden-phone">
						<?php
						$iconClass = '';
						if (!$canChange)
						{
							$iconClass = ' inactive';
						}
						elseif (!$saveOrder)
						{
							if(version_compare(JVERSION, '3.0', 'ge')) {
								$iconClass = ' inactive tip-top hasTooltip" title="' . JHtml::tooltipText('JORDERINGDISABLED');
							} else {
								$iconClass = ' inactive tip-top hasTooltip" title="';
							}
						}
						?>
						<span class="sortable-handler <?php echo $iconClass ?>">
							<i class="icon-menu"></i>
						</span>
						<?php if ($canChange && $saveOrder) : ?>
							<input type="text" style="display:none" name="order[]" size="5"
								value="<?php echo $item->ordering; ?>" class="width-20 text-area-order " />
						<?php endif; ?>
					</td>
					<td class="center hidden-phone">
						<?php echo JHtml::_('grid.id', $i, $item->id); ?>
					</td>
					<td class="has-context">
						<div class="pull-left">
							<?php if ($item->checked_out) : ?>
								<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'flexbanners.', $canCheckin); ?>
							<?php endif; ?>
							<?php if ($canEdit) : ?>
								<a href="<?php echo JRoute::_('index.php?option=com_flexbanners&task=flexbanner.edit&id='.(int) $item->id); ?>">
									<?php echo $this->escape($item->name); ?></a>
							<?php else : ?>
								<?php echo $this->escape($item->name); ?>
							<?php endif; ?>
							<div class="small">
								<?php echo $this->escape($item->category_title); ?>
							</div>
						</div>
<?php		if(version_compare(JVERSION, '3.0', 'ge')) {
?>
						<div class="pull-left">
							<?php
								// Create dropdown items
								JHtml::_('dropdown.edit', $item->sizeid, 'size.');
								JHtml::_('dropdown.divider');
								if ($item->state) :
									JHtml::_('dropdown.unpublish', 'cb' . $i, 'sizes.');
								else :
									JHtml::_('dropdown.publish', 'cb' . $i, 'sizes.');
								endif;

								JHtml::_('dropdown.divider');

								if ($archived) :
									JHtml::_('dropdown.unarchive', 'cb' . $i, 'sizes.');
								else :
									JHtml::_('dropdown.archive', 'cb' . $i, 'sizes.');
								endif;

								if ($item->checked_out) :
									JHtml::_('dropdown.checkin', 'cb' . $i, 'sizes.');
								endif;

								if ($trashed) :
									JHtml::_('dropdown.untrash', 'cb' . $i, 'sizes.');
								else :
									JHtml::_('dropdown.trash', 'cb' . $i, 'sizes.');
								endif;

								// render dropdown list
								echo JHtml::_('dropdown.render');
								?>
						</div>
<?php } ?>
					</td>
				<td>
					<?php if($item->type == 0) { ?>
						<img src="<?php echo JURI::root(). "../" . $this->escape($item->imageurl); ?>" alt="<?php echo $this->escape($item->imagealt); ?>" width="110"/>
					<?php } elseif ($item->type == 1) { 
						echo $this->escape($item->imagealt)."<br /> (Flash Banner)";  
						} else { ?>
						<img src="<?php echo $this->escape($item->cloud_imageurl); ?>" alt="<?php echo $this->escape($item->imagealt); ?>" width="110"/>
					<?php }?>
				</td>
				<td class="center">
					<?php echo JHtml::_('jgrid.published', $item->state, $i, 'flexbanners.', $canChange, 'cb', $item->startdate, $item->enddate); ?>
				</td>
				<td class="center">
					<?php echo $this->escape($item->client_name); ?>
				</td>
				<td class="center">
					<?php echo $item->locationname;?>
				</td>
				<td class="center">
					<?php echo $this->escape($item->dailyimpressions);?>
				</td>
				<td class="center">
					<?php 
					if ($this->escape($item->maximpressions!=0)) { $maximpdisplay=number_format($this->escape($item->maximpressions,0));} else {$maximpdisplay=JText::_('ADMIN_FLEXBANNER_UNLIMITED');}
					echo number_format($this->escape($item->impmade),0)." of ".$maximpdisplay; 
					?>
				</td>
				<td>
					<?php 
					if ($this->escape($item->maxclicks!=0)) { $maxclickdisplay=number_format($this->escape($item->maxclicks,0));} else {$maxclickdisplay=JText::_('ADMIN_FLEXBANNER_UNLIMITED');}
					echo number_format($this->escape($item->clicks,0))." of ".$maxclickdisplay; 
					?>
				</td>
				<td class="center">
					<?php 
					if ( $this->escape($item->impmade) != 0 ) {$percentClicks = substr(100 * $this->escape($item->clicks)/$this->escape($item->impmade), 0, 5);} else {$percentClicks = 0;}					
					echo (number_format(($percentClicks),2))."%";?>
				</td>
				<td class="center nowrap">
					<?php if ($item->language=='*'):?>
						<?php echo JText::alt('JALL','language'); ?>
					<?php else:?>
						<?php echo $item->language_title ? $this->escape($item->language_title) : JText::_('JUNDEFINED'); ?>
					<?php endif;?>
				</td>
				<td class="center">
					<?php echo $this->escape($item->id); ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>

	<div>
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
					<div style="float:right">
						<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
						<input type="hidden" name="cmd" value="_s-xclick">
						<input type="hidden" name="hosted_button_id" value="W43XUP6SDZW9N">
						<input type="image" src="https://www.paypal.com/en_GB/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online.">
						<img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">
						<div><b><?php echo JText::_('ADMIN_FLEXBANNER_DONATE'); ?></b></div>
						</form>
						
					</div>