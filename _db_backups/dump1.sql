-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 166.62.8.14    Database: des1605306052300
-- ------------------------------------------------------
-- Server version	5.5.43-37.2-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_cjtoolbox_authors`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_authors` (
  `name` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `attributes` int(4) NOT NULL DEFAULT '0',
  `guid` varchar(16) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid` (`guid`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_authors`
--

LOCK TABLES `wp_cjtoolbox_authors` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_authors` DISABLE KEYS */;
INSERT INTO `wp_cjtoolbox_authors` VALUES ('Wordpress',NULL,NULL,1,NULL,1);
/*!40000 ALTER TABLE `wp_cjtoolbox_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_backups`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_backups` (
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'blocks',
  `owner` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_backups`
--

LOCK TABLES `wp_cjtoolbox_backups` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_block_files`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_block_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_block_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blockId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('css','javascript','php','html') DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `code` text,
  `order` smallint(6) DEFAULT '0',
  `tag` text,
  PRIMARY KEY (`id`,`blockId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_block_files`
--

LOCK TABLES `wp_cjtoolbox_block_files` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_block_files` DISABLE KEYS */;
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,1,'Master',NULL,NULL,'<script type=\'text/javascript\'>\n/*\n jQuery animateNumber plugin v0.0.13\n (c) 2013, Alexandr Borisov.\n https://github.com/aishek/jquery-animateNumber\n*/\n(function(d){var q=function(b){return b.split(\"\").reverse().join(\"\")},m={numberStep:function(b,a){var e=Math.floor(b);d(a.elem).text(e)}},h=function(b){var a=b.elem;a.nodeType&&a.parentNode&&(a=a._animateNumberSetter,a||(a=m.numberStep),a(b.now,b))};d.Tween&&d.Tween.propHooks?d.Tween.propHooks.number={set:h}:d.fx.step.number=h;d.animateNumber={numberStepFactories:{append:function(b){return function(a,e){var g=Math.floor(a);d(e.elem).prop(\"number\",a).text(g+b)}},separator:function(b,a,e){b=b||\" \";\na=a||3;e=e||\"\";return function(g,k){var c=Math.floor(g).toString(),t=d(k.elem);if(c.length>a){for(var f=c,l=a,m=f.split(\"\").reverse(),c=[],n,r,p,s=0,h=Math.ceil(f.length/l);s<h;s++){n=\"\";for(p=0;p<l;p++){r=s*l+p;if(r===f.length)break;n+=m[r]}c.push(n)}f=c.length-1;l=q(c[f]);c[f]=q(parseInt(l,10).toString());c=c.join(b);c=q(c)}t.prop(\"number\",g).text(c+e)}}}};d.fn.animateNumber=function(){for(var b=arguments[0],a=d.extend({},m,b),e=d(this),g=[a],k=1,c=arguments.length;k<c;k++)g.push(arguments[k]);\nif(b.numberStep){var h=this.each(function(){this._animateNumberSetter=b.numberStep}),f=a.complete;a.complete=function(){h.each(function(){delete this._animateNumberSetter});f&&f.apply(this,arguments)}}return e.animate.apply(e,g)}})(jQuery);\n\njQuery.fn.isOnScreen = function(){\n    var element = this.get(0);\n    var bounds = element.getBoundingClientRect();\n    return bounds.top < window.innerHeight && bounds.bottom > 0;\n}\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,2,'Master',NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,3,'Master',NULL,NULL,'<script type=\'text/javascript\'>\njQuery(document).ready(function($) {\n    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(\',\')\n    var counters = jQuery(\'.animated-counter\');\n    jQuery(window).scroll(function() {\n        jQuery( \".animated-counter\" ).each(function( index ) {\n            var current = jQuery(this);\n            var target = current.attr(\'data-target\');\n        \n            if ( current.isOnScreen() ) {\n                current.animateNumber({ \n                    number: target,\n                    numberStep: comma_separator_number_step,\n                    easing: \'easeInQuad\'\n                    }, 2500 );\n            }\n        });\n    });\n});\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,4,'Master',NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,5,'Master',NULL,NULL,'<script type=\'text/javascript\'>\njQuery(document).ready(function($) {\n    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(\',\')\n    var counters = jQuery(\'.animated-counter\');\n    jQuery(window).scroll(function() {\n        jQuery( \".animated-counter\" ).each(function( index ) {\n            var current = jQuery(this);\n            var target = current.attr(\'data-target\');\n        \n            if ( current.isOnScreen() ) {\n                current.animateNumber({ \n                    number: target,\n                    numberStep: comma_separator_number_step,\n                    easing: \'easeInQuad\'\n                    }, 2500 );\n            }\n        });\n    });\n});\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,6,'Master',NULL,NULL,'<script type=\'text/javascript\'>\njQuery(document).ready(function($) {\n    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(\',\')\n    var counters = jQuery(\'.animated-counter\');\n    jQuery(window).scroll(function() {\n        jQuery( \".animated-counter\" ).each(function( index ) {\n            console.log(this);\n            var current = jQuery(this);\n            var target = current.attr(\'data-target\');\n        \n            if ( current.isOnScreen() ) {\n                current.animateNumber({ \n                    number: target,\n                    numberStep: comma_separator_number_step,\n                    easing: \'easeInQuad\'\n                    }, 2500 );\n            }\n        });\n    });\n});\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,9,'Master',NULL,NULL,'<script type=\'text/javascript\'>\njQuery(document).ready(function($) {\n    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(\',\')\n    var counters = jQuery(\'.animated-counter\');\n    jQuery(window).scroll(function() {\n        jQuery( \".animated-counter\" ).each(function( index ) {\n            var current = jQuery(this);\n            var target = current.attr(\'data-target\');\n        \n            if ( current.isOnScreen() ) {\n                current.animateNumber({ \n                    number: target,\n                    numberStep: comma_separator_number_step,\n                    easing: \'easeInQuad\'\n                    }, 2500 );\n            }\n        });\n    });\n});\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,7,'Master',NULL,NULL,'<script type=\'text/javascript\'>\njQuery(document).ready(function($) {\n    console.log(\"document ready\");\n    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(\',\')\n    var counters = jQuery(\'.animated-counter\');\n    jQuery(window).scroll(function() {\n        jQuery( \".animated-counter\" ).each(function( index ) {\n            console.log(this);\n            var current = jQuery(this);\n            var target = current.attr(\'data-target\');\n        \n            if ( current.isOnScreen() ) {\n                current.animateNumber({ \n                    number: target,\n                    numberStep: comma_separator_number_step,\n                    easing: \'easeInQuad\'\n                    }, 2500 );\n            }\n        });\n    });\n});\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,8,'Master',NULL,NULL,'<script type=\'text/javascript\'>\njQuery(document).ready(function($) {\n    console.log(\"document ready\");\n    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(\',\')\n    var counters = jQuery(\'.animated-counter\');\n    jQuery(window).scroll(function() {\n        jQuery( \".animated-counter\" ).each(function( index ) {\n            console.log(this);\n            var current = jQuery(this);\n            var target = current.attr(\'data-target\');\n        \n            if ( current.isOnScreen() ) {\n                current.animateNumber({ \n                    number: target,\n                    numberStep: comma_separator_number_step,\n                    easing: \'easeInQuad\'\n                    }, 2500 );\n            }\n        });\n    });\n});\n</script>',0,NULL);
INSERT INTO `wp_cjtoolbox_block_files` VALUES (1,10,'Master',NULL,NULL,'<script type=\'text/javascript\'>\n/*\n jQuery animateNumber plugin v0.0.13\n (c) 2013, Alexandr Borisov.\n https://github.com/aishek/jquery-animateNumber\n*/\n(function(d){var q=function(b){return b.split(\"\").reverse().join(\"\")},m={numberStep:function(b,a){var e=Math.floor(b);d(a.elem).text(e)}},h=function(b){var a=b.elem;a.nodeType&&a.parentNode&&(a=a._animateNumberSetter,a||(a=m.numberStep),a(b.now,b))};d.Tween&&d.Tween.propHooks?d.Tween.propHooks.number={set:h}:d.fx.step.number=h;d.animateNumber={numberStepFactories:{append:function(b){return function(a,e){var g=Math.floor(a);d(e.elem).prop(\"number\",a).text(g+b)}},separator:function(b,a,e){b=b||\" \";\na=a||3;e=e||\"\";return function(g,k){var c=Math.floor(g).toString(),t=d(k.elem);if(c.length>a){for(var f=c,l=a,m=f.split(\"\").reverse(),c=[],n,r,p,s=0,h=Math.ceil(f.length/l);s<h;s++){n=\"\";for(p=0;p<l;p++){r=s*l+p;if(r===f.length)break;n+=m[r]}c.push(n)}f=c.length-1;l=q(c[f]);c[f]=q(parseInt(l,10).toString());c=c.join(b);c=q(c)}t.prop(\"number\",g).text(c+e)}}}};d.fn.animateNumber=function(){for(var b=arguments[0],a=d.extend({},m,b),e=d(this),g=[a],k=1,c=arguments.length;k<c;k++)g.push(arguments[k]);\nif(b.numberStep){var h=this.each(function(){this._animateNumberSetter=b.numberStep}),f=a.complete;a.complete=function(){h.each(function(){delete this._animateNumberSetter});f&&f.apply(this,arguments)}}return e.animate.apply(e,g)}})(jQuery);\n\njQuery.fn.isOnScreen = function(){\n    var element = this.get(0);\n    var bounds = element.getBoundingClientRect();\n    return bounds.top < window.innerHeight && bounds.bottom > 0;\n}\n</script>',0,NULL);
/*!40000 ALTER TABLE `wp_cjtoolbox_block_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_block_pins`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_block_pins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_block_pins` (
  `blockId` int(11) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `value` int(11) NOT NULL,
  `attributes` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockId`,`pin`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_block_pins`
--

LOCK TABLES `wp_cjtoolbox_block_pins` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_block_pins` DISABLE KEYS */;
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (1,'pages',774,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (1,'pages',549,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (3,'pages',549,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (8,'pages',549,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (8,'pages',774,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (9,'pages',549,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (9,'pages',774,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (3,'pages',774,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (3,'pages',579,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (10,'pages',549,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (10,'pages',774,0);
INSERT INTO `wp_cjtoolbox_block_pins` VALUES (1,'pages',579,0);
/*!40000 ALTER TABLE `wp_cjtoolbox_block_pins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_block_templates`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_block_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_block_templates` (
  `blockId` int(11) NOT NULL,
  `templateId` int(11) NOT NULL,
  PRIMARY KEY (`blockId`,`templateId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_block_templates`
--

LOCK TABLES `wp_cjtoolbox_block_templates` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_block_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_block_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_blocks`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_blocks` (
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `lastModified` datetime NOT NULL,
  `pinPoint` int(4) NOT NULL DEFAULT '0',
  `state` enum('active','inactive') DEFAULT 'inactive',
  `location` enum('header','footer') DEFAULT 'header',
  `links` text,
  `expressions` text,
  `type` enum('block','revision','metabox') DEFAULT 'block',
  `backupId` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `flag` int(4) NOT NULL DEFAULT '0',
  `masterFile` int(4) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`backupId`),
  KEY `pinPoint` (`pinPoint`,`state`,`location`,`type`,`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_blocks`
--

LOCK TABLES `wp_cjtoolbox_blocks` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_blocks` DISABLE KEYS */;
INSERT INTO `wp_cjtoolbox_blocks` VALUES ('jQuery.animateNumber',NULL,1,'2016-03-13 19:58:24','2016-03-13 20:55:20',32,'active','footer','','','block',NULL,NULL,0,1,1);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 19:58:55','2016-03-13 19:58:24',0,'','',NULL,NULL,'revision',NULL,1,0,1,2);
INSERT INTO `wp_cjtoolbox_blocks` VALUES ('document.ready',NULL,1,'2016-03-13 20:00:12','2016-03-13 20:55:14',32,'active','footer','','','block',NULL,NULL,0,1,3);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:02:13','2016-03-13 20:00:12',0,'','',NULL,NULL,'revision',NULL,3,0,1,4);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:15:44','2016-03-13 20:02:13',0,'','','','','revision',NULL,3,0,1,5);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:16:33','2016-03-13 20:15:44',0,'','','','','revision',NULL,3,0,1,6);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:17:28','2016-03-13 20:16:33',0,'','','','','revision',NULL,3,0,1,7);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:18:15','2016-03-13 20:17:28',32,'','','','','revision',NULL,3,0,1,8);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:55:14','2016-03-13 20:18:15',32,'','','','','revision',NULL,3,0,1,9);
INSERT INTO `wp_cjtoolbox_blocks` VALUES (NULL,NULL,1,'2016-03-13 20:55:20','2016-03-13 19:58:55',32,'','','','','revision',NULL,1,0,1,10);
/*!40000 ALTER TABLE `wp_cjtoolbox_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_form_group_parameters`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_form_group_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_form_group_parameters` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `parameterId` int(11) NOT NULL COMMENT 'block to be associated with the form',
  `renderer` varchar(30) DEFAULT NULL,
  `description` text,
  `helpText` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`parameterId`),
  KEY `Index 2` (`groupId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_form_group_parameters`
--

LOCK TABLES `wp_cjtoolbox_form_group_parameters` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_form_group_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_form_group_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_form_group_xfields`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_form_group_xfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_form_group_xfields` (
  `groupId` int(11) NOT NULL,
  `text` text,
  UNIQUE KEY `groupId` (`groupId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_form_group_xfields`
--

LOCK TABLES `wp_cjtoolbox_form_group_xfields` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_form_group_xfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_form_group_xfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_form_groups`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_form_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_form_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL COMMENT 'block to be associated with the form',
  `name` varchar(100) NOT NULL COMMENT 'group name/title',
  `description` text COMMENT 'Parameters group description',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 3` (`formId`,`name`),
  KEY `formId` (`formId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_form_groups`
--

LOCK TABLES `wp_cjtoolbox_form_groups` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_form_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_form_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_forms`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_forms` (
  `blockId` int(11) NOT NULL COMMENT 'block to be associated with the form',
  `name` varchar(100) NOT NULL COMMENT 'Form name/title',
  `groupType` varchar(20) NOT NULL COMMENT 'parameters gooup type (tab, accordion, etc...)',
  PRIMARY KEY (`blockId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_forms`
--

LOCK TABLES `wp_cjtoolbox_forms` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_package_objects`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_package_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_package_objects` (
  `packageId` int(10) unsigned NOT NULL,
  `objectId` int(10) unsigned NOT NULL,
  `objectType` enum('block','template') NOT NULL,
  `relType` enum('add','link') NOT NULL DEFAULT 'add',
  PRIMARY KEY (`packageId`,`objectId`,`objectType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_package_objects`
--

LOCK TABLES `wp_cjtoolbox_package_objects` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_package_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_package_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_packages`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_packages` (
  `name` varchar(100) NOT NULL,
  `author` varchar(150) NOT NULL,
  `webSite` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `license` text NOT NULL,
  `readme` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_packages`
--

LOCK TABLES `wp_cjtoolbox_packages` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_parameter_typedef`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_parameter_typedef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_parameter_typedef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameterId` int(11) NOT NULL,
  `text` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parameterId` (`parameterId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_parameter_typedef`
--

LOCK TABLES `wp_cjtoolbox_parameter_typedef` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_parameter_typedef` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_parameter_typedef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_parameter_typeparams`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_parameter_typeparams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_parameter_typeparams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameterId` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parameterId` (`parameterId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_parameter_typeparams`
--

LOCK TABLES `wp_cjtoolbox_parameter_typeparams` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_parameter_typeparams` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_parameter_typeparams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_parameters`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_parameters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'paramter unique identifier',
  `blockId` int(11) unsigned NOT NULL,
  `parent` int(11) unsigned DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `defaultValue` text,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contentParam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`parent`,`blockId`),
  KEY `parent` (`parent`),
  KEY `blockId` (`blockId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_parameters`
--

LOCK TABLES `wp_cjtoolbox_parameters` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cjtoolbox_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_template_revisions`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_template_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_template_revisions` (
  `templateId` int(11) NOT NULL,
  `revisionNo` int(11) NOT NULL DEFAULT '0',
  `version` varchar(15) DEFAULT NULL,
  `changeLog` varchar(600) DEFAULT NULL,
  `state` enum('release','beta','release-candidate','alpha','revision') NOT NULL,
  `attributes` int(4) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `file` varchar(400) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `templateid-revisionNo` (`revisionNo`,`templateId`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_template_revisions`
--

LOCK TABLES `wp_cjtoolbox_template_revisions` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_template_revisions` DISABLE KEYS */;
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (1,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/utils.min.js',1);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (2,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-admin/js/common.min.js',2);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (3,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/wp-a11y.min.js',3);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (4,1,'1.6.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/tw-sack.min.js',4);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (5,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/quicktags.min.js',5);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (6,1,'3517m','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/colorpicker.min.js',6);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (7,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-admin/js/editor.min.js',7);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (8,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-admin/js/wp-fullscreen-stub.min.js',8);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (9,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/wp-ajax-response.min.js',9);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (10,1,'20111129a','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/wp-pointer.min.js',10);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (11,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/autosave.min.js',11);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (12,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/heartbeat.min.js',12);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (13,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/wp-auth-check.min.js',13);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (14,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/wp-lists.min.js',14);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (15,1,'1.7.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/prototype/1.7.1.0/prototype.js',15);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (16,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/scriptaculous.js',16);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (17,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/builder.js',17);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (18,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/dragdrop.js',18);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (19,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/effects.js',19);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (20,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/slider.js',20);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (21,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/sound.js',21);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (22,1,'1.9.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/controls.js',22);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (23,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','',23);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (24,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/crop/cropper.js',24);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (25,1,'1.11.3','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','',25);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (26,1,'1.11.3','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/jquery.js',26);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (27,1,'1.2.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/jquery-migrate.min.js',27);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (28,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/core.min.js',28);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (29,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect.min.js',29);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (30,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-blind.min.js',30);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (31,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-bounce.min.js',31);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (32,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-clip.min.js',32);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (33,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-drop.min.js',33);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (34,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-explode.min.js',34);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (35,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-fade.min.js',35);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (36,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-fold.min.js',36);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (37,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-highlight.min.js',37);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (38,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-puff.min.js',38);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (39,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-pulsate.min.js',39);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (40,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-scale.min.js',40);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (41,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-shake.min.js',41);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (42,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-size.min.js',42);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (43,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-slide.min.js',43);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (44,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/effect-transfer.min.js',44);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (45,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/accordion.min.js',45);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (46,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/autocomplete.min.js',46);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (47,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/button.min.js',47);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (48,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/datepicker.min.js',48);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (49,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/dialog.min.js',49);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (50,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/draggable.min.js',50);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (51,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/droppable.min.js',51);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (52,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/menu.min.js',52);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (53,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/mouse.min.js',53);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (54,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/position.min.js',54);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (55,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/progressbar.min.js',55);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (56,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/resizable.min.js',56);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (57,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/selectable.min.js',57);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (58,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:18','/wp-includes/js/jquery/ui/selectmenu.min.js',58);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (59,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/ui/slider.min.js',59);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (60,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/ui/sortable.min.js',60);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (61,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/ui/spinner.min.js',61);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (62,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/ui/tabs.min.js',62);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (63,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/ui/tooltip.min.js',63);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (64,1,'1.11.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/ui/widget.min.js',64);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (65,1,'3.37.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.form.min.js',65);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (66,1,'2.1.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.color.min.js',66);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (67,1,'1.1-20110113','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/suggest.min.js',67);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (68,1,'20m','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.schedule.js',68);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (69,1,'2.1.7','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.query.js',69);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (70,1,'0.2','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.serialize-object.js',70);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (71,1,'0.0.2m','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.hotkeys.min.js',71);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (72,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.table-hotkeys.min.js',72);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (73,1,'0.2.2','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.ui.touch-punch.js',73);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (74,1,'3.1.2','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/masonry.min.js',74);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (75,1,'3.1.2','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jquery/jquery.masonry.min.js',75);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (76,1,'3.1-20121105','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/thickbox/thickbox.js',76);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (77,1,'0.9.12','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/jcrop/jquery.Jcrop.min.js',77);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (78,1,'2.2-20120417','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/swfobject.js',78);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (79,1,'2.1.8','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/plupload/plupload.full.min.js',79);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (80,1,'2.1.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','',80);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (81,1,'2.1.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','',81);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (82,1,'2.1.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','',82);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (83,1,'2.1.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','',83);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (84,1,'2.1.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','',84);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (85,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/plupload/handlers.min.js',85);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (86,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/plupload/wp-plupload.min.js',86);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (87,1,'2201-20110113','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/swfupload/swfupload.js',87);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (88,1,'2201a','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/swfupload/plugins/swfupload.swfobject.js',88);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (89,1,'2201','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/swfupload/plugins/swfupload.queue.js',89);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (90,1,'2201','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/swfupload/plugins/swfupload.speed.js',90);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (91,1,'2201','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','',91);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (92,1,'2201-20110524','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/swfupload/handlers.min.js',92);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (93,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/comment-reply.min.js',93);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (94,1,'2015-05-03','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/json2.min.js',94);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (95,1,'1.6.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/underscore.min.js',95);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (96,1,'1.1.2','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/backbone.min.js',96);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (97,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/wp-util.min.js',97);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (98,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/wp-backbone.min.js',98);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (99,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/revisions.min.js',99);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (100,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/imgareaselect/jquery.imgareaselect.min.js',100);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (101,1,'2.18.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/mediaelement/mediaelement-and-player.min.js',101);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (102,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/mediaelement/wp-mediaelement.js',102);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (103,1,'2.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/mediaelement/froogaloop.min.js',103);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (104,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/mediaelement/wp-playlist.js',104);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (105,1,'1.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/zxcvbn-async.min.js',105);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (106,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/password-strength-meter.min.js',106);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (107,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/user-profile.min.js',107);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (108,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/language-chooser.min.js',108);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (109,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/user-suggest.min.js',109);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (110,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/admin-bar.min.js',110);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (111,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/wplink.min.js',111);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (112,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/wpdialog.min.js',112);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (113,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/word-count.min.js',113);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (114,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/media-upload.min.js',114);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (115,1,'1.8.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/hoverIntent.min.js',115);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (116,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-base.min.js',116);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (117,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-loader.min.js',117);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (118,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-preview.min.js',118);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (119,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-models.js',119);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (120,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-views.js',120);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (121,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/customize-controls.min.js',121);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (122,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/customize-widgets.min.js',122);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (123,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-preview-widgets.min.js',123);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (124,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/customize-nav-menus.min.js',124);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (125,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/customize-preview-nav-menus.min.js',125);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (126,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/accordion.min.js',126);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (127,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/shortcode.min.js',127);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (128,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/media-models.min.js',128);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (129,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/wp-embed.min.js',129);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (130,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/media-views.min.js',130);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (131,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/media-editor.min.js',131);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (132,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/media-audiovideo.min.js',132);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (133,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/mce-view.min.js',133);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (134,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/tags.min.js',134);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (135,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/edit-comments.min.js',135);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (136,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/xfn.min.js',136);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (137,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/postbox.min.js',137);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (138,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/tags-box.min.js',138);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (139,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/post.min.js',139);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (140,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/press-this.min.js',140);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (141,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/editor-expand.min.js',141);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (142,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/link.min.js',142);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (143,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/comment.min.js',143);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (144,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/gallery.min.js',144);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (145,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/widgets.min.js',145);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (146,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/theme.min.js',146);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (147,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/inline-edit-post.min.js',147);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (148,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/inline-edit-tax.min.js',148);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (149,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/plugin-install.min.js',149);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (150,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/updates.min.js',150);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (151,1,'1.2','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/farbtastic.js',151);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (152,1,'1.0.7','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/iris.min.js',152);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (153,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/color-picker.min.js',153);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (154,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/dashboard.min.js',154);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (155,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/wp-list-revisions.min.js',155);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (156,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-includes/js/media-grid.min.js',156);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (157,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/media.min.js',157);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (158,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/image-edit.min.js',158);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (159,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/set-post-thumbnail.min.js',159);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (160,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/nav-menu.min.js',160);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (161,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/custom-header.js',161);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (162,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:19','/wp-admin/js/custom-background.min.js',162);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (163,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/js/media-gallery.min.js',163);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (164,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/js/svg-painter.js',164);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (165,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','1',165);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (166,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/wp-admin.min.css',166);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (167,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/login.min.css',167);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (168,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/install.min.css',168);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (169,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/color-picker.min.css',169);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (170,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/customize-controls.min.css',170);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (171,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/customize-widgets.min.css',171);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (172,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/customize-nav-menus.min.css',172);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (173,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/press-this.min.css',173);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (174,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/ie.min.css',174);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (175,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/buttons.min.css',175);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (176,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/dashicons.min.css',176);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (177,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,300,400,600&subset=latin,latin-ext',177);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (178,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/admin-bar.min.css',178);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (179,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/wp-auth-check.min.css',179);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (180,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/editor.min.css',180);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (181,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/media-views.min.css',181);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (182,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/wp-pointer.min.css',182);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (183,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/customize-preview.min.css',183);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (184,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/wp-embed-template-ie.min.css',184);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (185,1,'0.9.8','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/js/imgareaselect/imgareaselect.css',185);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (186,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/css/jquery-ui-dialog.min.css',186);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (187,1,'2.18.1','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/js/mediaelement/mediaelementplayer.min.css',187);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (188,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/js/mediaelement/wp-mediaelement.css',188);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (189,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/js/thickbox/thickbox.css',189);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (190,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/deprecated-media.min.css',190);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (191,1,'1.3u1','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-admin/css/farbtastic.css',191);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (192,1,'0.9.12','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','/wp-includes/js/jcrop/jquery.Jcrop.min.css',192);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (193,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','',193);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (194,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/ui-custom-theme/jquery-ui-less.custom.css',194);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (195,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/lib/isotope.css',195);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (196,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/lib/bower/animate-css/animate.min.css',196);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (197,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/lib/bower/font-awesome/css/font-awesome.min.css',197);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (198,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/js_composer_backend_editor.css',198);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (199,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/lib/autosuggest/jquery.autoSuggest.css',199);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (200,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/lib/typicons/src/font/typicons.min.css',200);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (201,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/lib/vc-open-iconic/vc_openiconic.css',201);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (202,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/lib/vc-linecons/vc_linecons_icons.css',202);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (203,1,'4.7.4','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/css/lib/vc-entypo/vc_entypo.css',203);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (204,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/lib/bower/vcIconPicker/css/jquery.fonticonpicker.min.css',204);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (205,1,'','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/js_composer/assets/lib/bower/vcIconPicker/themes/grey-theme/jquery.fonticonpicker.vcgrey.min.css',205);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (206,1,'1.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/template-core/tinymce/css/popup.css',206);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (207,1,'1.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/template-core/tinymce/css/simple-line-icons.css',207);
INSERT INTO `wp_cjtoolbox_template_revisions` VALUES (208,1,'1.0','Cached by CJT installer!','release',1,'2016-03-13 19:57:20','http://redesign.desalitech.com/wp-content/plugins/template-core/tinymce/css/flaticon.css',208);
/*!40000 ALTER TABLE `wp_cjtoolbox_template_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cjtoolbox_templates`
--

DROP TABLE IF EXISTS `wp_cjtoolbox_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_cjtoolbox_templates` (
  `name` varchar(80) NOT NULL,
  `queueName` varchar(80) NOT NULL,
  `description` text,
  `keywords` varchar(300) DEFAULT NULL,
  `license` text,
  `type` enum('css','javascript','php','html') NOT NULL,
  `email` varchar(90) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `creationDate` datetime NOT NULL,
  `ownerId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `state` enum('published','draft','trash') NOT NULL DEFAULT 'published',
  `attributes` int(4) NOT NULL DEFAULT '0',
  `guid` varchar(16) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`type`),
  UNIQUE KEY `guid` (`guid`),
  KEY `keywords` (`keywords`),
  KEY `owner` (`ownerId`),
  KEY `author` (`authorId`),
  KEY `type` (`type`),
  KEY `attributes` (`attributes`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cjtoolbox_templates`
--

LOCK TABLES `wp_cjtoolbox_templates` WRITE;
/*!40000 ALTER TABLE `wp_cjtoolbox_templates` DISABLE KEYS */;
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Utils','utils',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,1);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Common','common',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,2);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp a11y','wp-a11y',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,3);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Sack','sack',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,4);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Quicktags','quicktags',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,5);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Colorpicker','colorpicker',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,6);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Editor','editor',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,7);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp fullscreen stub','wp-fullscreen-stub',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,8);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp ajax response','wp-ajax-response',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,9);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp pointer','wp-pointer',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,10);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Autosave','autosave',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,11);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Heartbeat','heartbeat',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,12);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp auth check','wp-auth-check',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,13);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp lists','wp-lists',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,14);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Prototype','prototype',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,15);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous root','scriptaculous-root',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,16);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous builder','scriptaculous-builder',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,17);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous dragdrop','scriptaculous-dragdrop',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,18);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous effects','scriptaculous-effects',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,19);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous slider','scriptaculous-slider',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,20);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous sound','scriptaculous-sound',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,21);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous controls','scriptaculous-controls',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,22);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Scriptaculous','scriptaculous',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,23);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Cropper','cropper',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,24);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery','jquery',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,25);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery core','jquery-core',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,26);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery migrate','jquery-migrate',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,27);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui core','jquery-ui-core',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,28);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects core','jquery-effects-core',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,29);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects blind','jquery-effects-blind',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,30);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects bounce','jquery-effects-bounce',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,31);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects clip','jquery-effects-clip',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,32);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects drop','jquery-effects-drop',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,33);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects explode','jquery-effects-explode',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,34);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects fade','jquery-effects-fade',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,35);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects fold','jquery-effects-fold',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,36);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects highlight','jquery-effects-highlight',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,37);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects puff','jquery-effects-puff',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,38);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects pulsate','jquery-effects-pulsate',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,39);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects scale','jquery-effects-scale',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,40);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects shake','jquery-effects-shake',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,41);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects size','jquery-effects-size',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,42);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects slide','jquery-effects-slide',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,43);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery effects transfer','jquery-effects-transfer',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,44);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui accordion','jquery-ui-accordion',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,45);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui autocomplete','jquery-ui-autocomplete',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,46);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui button','jquery-ui-button',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,47);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui datepicker','jquery-ui-datepicker',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,48);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui dialog','jquery-ui-dialog',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,49);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui draggable','jquery-ui-draggable',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,50);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui droppable','jquery-ui-droppable',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,51);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui menu','jquery-ui-menu',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,52);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui mouse','jquery-ui-mouse',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,53);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui position','jquery-ui-position',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,54);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui progressbar','jquery-ui-progressbar',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,55);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui resizable','jquery-ui-resizable',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,56);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui selectable','jquery-ui-selectable',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,57);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui selectmenu','jquery-ui-selectmenu',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:18',1,1,'published',1,NULL,58);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui slider','jquery-ui-slider',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,59);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui sortable','jquery-ui-sortable',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,60);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui spinner','jquery-ui-spinner',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,61);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui tabs','jquery-ui-tabs',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,62);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui tooltip','jquery-ui-tooltip',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,63);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery ui widget','jquery-ui-widget',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,64);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery form','jquery-form',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,65);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery color','jquery-color',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,66);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Suggest','suggest',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,67);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Schedule','schedule',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,68);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery query','jquery-query',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,69);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery serialize object','jquery-serialize-object',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,70);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery hotkeys','jquery-hotkeys',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,71);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery table hotkeys','jquery-table-hotkeys',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,72);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery touch punch','jquery-touch-punch',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,73);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Masonry','masonry',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,74);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jquery masonry','jquery-masonry',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,75);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Thickbox','thickbox',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,76);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jcrop','jcrop',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,77);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfobject','swfobject',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,78);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload','plupload',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,79);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload all','plupload-all',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,80);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload html5','plupload-html5',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,81);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload flash','plupload-flash',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,82);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload silverlight','plupload-silverlight',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,83);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload html4','plupload-html4',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,84);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plupload handlers','plupload-handlers',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,85);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp plupload','wp-plupload',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,86);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfupload','swfupload',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,87);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfupload swfobject','swfupload-swfobject',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,88);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfupload queue','swfupload-queue',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,89);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfupload speed','swfupload-speed',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,90);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfupload all','swfupload-all',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,91);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Swfupload handlers','swfupload-handlers',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,92);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Comment reply','comment-reply',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,93);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Json2','json2',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,94);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Underscore','underscore',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,95);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Backbone','backbone',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,96);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp util','wp-util',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,97);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp backbone','wp-backbone',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,98);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Revisions','revisions',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,99);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Imgareaselect','imgareaselect',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,100);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Mediaelement','mediaelement',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,101);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp mediaelement','wp-mediaelement',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,102);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Froogaloop','froogaloop',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,103);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp playlist','wp-playlist',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,104);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Zxcvbn async','zxcvbn-async',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,105);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Password strength meter','password-strength-meter',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,106);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('User profile','user-profile',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,107);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Language chooser','language-chooser',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,108);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('User suggest','user-suggest',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,109);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Admin bar','admin-bar',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,110);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wplink','wplink',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,111);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wpdialogs','wpdialogs',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,112);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Word count','word-count',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,113);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media upload','media-upload',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,114);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('HoverIntent','hoverIntent',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,115);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize base','customize-base',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,116);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize loader','customize-loader',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,117);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize preview','customize-preview',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,118);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize models','customize-models',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,119);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize views','customize-views',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,120);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize controls','customize-controls',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,121);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize widgets','customize-widgets',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,122);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize preview widgets','customize-preview-widgets',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,123);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize nav menus','customize-nav-menus',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,124);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize preview nav menus','customize-preview-nav-menus',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,125);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Accordion','accordion',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,126);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Shortcode','shortcode',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,127);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media models','media-models',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,128);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp embed','wp-embed',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,129);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media views','media-views',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,130);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media editor','media-editor',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,131);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media audiovideo','media-audiovideo',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,132);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Mce view','mce-view',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,133);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Admin tags','admin-tags',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,134);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Admin comments','admin-comments',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,135);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Xfn','xfn',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,136);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Postbox','postbox',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,137);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Tags box','tags-box',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,138);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Post','post',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,139);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Press this','press-this',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,140);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Editor expand','editor-expand',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,141);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Link','link',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,142);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Comment','comment',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,143);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Admin gallery','admin-gallery',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,144);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Admin widgets','admin-widgets',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,145);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Theme','theme',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,146);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Inline edit post','inline-edit-post',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,147);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Inline edit tax','inline-edit-tax',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,148);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Plugin install','plugin-install',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,149);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Updates','updates',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,150);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Farbtastic','farbtastic',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,151);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Iris','iris',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,152);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp color picker','wp-color-picker',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,153);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Dashboard','dashboard',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,154);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('List revisions','list-revisions',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,155);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media grid','media-grid',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,156);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media','media',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,157);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Image edit','image-edit',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,158);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Set post thumbnail','set-post-thumbnail',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,159);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Nav menu','nav-menu',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,160);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Custom header','custom-header',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,161);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Custom background','custom-background',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:19',1,1,'published',1,NULL,162);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media gallery','media-gallery',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,163);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Svg painter','svg-painter',NULL,NULL,NULL,'javascript',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,164);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Colors','colors',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,165);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp admin','wp-admin',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,166);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Login','login',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,167);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Install','install',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,168);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp color picker','wp-color-picker',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,169);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize controls','customize-controls',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,170);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize widgets','customize-widgets',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,171);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize nav menus','customize-nav-menus',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,172);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Press this','press-this',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,173);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Ie','ie',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,174);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Buttons','buttons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,175);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Dashicons','dashicons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,176);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Open sans','open-sans',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,177);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Admin bar','admin-bar',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,178);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp auth check','wp-auth-check',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,179);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Editor buttons','editor-buttons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,180);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media views','media-views',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,181);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp pointer','wp-pointer',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,182);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Customize preview','customize-preview',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,183);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp embed template ie','wp-embed-template-ie',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,184);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Imgareaselect','imgareaselect',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,185);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp jquery ui dialog','wp-jquery-ui-dialog',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,186);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Mediaelement','mediaelement',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,187);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wp mediaelement','wp-mediaelement',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,188);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Thickbox','thickbox',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,189);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Media','media',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,190);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Farbtastic','farbtastic',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,191);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Jcrop','jcrop',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,192);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Colors fresh','colors-fresh',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,193);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Ui custom theme','ui-custom-theme',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,194);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Isotope css','isotope-css',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,195);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Animate css','animate-css',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,196);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Font awesome','font-awesome',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,197);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Js composer','js_composer',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,198);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Wpb jscomposer autosuggest','wpb_jscomposer_autosuggest',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,199);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Vc typicons','vc_typicons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,200);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Vc openiconic','vc_openiconic',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,201);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Vc linecons','vc_linecons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,202);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Vc entypo','vc_entypo',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,203);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Vc icon picker main css','vc-icon-picker-main-css',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,204);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Vc icon picker main css theme','vc-icon-picker-main-css-theme',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,205);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Shortcodes popup','shortcodes-popup',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,206);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Simple line icons','simple-line-icons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,207);
INSERT INTO `wp_cjtoolbox_templates` VALUES ('Flat icons','flat-icons',NULL,NULL,NULL,'css',NULL,NULL,'2016-03-13 19:57:20',1,1,'published',1,NULL,208);
/*!40000 ALTER TABLE `wp_cjtoolbox_templates` ENABLE KEYS */;
UNLOCK TABLES;
