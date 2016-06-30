<?php defined( 'ABSPATH' ) OR die( 'This script cannot be accessed directly.' );

/**
 * Overloading framework's VC shortcode mapping of: us_btn
 *
 * @var $shortcode string Current shortcode name
 * @var $config array Shortcode's config
 *
 * @param $config ['atts'] array Shortcode's attributes and default values
 */

global $us_template_directory;
require $us_template_directory . '/framework/plugins-support/js_composer/map/us_btn.php';

vc_remove_param( 'us_btn', 'style' );
vc_add_param( 'us_btn', array(
	'param_name' => 'style',
	'heading' => __( 'Button Style', 'us' ),
	'type' => 'dropdown',
	'value' => array(
		__( 'Solid', 'us' ) => 'solid',
		__( 'Outlined', 'us' ) => 'outlined',
	),
	'std' => $config['atts']['style'],
	'edit_field_class' => 'vc_col-sm-6 vc_column',
	'weight' => 100,
) );
vc_remove_param( 'us_btn', 'color' );
vc_add_param( 'us_btn', array(
	'param_name' => 'color',
	'heading' => __( 'Button Color', 'us' ),
	'type' => 'dropdown',
	'value' => array(
		__( 'Primary (theme color)', 'us' ) => 'primary',
		__( 'Secondary (theme color)', 'us' ) => 'secondary',
		__( 'Light (theme color)', 'us' ) => 'light',
		__( 'Contrast (theme color)', 'us' ) => 'contrast',
		__( 'Black', 'us' ) => 'black',
		__( 'White', 'us' ) => 'white',
		__( 'Pink', 'us' ) => 'pink',
		__( 'Blue', 'us' ) => 'blue',
		__( 'Green', 'us' ) => 'green',
		__( 'Yellow', 'us' ) => 'yellow',
		__( 'Purple', 'us' ) => 'purple',
		__( 'Red', 'us' ) => 'red',
		__( 'Lime', 'us' ) => 'lime',
		__( 'Navy', 'us' ) => 'navy',
		__( 'Cream', 'us' ) => 'cream',
		__( 'Brown', 'us' ) => 'brown',
		__( 'Midnight', 'us' ) => 'midnight',
		__( 'Teal', 'us' ) => 'teal',
		__( 'Transparent', 'us' ) => 'transparent',
	),
	'std' => $config['atts']['color'],
	'edit_field_class' => 'vc_col-sm-6 vc_column',
	'weight' => 90,
) );
vc_remove_param( 'us_btn', 'bg_color' );
vc_remove_param( 'us_btn', 'text_color' );
