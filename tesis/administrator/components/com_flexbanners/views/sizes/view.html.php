<?php
/**
* @copyright Copyright (C) 2009-2013 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/


// No direct access
defined('_JEXEC') or die;

class FlexbannersViewSizes extends JViewLegacy
{
	protected $items;
	protected $pagination;
	protected $state;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
		$this->items		= $this->get('Items');
		$this->pagination	= $this->get('Pagination');
		$this->state		= $this->get('State');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		FlexbannersHelper::addSubmenu('sizes');
		$this->addToolbar();
	if(version_compare(JVERSION, '3.0', 'ge')) {
		$this->sidebar = JHtmlSidebar::render();
	}
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since   1.6
	 */
	protected function addToolbar()
	{
		require_once JPATH_COMPONENT.'/helpers/flexbanners.php';

		$canDo	= FlexbannersHelper::getActions();

		JToolBarHelper::title(JText::_('COM_FLEXBANNERS_MANAGER_SIZES'), 'flexbanner.png');
		if ($canDo->get('core.create'))
		{
			JToolbarHelper::addNew('size.add');
		}
		if ($canDo->get('core.edit'))
		{
			JToolbarHelper::editList('sizes.edit');
		}
		if ($canDo->get('core.edit.state'))
		{
			JToolbarHelper::publish('sizes.publish', 'JTOOLBAR_PUBLISH', true);
			JToolbarHelper::unpublish('sizes.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			JToolbarHelper::archiveList('sizes.archive');
			JToolbarHelper::checkin('sizes.checkin');
		}
		if ($this->state->get('filter.state') == -2 && $canDo->get('core.delete'))
		{
			JToolbarHelper::deleteList('', 'sizes.delete', 'JTOOLBAR_EMPTY_TRASH');
		} elseif ($canDo->get('core.edit.state'))
		{
			JToolbarHelper::trash('sizes.trash');
		}

		if ($canDo->get('core.admin'))
		{
			JToolbarHelper::preferences('com_flexbanners');
			JToolBarHelper::divider();
		}

		JToolbarHelper::help('JHELP_COMPONENTS_FLEXBANNER_SIZES');
	if(version_compare(JVERSION, '3.0', 'ge')) {
		JHtmlSidebar::setAction('index.php?option=com_flexbanners&view=sizes');

		JHtmlSidebar::addFilter(
			JText::_('JOPTION_SELECT_PUBLISHED'),
			'filter_state',
			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), 'value', 'text', $this->state->get('filter.published'), true)
		);
	}
	}
	/**
	 * Returns an array of fields the table can be sorted by
	 *
	 * @return  array  Array containing the field name to sort by as the key and display text as value
	 *
	 * @since   3.0
	 */
	protected function getSortFields()
	{
		return array(
			'a.sizename' => JText::_('ADMIN_FLEXBANNER_SIZENAME'),
			'a.width' => JText::_('ADMIN_FLEXBANNER_SIZEWIDTH'),
			'a.height' => JText::_('ADMIN_FLEXBANNER_SIZEHEIGHT'),
			'a.maxfilesize' => JText::_('ADMIN_FLEXBANNER_MAXFILESIZE'),
			'a.state' => JText::_('JSTATUS'),
			'a.sizeid' => JText::_('JGRID_HEADING_ID'),
		);
	}
}
