<?php
/**
 * @copyright Copyright (C) 2009-2014 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

class FlexbannersControllerFlexbanner extends JControllerForm
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	1.6
	 */
	protected $text_prefix = 'COM_FLEXBANNERS_BANNER';

	/**
	 * Method override to check if you can add a new record.
	 *
	 * @param	array	$data	An array of input data.
	 *
	 * @return	boolean
	 * @since	1.6
	 */
	protected function allowAdd($data = array())
	{
		// Initialise variables.
		$user		= JFactory::getUser();
		$categoryId = JArrayHelper::getValue($data, 'catid', $filter, 'int');
		$allow		= null;
		if(version_compare(JVERSION, '3.0', 'ge')) {
			$filter     = $this->input->getInt('filter_category_id');
		}

		if ($categoryId)
		{
			// If the category has been passed in the URL check it.
			$allow	= $user->authorise('core.create', $this->option . '.category.' . $categoryId);
		}

		if ($allow === null)
		{
			// In the absence of better information, revert to the component permissions.
			return parent::allowAdd($data);
		}
		else
		{
			return $allow;
		}
	}

	/**
	 * Method override to check if you can edit an existing record.
	 *
	 * @param	array	$data	An array of input data.
	 * @param	string	$key	The name of the key for the primary key.
	 *
	 * @return	boolean
	 * @since	1.6
	 */
	protected function allowEdit($data = array(), $key = 'id')
	{
		// Initialise variables.
		$user		= JFactory::getUser();
		$recordId	= (int) isset($data[$key]) ? $data[$key] : 0;
		$categoryId = 0;

		if ($recordId)
		{
			$categoryId = (int) $this->getModel()->getItem($recordId)->catid;
		}

		if ($categoryId)
		{
			// The category has been set. Check the category permissions.
			return $user->authorise('core.edit', $this->option . '.category.' . $categoryId);
		}
		else
		{
			// Since there is no asset tracking, revert to the component permissions.
			return parent::allowEdit($data, $key);
		}
	}

	public function save($key = null, $urlVar = null)
	{
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

		// Initialise variables.
		$app			= JFactory::getApplication();
		$model			= $this->getModel();
		$context		= "$this->option.edit.$this->context";

		$data		= JRequest::getVar('jform', array(), 'post', 'array');
		$recordId	= JRequest::getInt('id');

		// Populate the row id from the session or change to 0 for save2copy.
		if (JRequest::getVar('task') == 'save2copy') {
			$oldid = $data['id'];
			$data['id'] = 0;
			$data['name'] = JText::_('COM_FLEXBANNERS_CREATE_COPY') . $data['name'];
		} else {
			$data['id'] = $recordId;
		}

		if (!$this->checkEditId($context, $recordId))
		{
			// Somehow the person just went to the form and saved it - we don't allow that.
			$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $recordId));
			$this->setMessage($this->getError(), 'error');
			$this->setRedirect(JRoute::_('index.php?option=com_flexbanners&view=flexbanners' . $this->getRedirectToListAppend(), false));

			return false;
		}

		$db = JFactory::getDBO();
		$query = $db->getQuery(true);

		// Deal with restrictions
		$key = JRequest::getInt('id');
		$query->delete();
		$query->from($db->quoteName('#__flexbannersin'));

		// Filter by banner id
		$query->where('bannerid = '. (int)$key);
		$db->setQuery((string)$query);

		$db->setQuery($query);
		$db->query();

		// Check for a database error.
		if ($db->getErrorNum())
		{
			// Throw database error exception.
			throw new Exception($db->getErrorMsg(), 500);
		}

		if ($data[restrictbyid])
		{
			$flexbannercategories = JRequest::getVar('categoryid', array(), 'post', 'array');

			foreach($flexbannercategories as $flexbannercategory)
			{
				$query = "INSERT into #__flexbannersin SET bannerid= $data[id], categoryid = $flexbannercategory";
				$db->setQuery((string)$query);
				$db->query();

				// Check for a database error.
				if ($db->getErrorNum())
				{
					// Throw database error exception.
					throw new Exception($db->getErrorMsg(), 500);
				}
			}

			$flexbannercontents = JRequest::getVar('contentid', array(), 'post', 'array');

			foreach($flexbannercontents as $flexbannercontent)
			{
				$query = "INSERT into #__flexbannersin SET bannerid= $data[id], contentid = $flexbannercontent";
				$db->setQuery((string)$query);
				$db->query();

				// Check for a database error.
				if ($db->getErrorNum())
				{
					// Throw database error exception.
					throw new Exception($db->getErrorMsg(), 500);
				}
			}
		}


		// Validate the form data
		$form = $model->getForm();
		// $model->validate() returns an array of valid data or boolean false to indicate invalid data
		$validData = $model->validate($form, $data);

		// Check for data error
		if ($validData === false)
		{
			// Get the validation messages.
			$errors = $model->getErrors();

			// Push validation messages out to the user.
			foreach ($errors as $i => $error)
			{
				if ($error instanceof Exception)
				{
					$app->enqueueMessage($error->getMessage(), 'warning');
				}
				else
				{
					$app->enqueueMessage($error, 'warning');
				}
				// Only allow up to 3 errors to be reported
				if ($i >= 2)
				{
					break;
				}
			}

			// Save the data in the session so that the form can be repopulated.
			$app->setUserState($context.'.data', $data);

			// Redirect back to the edit screen.
			$this->setRedirect(JRoute::_( 'index.php?option=com_flexbanners&view=flexbanner&layout=edit&id='.$recordId, false), $message);

			return false;
		}

		// Reset finished if in date
		if ($data[enddate]>date("Y-m-d H:i:s") or $data[enddate]="0000-00-00 00:00:00") { $data[finished]=0;}
		
		// Attempt to save the configuration.
 		$return = $model->save($data);

		// Redirect the user and adjust session state based on the chosen task.

		switch (JRequest::getVar('task')) {

			case 'apply' :
				// 'Save' button

				// Set the new record id in the session.
				$recordId = $model->getState($this->context . '.id');
				$this->holdEditId($context, $recordId);

				// Check out the profile.
				$app->setUserState('com_users.edit.profile.id', $return);
				$model->checkout($return);

				// Reset the record data in the session.
				$app->setUserState($context.'.data', null);
				$model->checkout($return);

				// Redirect back to the edit screen.
				$this->setRedirect(JRoute::_( 'index.php?option=com_flexbanners&view=flexbanner&layout=edit&id='.$recordId, false), $message);
				break;

			case 'save2new' :
				// 'Save & New' button
				// Clear the record id and data from the session.
				$this->releaseEditId($context, $recordId);
				$app->setUserState($context.'.data', null);

				// Check-in the original row.
				if ($model->checkin($data['id']) === false)
				{
					// Check-in failed, go back to the item and display a notice.
					$this->setMessage(JText::sprintf('JLIB_APPLICATION_ERROR_CHECKIN_FAILED', $model->getError()), 'warning');
					return false;
				}

				// Redirect back to new edit screen.
				$this->setRedirect(JRoute::_( 'index.php?option=com_flexbanners&view=flexbanner&layout=edit&id=0', false));
				break;

			case 'save2copy' :
				// 'Save to copy & close' button

				// Check-in the original row.
				if ($model -> checkin($oldid) === false) {
					// Check-in failed, go back to the row and display a notice.
					$this -> setMessage(JText::sprintf('JLIB_APPLICATION_ERROR_CHECKIN_FAILED', $model -> getError()), 'warning');
					$this -> setRedirect(JRoute::_('index.php?option=' . $this -> option . '&view=' . $this -> view_item . $this -> getRedirectToItemAppend($recordId), false));

					return false;
				}

				$this -> setRedirect(JRoute::_('index.php?option=com_flexbanners&view=flexbanners', true));
				break;

			case 'save' :
			// 'Save & Close' button
			default:
				// Clear the record id and data from the session.
				$this->releaseEditId($context, $recordId);
				$app->setUserState($context.'.data', null);

				// Save succeeded, check-in the row.
				if ($model->checkin($data['id']) === false)
				{
					// Check-in failed, go back to the row and display a notice.
					$this->setMessage(JText::sprintf('JLIB_APPLICATION_ERROR_CHECKIN_FAILED', $model->getError()), 'warning');
					$this->setRedirect(JRoute::_('index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend($recordId), false));

					return false;
				}

				$this->setRedirect(JRoute::_('index.php?option=com_flexbanners&view=flexbanners', true));
				break;
		}

	return true;
	}

}
