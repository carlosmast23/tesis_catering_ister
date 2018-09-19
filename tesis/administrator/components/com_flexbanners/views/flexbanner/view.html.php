<?php
/**
* @copyright Copyright (C) 2009-2012 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

// No direct access
defined('_JEXEC') or die;

JLoader::register('FlexbannersHelper', JPATH_COMPONENT.'/helpers/flexbanners.php');

class FlexbannersViewFlexbanner extends JViewLegacy
{
	protected $form;
	protected $item;
	protected $state;
	
	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{	
		// Initialiase variables.
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		$this->addToolbar();
if(version_compare(JVERSION, '3.0', 'ge')) { 		
		JHtml::_('jquery.framework');
		JHtml::_('script', 'media/com_flexbanners/flexbanner.js');
}
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
		JFactory::getApplication()->input->set('hidemainmenu', true);

		$user		= JFactory::getUser();
		$userId		= $user->get('id');
		$isNew		= ($this->item->id == 0);
		$checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $userId);
		// Since we don't track these assets at the item level, use the category id.
		$canDo		= FlexbannersHelper::getActions($this->item->catid, 0);

		JToolBarHelper::title($isNew ? JText::_('COM_FLEXBANNERS_MANAGER_BANNER_NEW') : JText::_('COM_FLEXBANNERS_MANAGER_BANNER_EDIT'), 'flexbanner.png');

		// If not checked out, can save the item.
		if (!$checkedOut && ($canDo->get('core.edit') || count($user->getAuthorisedCategories('com_flexbanners', 'core.create')) > 0)) {
			JToolBarHelper::apply('flexbanner.apply');
			JToolBarHelper::save('flexbanner.save');

			if ($canDo->get('core.create')) {
				JToolBarHelper::save2new('flexbanner.save2new');
			}
		}

		// If an existing item, can save to a copy.
		if (!$isNew && $canDo->get('core.create')) {
			JToolBarHelper::save2copy('flexbanner.save2copy');
		}

		if (empty($this->item->id))  {
			JToolBarHelper::cancel('flexbanner.cancel');
		}
		else {
			JToolBarHelper::cancel('flexbanner.cancel', 'JTOOLBAR_CLOSE');
		}

		JToolBarHelper::divider();
		JToolBarHelper::help('JHELP_COMPONENTS_FLEXBANNERS_FLEXBANNERS_EDIT');
	}
}
