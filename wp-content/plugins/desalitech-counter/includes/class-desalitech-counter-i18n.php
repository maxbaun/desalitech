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
 * @package    Desalitech_Counter
 * @subpackage Desalitech_Counter/includes
 */

/**
 * Define the internationalization functionality.
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @since      1.0.0
 * @package    Desalitech_Counter
 * @subpackage Desalitech_Counter/includes
 * @author     Max Baun <maxbaun@gmail.com>
 */
class Desalitech_Counter_i18n {


	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since    1.0.0
	 */
	public function load_plugin_textdomain() {

		load_plugin_textdomain(
			'desalitech-counter',
			false,
			dirname( dirname( plugin_basename( __FILE__ ) ) ) . '/languages/'
		);

	}



}
