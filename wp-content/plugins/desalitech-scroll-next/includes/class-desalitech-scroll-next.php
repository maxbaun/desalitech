<?php

/**
 * The file that defines the core plugin class
 *
 * A class definition that includes attributes and functions used across both the
 * public-facing side of the site and the admin area.
 *
 * @link       http://d3applications.com
 * @since      1.0.0
 *
 * @package    Desalitech_Scroll_Next
 * @subpackage Desalitech_Scroll_Next/includes
 */

/**
 * The core plugin class.
 *
 * This is used to define internationalization, admin-specific hooks, and
 * public-facing site hooks.
 *
 * Also maintains the unique identifier of this plugin as well as the current
 * version of the plugin.
 *
 * @since      1.0.0
 * @package    Desalitech_Scroll_Next
 * @subpackage Desalitech_Scroll_Next/includes
 * @author     Max Baun <maxbaun@gmail.com>
 */
class Desalitech_Scroll_Next {

	/**
	 * The loader that's responsible for maintaining and registering all hooks that power
	 * the plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      Desalitech_Scroll_Next_Loader    $loader    Maintains and registers all hooks for the plugin.
	 */
	protected $loader;

	/**
	 * The unique identifier of this plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $plugin_name    The string used to uniquely identify this plugin.
	 */
	protected $plugin_name;

	/**
	 * The current version of the plugin.
	 *
	 * @since    1.0.0
	 * @access   protected
	 * @var      string    $version    The current version of the plugin.
	 */
	protected $version;

	/**
	 * Define the core functionality of the plugin.
	 *
	 * Set the plugin name and the plugin version that can be used throughout the plugin.
	 * Load the dependencies, define the locale, and set the hooks for the admin area and
	 * the public-facing side of the site.
	 *
	 * @since    1.0.0
	 */
	 public function __construct() {

 		$this->plugin_name = 'desalitech-scroll-next';
 		$this->version = '1.0.0';

 		$this->load_dependencies();
 		$this->define_admin_hooks();
 		$this->define_public_hooks();

 		add_action('init',array($this,'scroll_next_init'));
 		add_shortcode('desalitech_scroll_next',array($this,'scroll_next_shortcode'));

 	}

 	// initialize the mapping function
 	function scroll_next_init()
 	{

 		if(function_exists('vc_map'))
 		{
 			// map with visual
 			vc_map(
 				array(
 				   "name" => __("Desalitech Scroll Next","ultimate_vc"),
 				   "base" => "desalitech_scroll_next",
 				   "class" => "vc_desalitech_scroll_next",
 				   "icon" => "icon-wpb-ui-button",
 				   "category" => "Ultimate VC Addons",
 				   "description" => __("Nav to the next section.","ultimate_vc"),
 				   "params" => array(
 						array(
 							"type" => "colorpicker",
 							"class" => "",
 							"heading" => __("Background Color", "ultimate_vc"),
 							"param_name" => "background_color",
 							"value" => "#333333",
 							"description" => __("Background color of the border!", "ultimate_vc"),
 						),
 						array(
 							"type" => "colorpicker",
 							"class" => "",
 							"heading" => __("Button Color", "ultimate_vc"),
 							"param_name" => "button_color",
 							"value" => "#ffffff",
 							"description" => __("Select a color for the triancle.", "ultimate_vc"),
 						),
 					  array(
 						 "type" => "textfield",
 						 "class" => "",
 						 "heading" => __("Scroll To Selector", "ultimate_vc"),
 						 "param_name" => "scroll_to",
 						 "value" => "",
 						 "description" => __("Enter the selector of the element to scroll to", "ultimate_vc")
 					  ),
 					  array(
 						 "type" => "number",
 						 "class" => "",
 						 "heading" => __("Height", "ultimate_vc"),
 						 "param_name" => "height",
 						 "value" => 40,
 						 "description" => __("How tall do you want this element to be?", "ultimate_vc")
 					  ),
 					  array(
 						 "type" => "number",
 						 "class" => "",
 						 "heading" => __("Button Size", "ultimate_vc"),
 						 "param_name" => "button_size",
 						 "value" => 45,
 						 "description" => __("How big do you want the button to be?", "ultimate_vc")
 					  ),
 					  array(
 						 "type" => "number",
 						 "class" => "",
 						 "heading" => __("Scroll Speed", "ultimate_vc"),
 						 "param_name" => "speed",
 						 "value" => 1.2,
 						 "description" => __("How fast do you want to scroll", "ultimate_vc")
 					  ),
					  array(
						  "type" => "dropdown",
						  "class" => "",
						  "heading" => __("Where", "ultimate_vc"),
						  "param_name" => "where",
						  "value" => array(
							  __("Top","ultimate_vc") => "top",
							  __("Middle","ultimate_vc") => "middle",
						  ),
						  "description" => __("Where in the next element would you like to scroll to?", "ultimate_vc")
					  ),
 					),
 				)
 			);
 		}
 	}
 	// Shortcode handler function for stats counter
 	function scroll_next_shortcode($atts)
 	{
 		$background_color = $button_color = $scroll_to = '';

 		extract(shortcode_atts( array(
 			'background_color' => '',
 			'button_color' => '#ffffff',
 			'scroll_to' => '',
 			'height' => '',
 			'button_size' => '',
			'speed' => '1200',
			'where' => 'top'
 		),$atts));
 		$css_stat_counter = apply_filters( VC_SHORTCODE_CUSTOM_CSS_FILTER_TAG, vc_shortcode_custom_css_class( $css_stat_counter, ' ' ), "stat_counter", $atts );
 		$css_stat_counter = esc_attr( $css_stat_counter );

		$el_style = '';
		$el_style .= ' height: ' . $height . 'px;';
		$el_style .= ' background-color: ' . $background_color . ';';

		$button_style = '';
		$button_style .= ' background-color: ' . $button_color . ';';

		$pointer_style .= ' background-color: ' . $background_color . ';';

 		$output = '<div class="desalitech-scroll-to" style="'.$el_style.'">';
			$output .= '<div class="button-container">';
				$output .= '<a class="button" href="#" data-scroll-to="'.$scroll_to.'" data-where="'.$where.'" data-speed="'.$speed.'" style="'.$button_style.'"></a>';
			$output .= '</div>';
			$output .= '<span class="arrow" style="'.$pointer_style.'"></span>';
 		$output .= '</div>';
 		$is_preset = false; //Display settings for Preset
 		if(isset($_GET['preset'])) {
 			$is_preset = true;
 		}
 		if($is_preset) {
 			$text = 'array ( ';
 			foreach ($atts as $key => $att) {
 				$text .= '<br/>	\''.$key.'\' => \''.$att.'\',';
 			}
 			if($content != '') {
 				$text .= '<br/>	\'content\' => \''.$content.'\',';
 			}
 			$text .= '<br/>)';
 			$output .= '<pre>';
 			$output .= $text;
 			$output .= '</pre>';
 		}
 		return $output;
 	}

