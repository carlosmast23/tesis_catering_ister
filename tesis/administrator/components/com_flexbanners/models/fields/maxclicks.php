<?php
/**
* @copyright Copyright (C) 2009-2012 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

defined('JPATH_BASE') or die;

class JFormFieldMaxClicks extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected $type = 'MaxClicks';

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getInput()
	{
		$class		= ' class="validate-numeric text_area"';
		$onchange	= ' onchange="document.id(\''.$this->id.'_unlimited\').checked=document.id(\''.$this->id.'\').value==\'\';"';
		$onclick	= ' onclick="if (document.id(\''.$this->id.'_unlimited\').checked) document.id(\''.$this->id.'\').value=\'\';"';
		$value		= empty($this->value) ? '' : $this->value;
		$checked	= empty($this->value) ? ' checked="checked"' : '';

		return '<input type="text" name="'.$this->name.'" id="'.$this->id.'" size="9" value="'.htmlspecialchars($value, ENT_COMPAT, 'UTF-8').'" '.$class.$onchange.' />
		<fieldset class="checkboxes impunlimited"><input id="'.$this->id.'_unlimited" type="checkbox"'.$checked.$onclick.' />
		<label for="'.$this->id.'_unlimited" id="jform-maxclicks" type="text">'.JText::_('ADMIN_FLEXBANNER_UNLIMITED').'</label></fieldset>';
	}
}
