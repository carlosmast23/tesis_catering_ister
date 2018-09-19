<?php
/**
* @copyright Copyright (C) 2009-2013 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/


// No direct access
defined('_JEXEC') or die;

class FlexbannersViewLinks extends JViewLegacy
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

		FlexbannersHelper::addSubmenu('links');
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

		JToolbarHelper::title(JText::_('COM_FLEXBANNERS_MANAGER_LINKS'), 'flexbanner.png');
		if ($canDo->get('core.create'))
		{
			JToolbarHelper::addNew('link.add');
		}
		if ($canDo->get('core.edit'))
		{
			JToolbarHelper::editList('link.edit');
		}
		if ($canDo->get('core.edit.state')) {
			JToolbarHelper::publish('links.publish', 'JTOOLBAR_PUBLISH', true);
			JToolbarHelper::unpublish('links.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			JToolbarHelper::archiveList('links.archive');
			JToolbarHelper::checkin('links.checkin');
		}
		if ($this->state->get('filter.state') == -2 && $canDo->get('core.delete'))
		{
			JToolbarHelper::deleteList('', 'links.delete', 'JTOOLBAR_EMPTY_TRASH');
		} elseif ($canDo->get('core.edit.state'))
		{
			JToolbarHelper::trash('links.trash');
		}

		if ($canDo->get('core.admin'))
		{
			JToolbarHelper::preferences('com_flexbanners');
		}

		JToolbarHelper::help('JHELP_COMPONENTS_FLEXBANNER_LINKS');
		if(version_compare(JVERSION, '3.0', 'ge')) {
			JHtmlSidebar::setAction('index.php?option=com_flexbanners&view=links');

			JHtmlSidebar::addFilter(
				JText::_('COM_FLEXBANNERS_SELECT_CLIENT'),
				'filter_clientid',
				JHtml::_('select.options', FlexbannersHelper::getClientOptions(), 'value', 'text', $this->state->get('filter.clientid'))
			);

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
			'a.linkname' => JText::_('ADMIN_FLEXBANNER_LINKNAME'),
			'a.linkurl' => JText::_('ADMIN_FLEXBANNER_LINKURL'),
			'cl.clientname' => JText::_('ADMIN_FLEXBANNER_CLIENT'),
			'a.state' => JText::_('JSTATUS'),
			'a.linkid' => JText::_('JGRID_HEADING_ID')
		);
	}
}