	/**
	 * Load the required dependencies for this plugin.
	 *
	 * Include the following files that make up the plugin:
	 *
	 * - Desalitech_Scroll_Next_Loader. Orchestrates the hooks of the plugin.
	 * - Desalitech_Scroll_Next_i18n. Defines internationalization functionality.
	 * - Desalitech_Scroll_Next_Admin. Defines all hooks for the admin area.
	 * - Desalitech_Scroll_Next_Public. Defines all hooks for the public side of the site.
	 *
	 * Create an instance of the loader which will be used to register the hooks
	 * with WordPress.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function load_dependencies() {

		/**
		 * The class responsible for orchestrating the actions and filters of the
		 * core plugin.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'includes/class-desalitech-scroll-next-loader.php';

		/**
		 * The class responsible for defining all actions that occur in the admin area.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'admin/class-desalitech-scroll-next-admin.php';

		/**
		 * The class responsible for defining all actions that occur in the public-facing
		 * side of the site.
		 */
		require_once plugin_dir_path( dirname( __FILE__ ) ) . 'public/class-desalitech-scroll-next-public.php';

		$this->loader = new Desalitech_Scroll_Next_Loader();

	}

	/**
	 * Register all of the hooks related to the admin area functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_admin_hooks() {

		$plugin_admin = new Desalitech_Scroll_Next_Admin( $this->get_plugin_name(), $this->get_version() );

		$this->loader->add_action( 'admin_enqueue_scripts', $plugin_admin, 'enqueue_styles' );
		$this->loader->add_action( 'admin_enqueue_scripts', $plugin_admin, 'enqueue_scripts' );

	}

	/**
	 * Register all of the hooks related to the public-facing functionality
	 * of the plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 */
	private function define_public_hooks() {

		$plugin_public = new Desalitech_Scroll_Next_Public( $this->get_plugin_name(), $this->get_version() );

		$this->loader->add_action( 'wp_enqueue_scripts', $plugin_public, 'enqueue_styles' );
		$this->loader->add_action( 'wp_enqueue_scripts', $plugin_public, 'enqueue_scripts' );

	}

	/**
	 * Run the loader to execute all of the hooks with WordPress.
	 *
	 * @since    1.0.0
	 */
	public function run() {
		$this->loader->run();
	}

	/**
	 * The name of the plugin used to uniquely identify it within the context of
	 * WordPress and to define internationalization functionality.
	 *
	 * @since     1.0.0
	 * @return    string    The name of the plugin.
	 */
	public function get_plugin_name() {
		return $this->plugin_name;
	}

	/**
	 * The reference to the class that orchestrates the hooks with the plugin.
	 *
	 * @since     1.0.0
	 * @return    Desalitech_Scroll_Next_Loader    Orchestrates the hooks of the plugin.
	 */
	public function get_loader() {
		return $this->loader;
	}

	/**
	 * Retrieve the version number of the plugin.
	 *
	 * @since     1.0.0
	 * @return    string    The version number of the plugin.
	 */
	public function get_version() {
		return $this->version;
	}

}
