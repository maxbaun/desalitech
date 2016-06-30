<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              http://d3applications.com
 * @since             1.0.0
 * @package           Desalitech_Counter
 *
 * @wordpress-plugin
 * Plugin Name:       Desalitech Counter
 * Plugin URI:        desalitech.com
 * Description:       This is a short description of what the plugin does. It's displayed in the WordPress admin area.
 * Version:           1.0.0
 * Author:            Max Baun
 * Author URI:        http://d3applications.com
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       desalitech-counter
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-desalitech-counter-activator.php
 */
function activate_desalitech_counter() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-desalitech-counter-activator.php';
	Desalitech_Counter_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-desalitech-counter-deactivator.php
 */
function deactivate_desalitech_counter() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-desalitech-counter-deactivator.php';
	Desalitech_Counter_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_desalitech_counter' );
register_deactivation_hook( __FILE__, 'deactivate_desalitech_counter' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-desalitech-counter.php';

/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function run_desalitech_counter() {

	$plugin = new Desalitech_Counter();
	$plugin->run();

}
run_desalitech_counter();
