<?php

/**
 * Define the internationalization functionality
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @link       http://d3applications.com
 * @since      1.0.0
 *
 * @package    Desalitech_Scroll_Next
 * @subpackage Desalitech_Scroll_Next/includes
 */

/**
 * Define the internationalization functionality.
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @since      1.0.0
 * @package    Desalitech_Scroll_Next
 * @subpackage Desalitech_Scroll_Next/includes
 * @author     Max Baun <maxbaun@gmail.com>
 */
class Desalitech_Scroll_Next_i18n {


	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since    1.0.0
	 */
	public function load_plugin_textdomain() {

		load_plugin_textdomain(
			'desalitech-scroll-next',
			false,
			dirname( dirname( plugin_basename( __FILE__ ) ) ) . '/languages/'
		);

	}



}
