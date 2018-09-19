<?php
/**
 * @package LiveUpdate
 * @copyright Copyright ©2011-2013 Nicholas K. Dionysopoulos / AkeebaBackup.com
 * @license GNU LGPLv3 or later <http://www.gnu.org/copyleft/lesser.html>
 */

defined('_JEXEC') or die();

/**
 * Configuration class for your extension's updates. Override to your liking.
 */
class LiveUpdateConfig extends LiveUpdateAbstractConfig
{
	var $_extensionName			= 'com_flexbanners';
	var $_extensionTitle		= 'FlexBanners - Banner Management System';
	var $_updateURL				= 'http://www.inchhosting.co.uk/index.php?option=com_ars&view=update&format=ini&id=4';
	var $_requiresAuthorization	= false;
	var $_versionStrategy		= 'different';
	var $_storageAdapter		= 'component';
	
}