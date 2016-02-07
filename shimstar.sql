/*
SQLyog Community v12.15 (64 bit)
MySQL - 5.6.24-log : Database - shimstar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shimstar` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shimstar`;

/*Table structure for table `star001_user` */

DROP TABLE IF EXISTS `star001_user`;

CREATE TABLE `star001_user` (
  `star001_id` int(11) NOT NULL AUTO_INCREMENT,
  `star001_name` varchar(45) DEFAULT NULL,
  `star001_passwd` varchar(45) DEFAULT NULL,
  `star001_lastlogin` datetime DEFAULT NULL,
  `star001_created` datetime DEFAULT NULL,
  PRIMARY KEY (`star001_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `star001_user` */

insert  into `star001_user`(`star001_id`,`star001_name`,`star001_passwd`,`star001_lastlogin`,`star001_created`) values (1,'shimrod','shimrod','2011-09-26 15:05:15','2011-09-26 15:05:17');
insert  into `star001_user`(`star001_id`,`star001_name`,`star001_passwd`,`star001_lastlogin`,`star001_created`) values (3,'test','test',NULL,'2011-10-14 13:18:36');
insert  into `star001_user`(`star001_id`,`star001_name`,`star001_passwd`,`star001_lastlogin`,`star001_created`) values (8,'s','s',NULL,'2013-08-16 13:47:52');
insert  into `star001_user`(`star001_id`,`star001_name`,`star001_passwd`,`star001_lastlogin`,`star001_created`) values (9,'w','w',NULL,'2015-06-17 12:59:32');

/*Table structure for table `star002_character` */

DROP TABLE IF EXISTS `star002_character`;

CREATE TABLE `star002_character` (
  `star002_id` int(11) NOT NULL AUTO_INCREMENT,
  `star002_iduser_star001` int(11) DEFAULT NULL,
  `star002_name` varchar(80) DEFAULT NULL,
  `star002_face` varchar(45) DEFAULT NULL,
  `star002_coin` int(11) DEFAULT NULL,
  `star002_zone_star011zone` int(11) NOT NULL,
  `star002_laststation_star022station` int(11) NOT NULL,
  `star002_faction_star059` int(11) DEFAULT '1',
  PRIMARY KEY (`star002_id`),
  KEY `charuser` (`star002_iduser_star001`),
  CONSTRAINT `charuser` FOREIGN KEY (`star002_iduser_star001`) REFERENCES `star001_user` (`star001_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `star002_character` */

insert  into `star002_character`(`star002_id`,`star002_iduser_star001`,`star002_name`,`star002_face`,`star002_coin`,`star002_zone_star011zone`,`star002_laststation_star022station`,`star002_faction_star059`) values (15,8,'ty','face1',0,3,3,1);
insert  into `star002_character`(`star002_id`,`star002_iduser_star001`,`star002_name`,`star002_face`,`star002_coin`,`star002_zone_star011zone`,`star002_laststation_star022station`,`star002_faction_star059`) values (17,3,'nn','face1',49000,1,3,1);
insert  into `star002_character`(`star002_id`,`star002_iduser_star001`,`star002_name`,`star002_face`,`star002_coin`,`star002_zone_star011zone`,`star002_laststation_star022station`,`star002_faction_star059`) values (18,8,'www','face1',0,1,3,1);
insert  into `star002_character`(`star002_id`,`star002_iduser_star001`,`star002_name`,`star002_face`,`star002_coin`,`star002_zone_star011zone`,`star002_laststation_star022station`,`star002_faction_star059`) values (19,9,'w','face1',0,3,1,1);
insert  into `star002_character`(`star002_id`,`star002_iduser_star001`,`star002_name`,`star002_face`,`star002_coin`,`star002_zone_star011zone`,`star002_laststation_star022station`,`star002_faction_star059`) values (20,1,'tet','face1',0,3,1,1);

/*Table structure for table `star003_typeitem` */

DROP TABLE IF EXISTS `star003_typeitem`;

CREATE TABLE `star003_typeitem` (
  `star003_id` int(11) NOT NULL AUTO_INCREMENT,
  `star003_label` varchar(45) DEFAULT NULL,
  `star003_table` varchar(45) DEFAULT NULL,
  `star003_table_instance` varchar(45) NOT NULL,
  PRIMARY KEY (`star003_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `star003_typeitem` */

insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (1,'ENGINE','star017_engine','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (2,'WEAPON','star018_weapon','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (3,'ENERGY','star016_reactor','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (4,'STOCKBAY','star020_stockbay','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (5,'ELECTRO',NULL,'');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (6,'RADAR','star019_radar','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (7,'SHIP','star005_ship_template','star007_ship');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (8,'JUNK','star015_junk','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (9,'GOODS',NULL,'');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (10,'MINING','star055_mining_item','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (11,'MINERAL','star054_mineral','');
insert  into `star003_typeitem`(`star003_id`,`star003_label`,`star003_table`,`star003_table_instance`) values (12,'SHIELD','star067_shield','');

/*Table structure for table `star004_item_template` */

DROP TABLE IF EXISTS `star004_item_template`;

CREATE TABLE `star004_item_template` (
  `star004_id` int(11) NOT NULL AUTO_INCREMENT,
  `star004_name` varchar(45) DEFAULT NULL,
  `star004_type_star003` int(11) DEFAULT NULL,
  `star004_energy` int(11) DEFAULT '0',
  `star004_img` varchar(45) DEFAULT NULL,
  `star004_cost` int(11) DEFAULT '0',
  `star004_sell` int(11) DEFAULT '0',
  `star004_space` int(11) DEFAULT '0',
  `star004_mass` float NOT NULL DEFAULT '0',
  `star004_specific_starxxx` int(11) NOT NULL DEFAULT '0',
  `star004_stackable` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`star004_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `star004_item_template` */

insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (1,'ship1',7,0,'ship1',0,0,0,0,1,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (2,'basic',1,10,'motor1',500,250,10,0,1,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (3,'ball',2,10,'weapon1',500,250,10,0,1,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (4,'junk1',8,0,'junk',0,0,0,0,0,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (5,'construct1',9,0,'construct',0,0,100,100,0,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (6,'drone',7,0,'ship1',0,0,0,0,2,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (7,'pirate',7,0,'ship1',0,0,0,0,3,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (8,'mining1',10,10,'minage1',600,200,100,100,1,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (9,'fer',11,0,'minerai1',0,0,0,0.1,1,1);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (13,'azea',7,0,'ship1',0,0,0,0,5,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (15,'ball2',2,10,'weapon1',600,250,10,0,2,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (16,'basic2',1,100,'motor1',700,250,10,0,2,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (17,'ball3',2,10,'weapon1',700,250,10,0,3,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (18,'ball4',2,10,'weapon1',800,250,10,0,4,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (19,'shield1',12,20,'shield1',500,250,10,0,1,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (20,'energy1',3,0,'energy1',500,250,10,0,1,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (21,'shield2',12,40,'shield1',800,250,10,0,2,0);
insert  into `star004_item_template`(`star004_id`,`star004_name`,`star004_type_star003`,`star004_energy`,`star004_img`,`star004_cost`,`star004_sell`,`star004_space`,`star004_mass`,`star004_specific_starxxx`,`star004_stackable`) values (22,'shield3',12,80,'shield1',1500,500,10,0,3,0);

/*Table structure for table `star005_ship_template` */

DROP TABLE IF EXISTS `star005_ship_template`;

CREATE TABLE `star005_ship_template` (
  `star005_id` int(11) NOT NULL AUTO_INCREMENT,
  `star005_egg` varchar(45) DEFAULT NULL,
  `star005_hull` int(11) DEFAULT NULL,
  `star005_mass` float DEFAULT NULL,
  `star005_torque` int(11) DEFAULT NULL,
  `star005_friction_angular` float DEFAULT NULL,
  `star005_friction_velocity` float DEFAULT NULL,
  PRIMARY KEY (`star005_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `star005_ship_template` */

insert  into `star005_ship_template`(`star005_id`,`star005_egg`,`star005_hull`,`star005_mass`,`star005_torque`,`star005_friction_angular`,`star005_friction_velocity`) values (1,'models/fighter.bam',100,1,2000,0.5,0.98);
insert  into `star005_ship_template`(`star005_id`,`star005_egg`,`star005_hull`,`star005_mass`,`star005_torque`,`star005_friction_angular`,`star005_friction_velocity`) values (2,'models/spiderdrone.bam',100,1,200,0.72,0.98);
insert  into `star005_ship_template`(`star005_id`,`star005_egg`,`star005_hull`,`star005_mass`,`star005_torque`,`star005_friction_angular`,`star005_friction_velocity`) values (3,'models/fighter.bam',100,1,200,0.72,0.98);
insert  into `star005_ship_template`(`star005_id`,`star005_egg`,`star005_hull`,`star005_mass`,`star005_torque`,`star005_friction_angular`,`star005_friction_velocity`) values (5,'sphere.bam',1,1,1,1,1);
insert  into `star005_ship_template`(`star005_id`,`star005_egg`,`star005_hull`,`star005_mass`,`star005_torque`,`star005_friction_angular`,`star005_friction_velocity`) values (6,'the-cellestial-executioner.bam',10000,10000,100,0.8,0.98);

/*Table structure for table `star006_item` */

DROP TABLE IF EXISTS `star006_item`;

CREATE TABLE `star006_item` (
  `star006_id` int(11) NOT NULL AUTO_INCREMENT,
  `star006_template_star004` int(11) DEFAULT NULL,
  `star006_container_starnnn` int(11) DEFAULT NULL,
  `star006_containertype` varchar(45) DEFAULT NULL,
  `star006_owner_star001` int(11) NOT NULL DEFAULT '0',
  `star006_location` int(11) NOT NULL DEFAULT '0',
  `star006_id_star036` int(11) NOT NULL DEFAULT '0',
  `star006_nb` int(11) NOT NULL DEFAULT '0',
  `star006_enabled` int(11) DEFAULT '1',
  PRIMARY KEY (`star006_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3450 DEFAULT CHARSET=latin1;

/*Data for the table `star006_item` */

insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (2,3,2,'star009_slot',0,3,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3,2,3,'star009_slot',0,3,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (4,20,4,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1830,2,NULL,'star007_ship',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1833,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1834,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1835,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1836,3,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1837,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1838,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1839,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1840,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1841,2,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1843,3,3397,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1845,3,3401,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1855,2,699,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1857,3,3400,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1859,2,699,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (1861,3,3401,'star009_slot',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3274,1,19,'star002_character',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3275,3,6126,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3276,2,6127,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3280,1,15,'star002_character',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3281,3,6135,'star009_slot',0,0,0,1,0);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3282,2,6136,'star009_slot',0,0,0,1,0);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3289,1,20,'star002_character',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3290,3,6150,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3291,2,6151,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3310,16,37,'star015_junk',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3323,18,37,'star015_junk',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3336,18,1094,'star007_ship',17,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3346,20,37,'star015_junk',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3349,3,1093,'star007_ship',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3350,2,1093,'star007_ship',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3393,9,3,'star022_station',17,0,0,24,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3408,3,1094,'star007_ship',17,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3409,2,6294,'star009_slot',17,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3411,15,6290,'star009_slot',17,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3426,3,50,'star015_junk',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3427,2,50,'star015_junk',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3428,20,50,'star015_junk',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3435,2,51,'star015_junk',17,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3436,20,51,'star015_junk',17,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3438,3,1093,'star007_ship',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3439,2,1093,'star007_ship',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3440,20,1093,'star007_ship',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3441,3,1093,'star007_ship',18,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3442,1,18,'star002_character',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3443,3,6285,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3444,2,6286,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3445,20,6287,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3446,1,17,'star002_character',0,0,0,0,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3447,3,6291,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3448,2,6292,'star009_slot',0,0,0,1,1);
insert  into `star006_item`(`star006_id`,`star006_template_star004`,`star006_container_starnnn`,`star006_containertype`,`star006_owner_star001`,`star006_location`,`star006_id_star036`,`star006_nb`,`star006_enabled`) values (3449,20,6293,'star009_slot',0,0,0,1,1);

/*Table structure for table `star007_ship` */

DROP TABLE IF EXISTS `star007_ship`;

CREATE TABLE `star007_ship` (
  `star007_id` int(11) NOT NULL AUTO_INCREMENT,
  `star007_item_star006` int(11) NOT NULL,
  `star007_fitted` int(11) NOT NULL DEFAULT '0',
  `star007_template_star005shiptemplate` int(11) NOT NULL,
  `star007_hull` int(11) NOT NULL DEFAULT '0',
  `star007_posx` float NOT NULL DEFAULT '0',
  `star007_posy` float NOT NULL DEFAULT '0',
  `star007_posz` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`star007_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=latin1;

/*Data for the table `star007_ship` */

insert  into `star007_ship`(`star007_id`,`star007_item_star006`,`star007_fitted`,`star007_template_star005shiptemplate`,`star007_hull`,`star007_posx`,`star007_posy`,`star007_posz`) values (1065,3274,1,1,100,0,0,0);
insert  into `star007_ship`(`star007_id`,`star007_item_star006`,`star007_fitted`,`star007_template_star005shiptemplate`,`star007_hull`,`star007_posx`,`star007_posy`,`star007_posz`) values (1067,3280,1,1,100,580.528,1576.49,393.565);
insert  into `star007_ship`(`star007_id`,`star007_item_star006`,`star007_fitted`,`star007_template_star005shiptemplate`,`star007_hull`,`star007_posx`,`star007_posy`,`star007_posz`) values (1070,3289,1,1,100,0,0,0);
insert  into `star007_ship`(`star007_id`,`star007_item_star006`,`star007_fitted`,`star007_template_star005shiptemplate`,`star007_hull`,`star007_posx`,`star007_posy`,`star007_posz`) values (1093,3442,1,1,100,-144.989,86.766,-98.7434);
insert  into `star007_ship`(`star007_id`,`star007_item_star006`,`star007_fitted`,`star007_template_star005shiptemplate`,`star007_hull`,`star007_posx`,`star007_posy`,`star007_posz`) values (1094,3446,1,1,100,414.554,1315.25,168.577);

/*Table structure for table `star008_location_slot` */

DROP TABLE IF EXISTS `star008_location_slot`;

CREATE TABLE `star008_location_slot` (
  `star008_id` int(11) NOT NULL AUTO_INCREMENT,
  `star008_label` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`star008_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `star008_location_slot` */

insert  into `star008_location_slot`(`star008_id`,`star008_label`) values (1,'FRONT');
insert  into `star008_location_slot`(`star008_id`,`star008_label`) values (2,'REAR');
insert  into `star008_location_slot`(`star008_id`,`star008_label`) values (3,'LEFT');
insert  into `star008_location_slot`(`star008_id`,`star008_label`) values (4,'RIGHT');
insert  into `star008_location_slot`(`star008_id`,`star008_label`) values (5,'MIDDLE');

/*Table structure for table `star009_slot` */

DROP TABLE IF EXISTS `star009_slot`;

CREATE TABLE `star009_slot` (
  `star009_id` int(11) NOT NULL AUTO_INCREMENT,
  `star009_location_star008` int(11) DEFAULT NULL,
  `star009_numero` int(11) DEFAULT NULL,
  `star009_ship_star007` int(11) DEFAULT NULL,
  `star009_item_star006` int(11) DEFAULT '0',
  `star009_ship_star005` int(11) DEFAULT '0',
  `star009_x` int(11) DEFAULT '0',
  `star009_y` int(11) DEFAULT '0',
  `star009_z` int(11) DEFAULT '0',
  PRIMARY KEY (`star009_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6296 DEFAULT CHARSET=latin1;

/*Data for the table `star009_slot` */

insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (1,1,1,1,0,1,20,41,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (2,1,2,1,2,1,-20,41,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3,2,1,1,3,1,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (4,5,1,1,4,1,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (5,5,2,1,0,1,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6,5,3,1,0,1,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (699,1,1,0,1860,3,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3272,1,1,1,2,2,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3273,2,1,1,3,2,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3396,0,0,NULL,0,5,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3397,0,0,NULL,1844,5,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3398,0,0,NULL,1830,5,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3400,0,0,NULL,1859,3,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3401,0,0,NULL,1861,3,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3578,1,1,0,2,6,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (3579,1,2,0,3,6,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6125,1,1,1065,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6126,1,2,1065,3275,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6127,2,1,1065,3276,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6128,5,1,1065,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6129,5,2,1065,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6130,5,3,1065,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6134,1,1,1067,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6135,1,2,1067,3281,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6136,2,1,1067,3282,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6137,5,1,1067,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6138,5,2,1067,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6139,5,3,1067,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6149,1,1,1070,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6150,1,2,1070,3290,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6151,2,1,1070,3291,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6152,5,1,1070,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6153,5,2,1070,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6154,5,3,1070,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6284,1,1,1093,0,0,20,41,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6285,1,2,1093,3443,0,-20,41,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6286,2,1,1093,3444,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6287,5,1,1093,3445,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6288,5,2,1093,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6289,5,3,1093,0,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6290,1,1,1094,3411,0,20,41,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6291,1,2,1094,3447,0,-20,41,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6292,2,1,1094,3448,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6293,5,1,1094,3449,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6294,5,2,1094,3409,0,0,0,0);
insert  into `star009_slot`(`star009_id`,`star009_location_star008`,`star009_numero`,`star009_ship_star007`,`star009_item_star006`,`star009_ship_star005`,`star009_x`,`star009_y`,`star009_z`) values (6295,5,3,1094,0,0,0,0,0);

/*Table structure for table `star010_world` */

DROP TABLE IF EXISTS `star010_world`;

CREATE TABLE `star010_world` (
  `star010_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`star010_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star010_world` */

/*Table structure for table `star011_zone` */

DROP TABLE IF EXISTS `star011_zone`;

CREATE TABLE `star011_zone` (
  `star011_id` int(11) NOT NULL AUTO_INCREMENT,
  `star011_name` varchar(45) DEFAULT NULL,
  `star011_typezone_star012` int(11) DEFAULT NULL,
  `star011_egg` varchar(80) NOT NULL,
  `star011_scale` float NOT NULL DEFAULT '1',
  `star011_music` varchar(255) NOT NULL,
  PRIMARY KEY (`star011_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `star011_zone` */

insert  into `star011_zone`(`star011_id`,`star011_name`,`star011_typezone_star012`,`star011_egg`,`star011_scale`,`star011_music`) values (1,'zone1',1,'models/skybox/earth_2.bam',600,'sounds/OutThere_0.ogg');
insert  into `star011_zone`(`star011_id`,`star011_name`,`star011_typezone_star012`,`star011_egg`,`star011_scale`,`star011_music`) values (2,'zone2',1,'models/skybox/skybb.bam',600,'sounds/OutThere_0.ogg');
insert  into `star011_zone`(`star011_id`,`star011_name`,`star011_typezone_star012`,`star011_egg`,`star011_scale`,`star011_music`) values (3,'Shimrod hut',2,'models/Substation/model_1.bam',1,'sounds/anticipation_0.ogg');
insert  into `star011_zone`(`star011_id`,`star011_name`,`star011_typezone_star012`,`star011_egg`,`star011_scale`,`star011_music`) values (4,'zone3',1,'models/skybox/skybb.bam',1000,'sounds/OutThere_0.ogg');
insert  into `star011_zone`(`star011_id`,`star011_name`,`star011_typezone_star012`,`star011_egg`,`star011_scale`,`star011_music`) values (5,'Iolo hut',2,'models/Substation/model_1.bam',1,'sounds/anticipation_0.ogg');

/*Table structure for table `star012_typezone` */

DROP TABLE IF EXISTS `star012_typezone`;

CREATE TABLE `star012_typezone` (
  `star012_id` int(11) NOT NULL AUTO_INCREMENT,
  `star012_label` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`star012_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star012_typezone` */

/*Table structure for table `star013_asteroid_template` */

DROP TABLE IF EXISTS `star013_asteroid_template`;

CREATE TABLE `star013_asteroid_template` (
  `star013_id` int(11) NOT NULL AUTO_INCREMENT,
  `star013_name` varchar(45) DEFAULT NULL,
  `star013_egg` varchar(45) DEFAULT NULL,
  `star013_mass` int(11) DEFAULT NULL,
  `star013_text` varchar(255) DEFAULT NULL,
  `star013_egg_midle` varchar(80) DEFAULT NULL,
  `star013_egg_far` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`star013_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `star013_asteroid_template` */

insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (1,'template1','models/asteroid2.bam',1000,'None','models/asteroid2.bam','models/asteroid2.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (2,'template2','models/asteroid1.bam',1000,'None','models/asteroid1.bam','models/asteroid1.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (3,'splargh1','models/Splargh.bam',1000,'None','models/Splargh.bam','models/Splargh.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (4,'TehShoe','models/TehShoe.bam',1000,'None','models/TehShoemiddle.bam','models/TehShoefar.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (5,'tehShoe103','models/TehShoe_103.bam',1000,' ','models/TehShoe_103.bam','models/TehShoe_103.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (6,'splargh115','models/Splargh_115.bam',1000,' ','models/Splargh_115.bam','models/Splargh_115.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (7,'AssJacket','models/AssJacket.bam',1000,NULL,'models/AssJacketmiddle.bam','models/AssJacketfar.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (8,'NotASphere','models/NotASphere.bam',1000,NULL,'models/NotASpheremiddle.bam','models/NotASpherefar.bam');
insert  into `star013_asteroid_template`(`star013_id`,`star013_name`,`star013_egg`,`star013_mass`,`star013_text`,`star013_egg_midle`,`star013_egg_far`) values (9,'RustyGremlin','models/RustyGremlin.bam',1000,NULL,'models/RustyGremlinmiddle.bam','models/RustyGremlinfar.bam');

/*Table structure for table `star014_asteroid` */

DROP TABLE IF EXISTS `star014_asteroid`;

CREATE TABLE `star014_asteroid` (
  `star014_id` int(11) NOT NULL AUTO_INCREMENT,
  `star014_template_star013` int(11) DEFAULT NULL,
  `star014_zone_star011` int(11) DEFAULT NULL,
  `star014_posx` float DEFAULT '0',
  `star014_posy` float DEFAULT '0',
  `star014_posz` float DEFAULT '0',
  `star014_hprh` float DEFAULT '0',
  `star014_hprp` float DEFAULT '0',
  `star014_hprr` float DEFAULT '0',
  `star014_scale` float DEFAULT '1',
  PRIMARY KEY (`star014_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3775 DEFAULT CHARSET=latin1;

/*Data for the table `star014_asteroid` */

insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1,6,1,150,150,30,90,30,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (2,6,1,80,80,-130,45,-10,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3,6,1,15,150,300,30,-20,-60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (5,6,1,150,-150,-30,45,-63,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (6,6,1,150,15,-130,10,-85,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (7,6,1,-400,85,-100,80,36,-30,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (8,6,1,0,250,-130,60,-45,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (9,5,1,200,200,130,70,-70,-74,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (10,5,1,400,200,-500,58,63,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (11,5,1,350,1000,-700,30,55,46,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (12,5,1,50,-400,-80,10,-30,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (13,5,1,350,120,620,54,0,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (14,5,1,40,-250,80,75,0,52,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (15,5,1,350,150,320,33,0,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (16,5,1,500,800,20,11,0,40,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (17,5,1,600,150,300,75,0,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (18,5,1,600,350,190,0,10,30,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (19,5,1,250,250,400,4,60,21,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (20,5,1,350,150,-100,0,25,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (21,6,1,500,500,500,90,30,120,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (22,5,1,-300,-100,-500,190,220,30,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (23,5,1,300,-100,200,180,90,20,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (24,6,1,-200,-100,300,90,0,90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (25,5,1,-800,100,-400,90,0,170,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (26,6,1,-200,300,300,0,0,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (27,6,1,450,3500,150,0,0,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (28,6,1,600,3000,300,60,45,90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (29,6,1,100,2400,750,45,10,45,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (621,2,2,-636,1916,-886,28,-86,-28,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (622,2,2,-505,1815,-405,75,-1,-59,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (623,4,2,-342,1576,-549,-72,-86,-48,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (624,4,2,-746,1838,-550,-51,37,27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (625,1,2,-496,1798,-338,-52,-2,47,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (626,2,2,-703,1645,-476,-10,-32,19,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (627,3,2,-630,1482,-493,-29,58,34,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (628,4,2,-665,1800,-509,-64,-46,-45,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (629,2,2,-750,1395,-522,-58,-36,-68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (630,1,2,-266,1735,-736,43,6,54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (631,3,2,-492,1399,-343,-85,81,-19,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (632,4,2,-289,1572,-472,31,24,-26,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (633,3,2,-350,1972,-715,-20,64,6,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (634,1,2,-303,2087,-344,-53,72,71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (635,2,2,-670,2010,-813,43,-51,-48,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (636,3,2,-271,1866,-583,16,84,-74,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (637,1,2,-451,1680,-883,-55,79,40,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (638,1,2,-360,1375,-505,-6,-17,-3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (639,3,2,-230,1734,-427,-56,11,55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (640,1,2,-336,1433,-378,3,-74,34,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (641,2,2,-637,1410,-543,-34,50,38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (642,2,2,-1470,1349,-782,-1,74,-52,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (643,4,2,-1410,1284,-881,71,60,-75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (644,3,2,-1599,1271,-703,-31,-44,-30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (645,4,2,-1778,1262,-536,65,-19,-2,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (646,4,2,-1548,1630,-403,-40,-41,-23,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (647,3,2,-1805,1774,-456,-20,-22,-49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (648,2,2,-1339,1306,-441,18,-35,58,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (649,1,2,-1367,1453,-370,10,73,70,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (650,2,2,-1709,1850,-369,10,-10,3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (651,2,2,-1660,1768,-444,32,24,-78,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (652,4,2,-1268,1902,-490,52,34,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (653,4,2,-1357,1333,-729,-79,-64,-90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (654,1,2,-1309,1777,-888,-73,-74,2,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (655,1,2,527,1536,1450,-60,-70,-26,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (656,4,2,2167,-373,1248,58,6,87,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (657,1,2,1897,-486,1591,29,-7,-36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (658,2,2,1773,-99,1063,39,-48,30,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (659,2,2,589,-2053,-1379,55,-48,-36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (660,2,2,872,-2312,-1376,42,-16,-67,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (661,2,2,534,-1670,-1557,33,33,14,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (662,4,2,878,-2106,-1475,60,-83,-37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (663,4,2,708,-1885,-57,-24,28,66,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (664,3,2,607,-1719,-184,1,38,-78,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (665,2,2,468,-1820,-402,-85,-76,81,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (666,3,2,563,-1275,-173,-59,15,-15,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (667,4,2,643,-1669,-550,-17,37,31,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (668,3,2,672,-1441,-572,-15,-30,36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (669,1,2,642,-1967,-621,12,-14,-71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (670,3,2,947,-1514,-93,43,8,-58,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (671,1,2,506,-1656,-341,-8,28,-21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (672,3,2,756,-1773,-589,-61,61,57,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (673,2,2,472,-1461,-498,58,-54,-2,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (674,2,2,797,-1714,-624,-42,-90,39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (675,3,2,831,-1942,-564,60,-3,-74,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (676,3,2,574,-1944,-460,38,-41,24,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (677,4,2,973,-1596,-607,-28,79,-55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (678,1,2,903,-1612,-520,15,-31,83,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (679,3,2,714,-1486,-161,67,37,69,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (680,4,2,-1172,1575,-918,-61,-90,-4,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (681,3,2,-1122,862,-860,-57,-35,-46,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (682,1,2,-1154,1473,-776,-32,27,-39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (683,4,2,-1214,1222,-959,56,-76,70,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (684,1,2,-1253,1140,-718,-42,-30,52,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (685,2,2,-1532,1164,-943,-87,10,80,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (686,2,2,-1149,981,-576,58,-67,42,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (687,4,2,-1119,810,-642,-20,27,42,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (688,4,2,-1287,1068,-858,58,72,-72,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (689,3,2,-1515,1062,-431,29,48,73,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (690,4,2,-1388,864,-558,69,-34,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (691,4,2,-1688,1088,-773,12,-13,56,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (692,3,2,-1701,1312,-978,40,89,27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (693,2,2,-1554,1217,-400,8,-58,87,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (694,4,2,-1508,1251,-906,29,-25,39,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (695,3,2,-1191,1316,-609,44,73,6,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (696,4,2,-1120,929,-788,-33,36,-49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (697,3,2,-1612,841,-397,-20,-22,-89,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (698,2,2,-1303,1180,-782,-34,24,-25,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (699,3,2,-1237,1513,-630,62,-13,-79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (700,2,2,-1413,1353,-644,-87,-43,-90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (701,1,2,-1179,856,-970,28,73,-31,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (702,1,2,-1186,1079,-903,-31,66,-49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (703,1,2,-1343,1390,-561,-57,-16,54,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (704,2,2,-1559,1230,-621,-35,23,-79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (705,1,2,-1166,1273,-552,-19,89,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (706,3,2,-1677,1274,-508,-80,68,36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (707,2,2,1242,63,1649,-83,-76,39,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (708,2,2,1226,362,1496,80,-79,-8,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (709,4,2,1558,-265,1976,-1,9,-25,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (710,2,2,1285,-222,1508,-74,60,18,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (711,2,2,1687,465,1933,54,38,-33,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (712,3,2,1791,-17,1596,57,-42,-34,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (713,1,2,1375,-277,1878,55,24,13,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (714,3,2,1680,-249,1800,48,-76,65,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (715,2,2,1371,175,1570,79,-59,-67,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (716,4,2,1701,-31,1501,-30,-57,19,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (717,3,2,1718,128,1536,-21,-23,-9,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (718,1,2,1710,-11,1660,78,38,-62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (719,4,2,1534,137,1583,30,-68,35,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (720,2,2,1786,-255,1986,23,83,44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (721,2,2,1261,-128,2035,10,-47,-82,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (722,1,2,1230,-88,1677,60,51,-44,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (723,2,2,1650,-163,1920,29,56,39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (724,3,2,1698,-75,1929,50,11,44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (725,1,2,1369,-186,1805,-15,-54,29,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (726,1,2,1328,249,1540,20,-36,63,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (727,4,2,1772,56,2012,-70,86,-43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (728,1,2,1281,209,1888,79,17,20,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (729,3,2,1755,-244,1880,-51,54,-18,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (730,3,2,1356,-214,1804,14,66,22,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (731,4,2,1616,416,1598,15,-12,76,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (732,3,2,1407,210,1516,-29,87,12,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (733,3,2,1574,372,1803,-54,-51,51,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (734,2,2,1671,1125,-301,-86,-41,13,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (735,4,2,1646,1044,-707,56,-4,-42,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (736,1,2,1888,1436,-670,-2,18,-78,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (737,2,2,2021,1063,-484,-64,32,-65,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (738,2,2,1966,1351,-737,64,9,-10,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (739,4,2,1170,224,83,-57,-71,75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (740,3,2,1270,-181,253,2,-59,-51,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (741,3,2,1241,-431,27,-78,-29,-7,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (742,4,2,1526,-225,120,37,-86,-12,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (743,4,2,1232,-228,468,19,77,-47,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (744,2,2,1477,-391,227,-50,60,-64,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (745,2,2,1570,-114,508,-2,-21,43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (746,1,2,1355,42,565,-43,38,74,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (747,1,2,1415,138,326,90,-33,-77,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (748,4,2,1655,-462,259,-40,49,59,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (749,4,2,1136,184,384,24,-54,50,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (750,4,2,1555,-483,559,-69,24,-62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (751,1,2,1191,-415,520,85,51,-73,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (752,4,2,1520,86,211,11,6,49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (753,2,2,1527,-399,126,-20,-28,54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (754,1,2,1140,-236,443,90,-49,-47,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (755,1,2,1452,149,538,40,23,26,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (756,1,2,1514,-431,379,57,-49,23,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (757,4,2,1399,155,484,45,-28,3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (758,2,2,1259,-493,568,67,-62,-56,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (759,3,2,1301,32,178,-88,-62,-89,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (760,4,2,867,1008,-1546,34,67,-9,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (761,1,2,607,545,-1438,-61,-79,33,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (762,4,2,663,447,-1753,-62,-68,-56,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (763,3,2,566,830,-1395,-15,40,29,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (764,2,2,904,735,-1461,-10,21,-76,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (765,4,2,569,1038,-1896,-22,63,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (766,3,2,612,882,-1852,77,85,49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (767,1,2,501,495,-1499,38,-73,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (768,3,2,588,849,-1419,72,-80,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (769,3,2,472,978,-1827,-76,2,6,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (770,4,2,759,789,-1543,-82,-81,-30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (771,2,2,425,1178,-1893,-32,-43,27,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (772,4,2,946,1137,-1486,-12,56,-5,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (773,3,2,574,629,-1387,-53,-53,-19,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (774,4,2,702,1143,-1686,54,-40,-73,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (775,2,2,605,635,-1607,9,-27,-85,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (776,4,2,903,1196,-1912,-28,-57,76,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (777,4,2,-1363,-1763,414,-44,-29,81,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (778,3,2,-1156,-1557,225,32,-65,-25,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (779,1,2,-1446,-1944,588,56,2,-88,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (780,2,2,-1175,-1567,332,-34,-11,64,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (781,3,2,-1524,-1633,642,-6,64,-85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (782,3,2,-1357,-1769,229,-38,56,58,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (783,1,2,-1739,-1593,388,43,21,74,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (784,3,2,-1737,-1794,315,68,-72,-48,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (785,3,2,-1694,-2115,501,-29,-43,-3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (786,1,2,-1186,-753,-973,5,35,-80,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (787,1,2,-844,-1132,-692,25,-58,88,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (788,1,2,-998,-629,-703,-66,1,-45,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (789,4,2,-891,-1161,-427,1,78,86,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (790,4,2,-779,-604,-771,-72,21,-3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (791,3,2,-966,-544,-466,46,1,-21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (792,2,2,-996,-1017,-788,83,0,68,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (793,3,2,-777,-779,-526,45,-81,32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (794,2,2,-850,-966,-437,-22,43,64,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (795,2,2,-977,-1199,-608,0,-75,-30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (796,4,2,-986,-879,-981,13,-31,73,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (797,2,2,1601,1267,-1341,-31,-19,-5,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (798,4,2,1775,883,-942,-4,-87,63,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (799,2,2,1901,852,-1266,-83,74,-73,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (800,4,2,1830,1467,-893,29,-72,88,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (801,3,2,1787,1025,-1137,1,-41,-89,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (802,3,2,1794,1284,-1213,42,-23,23,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (803,2,2,1756,1111,-1273,57,69,27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (804,4,2,2065,782,-922,81,-84,-60,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (805,1,2,1992,715,-876,-6,-25,-7,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (806,1,2,2099,1484,-1024,-28,-55,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (807,3,2,1990,1016,-1384,81,-53,65,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (808,3,2,1963,1198,-1341,41,29,34,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (809,3,2,1890,1293,-868,5,-65,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (810,1,2,1889,1425,-1191,-6,68,59,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (811,3,2,1850,1112,-834,30,-62,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (812,4,2,1797,834,-1306,-47,58,44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (813,3,2,1645,718,-980,-52,5,26,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (814,2,2,1835,769,-904,49,-44,-71,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (815,2,2,2026,1154,-1042,43,-52,-46,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (816,1,2,1826,-1167,-80,-55,-36,64,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (817,4,2,1804,-1339,313,-60,-69,42,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (818,4,2,1500,-1667,-89,24,-33,33,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (819,3,2,1925,-1173,253,-18,-65,69,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (820,3,2,1686,-1085,-35,47,-28,-41,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (821,3,2,2003,-1467,-141,-30,1,30,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (822,4,2,1644,-1700,340,-64,-90,30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (823,2,2,-774,163,672,-47,4,-4,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (824,2,2,-774,219,520,71,84,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (825,2,2,-667,167,648,53,40,30,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (826,4,2,-887,142,534,-60,-66,-71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (827,4,2,-876,311,729,79,16,7,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (828,2,2,-796,-52,921,-19,-83,33,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (829,4,2,-963,33,967,60,-39,-78,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (830,3,2,-894,356,772,-54,-12,25,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (831,1,2,-660,-58,744,21,7,3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (832,1,2,-921,-154,658,88,86,47,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (833,3,2,-984,165,827,-90,-11,-55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (834,1,2,-996,-184,680,-89,25,22,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (835,3,2,-760,-205,483,-23,-88,-58,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (836,3,2,-1079,-139,1024,-66,27,-16,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (837,1,2,-1968,1203,-632,7,-88,-58,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (838,1,2,-1814,1792,-734,-3,-60,34,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (839,3,2,-1600,1488,-659,-28,-73,-71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (840,2,2,-1534,1773,-324,-76,-70,-56,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (841,1,2,-1918,1217,-655,70,-5,32,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (842,2,2,-2004,1559,-406,29,-3,-39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (843,4,2,-1508,1257,-311,-50,-86,-11,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (844,2,2,-1775,1237,-541,-81,-58,52,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (845,4,2,-1933,1367,-374,38,63,38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (846,4,2,-1813,1750,-735,15,-88,79,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (847,3,2,-1792,1683,-340,-28,-35,-8,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (848,4,2,-1843,-1493,-961,9,20,-84,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (849,1,2,-2170,-1380,-1053,58,-57,-72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (850,3,2,-2215,-1114,-820,-5,-32,6,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (851,4,2,-2142,-1451,-1165,-32,25,7,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (852,1,2,-2029,-1115,-751,-1,-84,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (853,1,2,-2215,-1619,-1228,4,25,14,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (854,3,2,-1930,-1870,-1147,88,60,40,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (855,3,2,-1704,-1791,-810,-33,-71,10,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (856,1,2,-1986,-1870,-780,15,-23,44,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (857,2,2,-1649,-1338,-1232,44,20,-18,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (858,3,2,-1975,-1405,-1202,69,-22,30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (859,1,2,-2208,-1795,-781,-64,-2,-22,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (860,3,2,-2103,-1370,-959,43,-85,9,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (861,1,2,-2018,-1649,-1258,25,-55,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (862,2,2,-2026,-1679,-984,-70,-67,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (863,2,2,-1780,-1481,-837,-32,65,-16,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (864,3,2,-1769,-1831,-1313,-88,84,79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (865,1,2,-1692,-1479,-1218,22,20,-47,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (866,1,2,-1817,-1304,-1283,-27,56,-75,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (867,2,2,-1860,-1172,-1096,-18,81,82,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (868,1,2,-1738,-1563,-916,-57,-9,30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (869,2,2,-1980,-1489,-772,53,-34,-85,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (870,4,2,-2070,-1154,-1092,90,-30,-58,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (871,1,2,-1939,-1766,-797,25,27,1,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (872,1,2,-1984,-1665,-921,49,-33,85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (873,2,2,-2177,-1308,-755,59,42,3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (874,3,2,-2183,-1771,-1044,-19,-49,1,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (875,2,2,75,-1678,1860,24,59,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (876,1,2,-131,-1203,1969,39,-42,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (877,2,2,298,-1114,2085,1,-71,47,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (878,1,2,135,-1589,1745,55,8,-68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (879,1,2,428,-1144,2171,67,-56,16,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (880,3,2,-69,-1599,1700,13,-8,6,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (881,2,2,224,-1158,1959,-42,43,51,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (882,3,2,218,-900,1784,35,-77,15,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (883,3,2,317,-971,2104,-3,-66,-11,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (884,4,2,256,-1327,1702,44,-18,-10,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (885,1,2,279,-1025,2102,10,40,-2,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (886,3,2,243,-978,1949,44,28,-75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (887,2,2,408,-1377,1711,72,3,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (888,1,2,116,-1410,2071,19,84,60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (889,4,2,357,-1446,1922,59,-81,-79,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (890,2,2,236,-1016,1922,-2,-70,18,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (891,1,2,196,-1462,2089,-69,-53,-55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (892,4,2,185,-1642,1769,-25,-45,-89,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (893,3,2,-64,-1370,2086,-49,-75,43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (894,1,2,371,-1247,2216,-50,-12,48,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (895,3,2,-123,1008,-1251,-7,-11,-42,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (896,3,2,-331,1617,-1312,-17,14,-31,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (897,4,2,-509,1664,-985,-58,48,67,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (898,4,2,-311,1507,-1033,-9,-26,-14,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (899,1,2,-250,1413,-1271,28,46,12,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (900,3,2,-156,1040,-940,29,52,29,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (901,1,2,-304,1321,-971,-88,-41,-34,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (902,2,2,-327,1258,-897,87,-51,39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (903,4,2,-240,1459,-1421,-57,-13,-62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (904,1,2,-274,1194,-1245,-88,84,57,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (905,4,2,-334,1024,-1182,63,-13,72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (906,1,2,-257,1064,-1461,-72,17,5,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (907,1,2,-156,1604,-1061,-13,31,-85,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (908,3,2,-188,1002,-1388,88,-41,75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (909,2,2,-405,1183,-1000,-16,-84,-86,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (910,1,2,-486,1208,-1191,29,-66,73,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (911,1,2,-606,1459,-982,-25,71,-68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (912,4,2,-539,1484,-1191,-30,-36,35,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (913,2,2,-593,1605,-1178,63,-19,5,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (914,2,2,182,-1363,1623,50,16,-84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (915,2,2,246,-1281,2049,58,26,-24,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (916,2,2,322,-1290,1630,-47,-2,5,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (917,4,2,127,-1691,2114,21,1,-5,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (918,1,2,60,-1844,2158,5,-47,8,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (919,3,2,154,-1629,1753,-21,-16,54,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (920,2,2,500,-1785,1811,5,-27,-44,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (921,1,2,288,-1799,2180,-77,3,49,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (922,3,2,436,-1492,1735,37,3,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (923,3,2,244,-1188,1845,-23,-32,1,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (924,2,2,70,-1673,2033,49,65,87,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (925,1,2,561,-1335,2051,-13,39,-14,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (926,3,2,521,-1930,1962,-17,51,89,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (927,3,2,496,-1165,1909,-84,-61,59,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (928,2,2,260,-1871,1958,45,-67,-57,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (929,3,2,-961,-2066,1408,-12,-50,-40,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (930,4,2,-1416,-1803,1598,39,58,-18,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (931,2,2,-1473,-1449,1452,90,10,52,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (932,2,2,-971,-1817,1588,-84,-7,-60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (933,3,2,-934,-2170,1467,-30,43,63,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (934,3,2,-1152,-2072,1615,2,-68,63,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (935,1,2,-1202,-1910,1521,-89,52,50,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (936,2,2,-981,-1999,1083,-65,65,-72,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (937,1,2,-2113,-2153,239,-8,45,-41,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (938,2,2,-1823,-2132,-80,-31,55,86,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (939,1,2,-2095,-1513,-50,-51,15,25,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (940,3,2,-2072,-1792,-133,-49,28,52,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (941,4,2,-2139,-1935,-97,-49,-20,-24,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (942,4,2,-1655,-2185,44,4,37,-84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (943,2,2,-2078,-1984,-301,59,-60,-51,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (944,1,2,-1928,-2264,224,55,42,-42,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (945,3,2,-1364,-875,127,-48,-56,75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (946,4,2,-1528,-478,-43,-9,-4,6,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (947,4,2,-1213,-286,292,-80,-80,0,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (948,1,2,-1215,-445,329,-47,-61,-30,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (949,2,2,-1137,-790,110,-6,-58,-81,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (950,2,2,-1183,-294,-220,87,41,-65,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (951,1,2,-1469,-594,175,6,-72,36,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (952,4,2,-1092,-732,-158,62,-69,-11,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (953,1,2,-1636,-349,115,-1,-35,38,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (954,2,2,-1087,-473,-46,-11,73,-52,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (955,1,2,-1247,-403,322,2,-23,51,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (956,4,2,-1084,-575,295,-19,30,-31,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (957,1,2,-1106,-845,-214,-68,61,62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (958,1,2,-1093,-349,317,-71,80,41,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (959,1,2,-1080,-393,180,-74,61,35,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (960,4,2,-1299,-176,-53,-13,90,-15,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (961,3,2,1530,-904,2006,47,-76,-7,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (962,3,2,1761,-619,1683,20,-61,-70,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (963,4,2,1979,-481,1758,-75,80,90,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (964,2,2,1521,-876,1707,13,-36,-43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (965,1,2,1665,-861,1592,-52,69,-42,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (966,3,2,2086,-1031,2023,43,72,-49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (967,3,2,1830,-806,2034,47,36,-83,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (968,3,2,2000,-624,1633,-53,-60,77,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (969,3,2,1915,-1093,1959,-32,-89,64,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (970,4,2,1754,-604,2048,-39,74,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (971,1,2,1708,-512,1888,-59,26,55,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (972,2,2,1992,-980,1913,17,-89,55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (973,2,2,1527,-921,1960,-69,-59,38,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (974,3,2,1522,-776,1770,-9,-86,21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (975,3,2,1609,-855,2017,-70,63,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (976,2,2,1882,-826,1912,58,-3,-14,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (977,2,2,1899,-957,1973,14,-88,75,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (978,1,2,2069,-1001,1679,48,-58,79,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (979,2,2,244,571,1180,69,-1,-82,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (980,4,2,545,349,1687,-85,-60,55,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (981,4,2,698,943,1325,-22,-57,23,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (982,1,2,543,773,1332,-76,-64,45,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (983,1,2,759,433,1477,26,-40,41,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (984,2,2,215,587,1385,-69,0,-83,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (985,3,2,649,876,1410,74,47,-44,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (986,3,2,648,298,1659,-55,-56,-9,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (987,2,2,238,510,1681,19,22,-86,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (988,1,2,413,935,1242,1,-85,-85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (989,3,2,379,785,1277,60,-90,-85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (990,4,2,360,158,1563,38,58,67,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (991,1,2,249,374,1232,-41,-81,-83,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (992,1,2,-1468,461,1342,-60,78,8,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (993,1,2,-1291,304,1215,78,-56,53,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (994,2,2,-1407,578,1429,28,-25,-43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (995,4,2,-1315,666,1465,-37,-1,-54,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (996,2,2,-1279,890,1589,2,-89,-25,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (997,4,2,-1420,989,1560,55,43,70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (998,4,2,-1425,355,1643,59,34,-37,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (999,3,2,-1700,982,1329,-64,-78,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1000,2,2,-1781,525,1145,23,37,33,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1001,4,2,-1786,854,1565,-49,63,33,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1002,2,2,-1677,553,1423,32,-60,-12,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1003,4,2,-1237,311,1646,47,-7,90,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1004,4,2,-1311,546,1145,-72,-40,2,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1005,2,2,-1322,645,1238,-29,-7,-14,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1006,2,2,-1761,581,1660,-12,88,-73,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1007,2,2,-1252,435,1408,-2,-36,79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1008,2,2,-1207,362,1164,52,15,15,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1009,4,2,-1698,811,1603,35,-10,-44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1010,1,2,-1496,1059,1484,-40,65,-51,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1011,2,2,-1712,811,1650,-79,48,80,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1012,2,2,-1585,572,1557,-70,-57,72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1013,4,2,-1605,601,1421,49,11,83,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1014,1,2,-1331,518,1571,77,-46,-37,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1015,2,2,-1321,976,1516,28,-35,84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1016,3,2,-1897,135,-1392,39,79,-38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1017,2,2,-1650,151,-1655,74,-21,-10,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1018,1,2,-1888,-584,-1317,-83,78,40,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1019,1,2,-1602,-288,-1621,29,-83,55,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1020,1,2,-1599,-205,-1399,24,56,57,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1021,2,2,-1778,51,-1669,-5,33,47,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1022,2,2,-1915,-426,-1405,8,-74,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1023,1,2,-1402,-109,-1232,-79,87,68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1024,4,2,-1738,-645,-1406,-12,68,-46,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1025,2,2,-1759,-241,-1375,40,73,78,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1026,2,2,-1733,-432,-1378,-10,17,-52,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1027,3,2,-1873,118,-1588,-40,-62,-81,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1028,1,2,-1867,-230,-1164,32,-51,2,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1029,2,2,-1802,134,-1380,46,-50,12,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1030,1,2,-1434,137,-1158,43,0,-85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1031,1,2,-1655,-91,-1267,-48,-2,-68,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1032,1,2,-1670,-36,-1605,-61,3,22,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1033,2,2,-1897,-437,-1487,84,74,89,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1034,3,2,-1368,-54,-1250,67,-25,-35,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1035,1,2,-1560,3,-1552,69,-43,-72,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1036,1,2,-1714,-338,-1662,46,-90,-17,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1037,1,2,-1737,-245,-1702,27,15,53,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1038,1,2,-1610,-446,-1610,5,-75,-51,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1039,2,2,-1446,-157,-1622,86,-48,-46,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1040,1,2,-1761,-130,-1314,-90,31,-79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1041,1,2,-1468,-368,-1305,-64,-89,21,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1042,2,2,1279,-2133,1012,-65,33,-44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1043,3,2,1324,-1900,1263,76,-69,36,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1044,3,2,1165,-1795,806,-11,-89,64,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1045,1,2,976,-1848,1304,-63,72,-77,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1046,4,2,1376,-1584,722,11,-35,72,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1047,1,2,1182,-1946,921,-51,-9,-61,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1048,4,2,1115,-1730,1174,-66,86,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1049,1,2,1223,-2237,921,-4,-30,-46,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1050,2,2,884,-2032,1048,-74,-59,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1051,2,2,1076,-2119,842,31,-35,-3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1052,4,2,1182,-1954,1127,1,88,44,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1053,2,2,1214,-2230,1062,-46,-5,23,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1054,1,2,1037,-1549,1202,35,69,-7,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1055,3,2,1241,-1528,1091,-51,56,-38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1056,2,2,892,-1635,976,-12,-60,-26,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1057,1,2,1052,-2273,890,57,54,-81,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1058,1,2,1422,-2030,783,87,-59,8,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1059,4,2,1373,-2130,817,48,77,-1,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1060,1,2,1079,-1553,818,-42,-82,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1061,1,2,1079,-2248,951,3,-77,-4,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1062,4,2,1116,-1774,1100,-83,-41,65,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1063,3,2,930,-1649,1181,24,38,-46,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1064,4,2,1265,-306,1050,14,7,-33,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1065,3,2,964,-510,1219,0,57,65,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1066,3,2,938,-247,1370,-45,29,55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1067,1,2,808,-596,1303,-12,13,36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1068,1,2,1200,57,1473,-53,-48,40,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1069,1,2,1125,-585,1033,45,-48,-80,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1070,1,2,800,-458,1179,-33,-23,43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1071,1,2,909,-177,1068,33,-52,-14,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1072,1,2,1144,-307,1369,-81,-8,7,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1073,1,2,793,-77,1132,-42,54,-66,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1074,4,2,703,-17,1101,-18,18,-9,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1075,2,2,1251,-516,1573,47,55,-19,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1076,1,2,804,-286,1490,-24,-28,89,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1077,3,2,752,-365,1234,-51,90,-84,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1078,1,2,1269,4,1202,35,-66,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1079,3,2,1094,5,1521,65,-33,-49,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1080,1,2,992,-651,1332,-5,-23,13,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1081,1,2,961,-451,1381,-59,-45,-81,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1082,1,2,881,-538,1367,-6,-3,-43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1083,1,2,697,-123,1203,-22,-37,66,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1084,3,2,1094,-115,1217,89,-32,-8,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1085,3,2,1059,80,1421,-62,-52,-16,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1086,1,2,1146,-474,1379,9,-73,-12,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1087,3,2,-584,121,-969,35,-89,-32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1088,3,2,-497,614,-663,-81,24,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1089,3,2,-485,514,-757,-47,8,21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1090,4,2,-368,-154,-721,-26,-56,-73,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1091,3,2,-723,583,-1019,-51,-59,-86,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1092,1,2,-676,196,-1006,-82,-25,10,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1093,1,2,-808,277,-985,-30,72,45,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1094,3,2,-286,418,-679,-58,88,-75,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1095,2,2,-378,-100,-1052,59,70,19,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1096,2,2,-780,544,-687,41,58,42,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1097,3,2,-826,608,-528,-49,-59,68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1098,1,2,-643,164,-532,-7,17,-17,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1099,2,2,-827,110,-877,12,68,-37,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1100,4,2,-655,501,-646,-73,-12,84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1101,3,2,-323,290,-780,25,90,15,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1102,3,2,-468,248,-831,-15,10,63,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1103,1,2,-301,310,-579,-73,-31,0,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1104,2,2,-672,497,-755,-40,51,2,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1105,2,2,-851,-66,-574,31,6,-48,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1106,2,2,-551,600,-678,54,-59,-14,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1107,3,2,-322,-175,-1050,15,80,63,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1108,3,2,-349,-159,-995,-52,23,-75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1109,1,2,-841,114,-491,-43,21,87,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1110,4,2,1518,-367,1928,-1,-18,49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1111,2,2,1538,-347,1563,78,-22,68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1112,3,2,1581,-295,1773,37,59,24,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1113,4,2,1594,-247,1608,19,-74,-28,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1114,4,2,1804,-591,1767,79,47,33,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1115,2,2,1796,-407,1539,43,20,68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1116,2,2,2028,-213,1588,-23,62,80,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1117,4,2,1827,-590,1726,47,-47,10,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1118,4,2,1852,-426,1769,-69,-51,-51,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1119,1,2,1785,-335,1472,-17,-43,12,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1120,3,2,1597,-505,1994,-78,-76,-72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1121,4,2,1466,-295,1786,33,78,44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1122,3,2,1795,-676,1953,66,-49,-81,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1123,1,2,1866,-496,1838,64,83,50,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1124,2,2,1699,-277,1631,38,45,-62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1125,1,2,1765,-787,1686,82,-1,42,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1126,2,2,1973,-190,1867,58,-74,40,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1127,1,2,1638,-456,1776,29,-7,-35,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1128,4,2,1870,-501,1993,28,-76,75,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1129,3,2,1565,-400,1574,82,-42,-3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1130,4,2,2030,-568,1587,-63,14,48,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1131,1,2,1659,-305,1989,-60,35,-74,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1132,4,2,1846,-370,1499,80,61,-29,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1133,3,2,1615,-649,1983,-27,18,-70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1134,1,2,1937,-623,1597,60,30,-11,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1135,2,2,1558,-626,1683,44,53,-41,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1136,1,2,1561,-255,1910,-10,78,-27,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1137,1,2,1748,-204,1871,71,-83,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1138,2,2,1812,-466,1894,44,-34,-9,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1139,3,2,-1356,127,1001,84,-16,87,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1140,1,2,-1442,-423,1322,-2,-13,78,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1141,2,2,-1255,-76,1308,-33,-17,64,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1142,2,2,-1525,-545,939,65,51,29,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1143,2,2,-1302,-537,1063,68,89,24,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1144,4,2,-1161,-71,1303,73,2,4,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1145,3,2,-1457,15,1063,-70,63,90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1146,1,2,-1563,-410,1221,4,-26,-4,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1147,3,2,-1391,-484,1278,-82,-43,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1148,3,2,-1335,-335,946,-90,-48,-72,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1149,4,2,-1324,-483,1101,22,-46,-67,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1150,3,2,-1405,-473,1218,68,81,-35,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1151,3,2,-1515,-89,1006,-49,-26,-18,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1152,1,2,199,-247,-686,-44,-85,-49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1153,4,2,156,-583,-846,-78,41,-15,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1154,1,2,-275,-49,-609,58,-72,62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1155,3,2,-298,-385,-371,23,63,-55,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1156,2,2,171,-659,-545,-29,-84,-84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1157,3,2,233,-341,-540,-1,19,-70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1158,4,2,25,-394,-614,74,9,-68,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1159,1,2,18,-545,-708,68,14,-65,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1160,1,2,9,-482,-522,10,-87,-77,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1161,3,2,-51,-303,-480,-70,-12,-78,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1162,1,2,-151,-170,-678,31,-44,78,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1163,1,2,103,-64,-410,29,69,38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1164,4,2,-298,-598,-559,69,-4,40,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1165,3,2,104,-532,-639,86,-76,54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1166,4,2,83,-646,-763,-69,-78,-71,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1167,1,2,-282,-641,-845,54,-66,54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1168,3,2,52,14,-427,-22,-86,-54,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1169,3,2,173,-526,-453,-71,68,-26,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1170,2,2,-43,-627,-587,8,59,-11,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1171,3,2,149,-165,-471,-79,-83,-27,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1172,3,2,148,-72,-600,37,80,84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1173,4,2,210,39,-840,-40,31,-67,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1174,3,2,165,-26,-839,25,55,36,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1175,1,2,-1994,1636,369,2,-4,-11,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1176,1,2,-1942,1828,418,6,-9,-20,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1177,3,2,-1862,1814,-50,-5,61,63,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1178,3,2,-1745,1444,404,-45,-55,20,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1179,1,2,-1988,1959,358,-47,-50,-27,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1180,4,2,-1788,1460,-157,41,23,-23,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1181,2,2,-2124,1841,235,-37,63,79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1182,1,2,-1690,1804,310,-37,-72,-72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1183,4,2,-1900,1623,-18,64,25,-3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1184,3,2,-1726,1371,316,22,2,-81,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1185,1,2,-1855,1561,28,29,29,84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1186,3,2,-1494,-70,748,37,-76,-75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1187,4,2,-1191,-429,1027,-82,47,-13,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1188,4,2,-1111,-539,728,10,-40,-44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1189,1,2,-1178,-614,735,-32,28,-90,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1190,2,2,-1186,-408,1140,-43,29,33,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1191,1,2,-1663,-623,1152,-86,-27,-45,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1192,4,2,-1101,-299,860,-26,-6,85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1193,2,2,-1534,-669,827,27,-21,0,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1194,2,2,-1364,0,1076,22,-47,35,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1195,2,2,-1270,-260,834,-70,-26,-88,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1196,2,2,-1327,-620,856,-84,-60,68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1197,4,2,-1109,-453,943,-58,-86,32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1198,4,2,-1290,-173,796,-37,79,62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1199,3,2,-1574,-135,1134,-28,34,40,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1200,3,2,-1412,-594,1083,21,8,71,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1201,2,2,-1147,-511,1062,80,-53,19,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1202,3,2,-1260,-335,924,28,-82,-45,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1203,2,2,-1334,-423,1036,-52,-67,80,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1204,4,2,-1416,-753,704,-78,-80,-75,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1205,2,2,-1518,-665,751,-54,-61,29,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1206,1,2,-2022,1456,973,60,86,-25,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1207,2,2,-1692,1060,1379,38,-65,-88,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1208,1,2,-1741,1333,1144,-19,-40,-68,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1209,2,2,-2029,1143,1464,28,-20,-84,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1210,4,2,-1799,1508,1557,-31,-82,21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1211,1,2,-1700,1435,1150,71,3,21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1212,1,2,1763,161,2229,75,-74,-77,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1213,3,2,1843,-206,1858,-52,-53,69,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1214,3,2,1987,345,1688,-85,-52,57,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1215,2,2,1575,-212,1980,-61,54,60,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1216,2,2,2018,459,1832,-73,27,-37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1217,1,2,1796,-241,1844,-62,32,-70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1218,2,2,1504,406,2203,-49,-14,56,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1219,2,2,1993,36,1816,-44,58,-79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1220,2,2,1789,93,1871,61,88,21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1221,3,2,1658,57,1861,44,-63,76,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1222,2,2,1673,456,1985,-36,-63,-62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1223,4,2,1668,331,1983,45,-56,3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1224,3,2,1613,245,1687,-57,-33,-26,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1225,2,2,1941,195,2033,-77,50,70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1226,3,2,1747,256,1741,-15,30,47,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1227,1,2,1630,53,1928,-62,83,13,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1228,2,2,1615,515,1732,61,-39,49,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1229,1,2,1974,393,2167,66,-66,-6,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1230,2,2,1915,465,1948,-25,49,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1231,2,2,1482,476,1935,-27,88,3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1232,3,2,2006,355,2056,34,-74,-51,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1233,2,2,1536,-100,1918,-47,-38,-62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1234,1,2,1815,179,1722,42,-51,9,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1235,2,2,1741,-29,1894,-67,16,-6,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1236,2,2,1475,-32,1959,40,52,-17,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1237,3,2,1439,-253,1682,29,-67,-23,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1238,3,2,1466,67,1663,-61,-52,52,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1239,2,2,1787,520,1815,40,-73,49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1240,2,2,427,114,-230,-54,-37,-72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1241,1,2,332,550,-48,-4,19,-65,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1242,4,2,686,381,-103,9,51,41,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1243,4,2,369,303,-186,-51,-17,24,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1244,4,2,588,570,-394,-83,50,-18,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1245,2,2,524,271,-262,6,-52,88,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1246,2,2,254,434,-444,-16,10,-79,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1247,3,2,279,257,-510,-52,58,7,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1248,4,2,457,832,-534,-32,-41,-39,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1249,1,2,589,799,-149,-23,-48,36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1250,2,2,459,291,-303,-48,-68,-63,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1251,3,2,516,740,-150,-36,-37,-50,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1252,3,2,170,102,-574,-82,24,-53,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1253,2,2,685,93,-188,39,-85,6,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1254,3,2,604,277,-374,-35,8,89,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1255,2,2,264,630,-463,-32,69,43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1256,3,2,658,655,-560,-65,-10,50,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1257,3,2,303,803,-480,44,-56,76,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1258,1,2,267,190,-137,51,-34,12,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1259,1,2,678,759,-351,-49,29,45,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1260,4,2,138,754,-141,69,60,8,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1261,4,2,-218,-2089,1264,-6,79,-28,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1262,4,2,-407,-1697,1190,-53,-75,-79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1263,2,2,-128,-1470,1532,24,-29,-24,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1264,4,2,94,-1773,1557,-25,-34,40,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1265,1,2,-153,-1456,1523,-31,-9,9,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1266,2,2,-138,-1634,1141,-27,54,62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1267,3,2,44,-1710,1117,42,-24,-75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1268,1,2,-33,-1709,1141,-63,55,38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1269,1,2,-204,-1568,1480,9,-5,-64,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1270,4,2,-467,-1566,1122,-78,33,17,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1271,2,2,-412,-1631,1171,62,-67,-64,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1272,3,2,-82,-1658,1415,-36,-76,-23,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1273,1,2,-418,-1702,1471,-4,-60,32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1274,4,2,-385,-1850,1133,6,-29,62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1275,1,2,-372,-1914,1415,-82,-45,55,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1276,4,2,9,-1841,1397,-24,-2,-22,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1277,1,2,-301,-1482,1188,-71,61,-26,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1278,1,2,-420,-1538,1129,-70,-87,-39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1279,2,2,-18,-1998,1388,85,-37,-32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1280,3,2,84,-1913,1177,54,-3,9,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1281,4,2,-116,-2068,1435,24,48,-21,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1282,1,2,-95,-1670,1621,-15,69,-47,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1283,1,2,-195,-1358,1159,61,67,-67,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1284,1,2,103,-1619,1344,80,38,5,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1285,4,2,-45,-1900,1341,57,82,-17,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1286,3,2,-464,-1557,1249,-66,-51,-79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1287,4,2,210,-1424,733,-28,-9,-58,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1288,2,2,102,-2104,286,46,-14,-72,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1289,1,2,1541,1722,-600,-32,43,58,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1290,4,2,1663,1435,-109,-32,-26,24,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1291,3,2,1603,1724,-504,-12,-47,-50,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1292,2,2,1680,1877,-700,14,5,-65,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1293,4,2,1160,1692,-491,70,41,74,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1294,3,2,1481,1688,-428,-13,-77,48,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1295,2,2,1610,2001,-206,40,73,-87,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1296,2,2,1685,2001,-447,-18,-77,32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1297,3,2,1500,1566,-449,19,25,83,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1298,3,2,1473,1373,-598,27,76,-60,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1299,2,2,1431,1621,-308,-5,-68,-8,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1300,4,2,1367,1429,-253,5,52,76,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1301,1,2,1188,1744,-241,39,-22,-85,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1302,3,2,1468,1780,-630,19,-6,-87,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1303,4,2,1701,1497,-588,45,78,-5,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1304,1,2,162,-186,113,45,-19,-5,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1305,2,2,223,-404,-63,-7,-42,6,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1306,3,2,134,-341,98,-24,15,37,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1307,1,2,22,-225,32,42,-59,20,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1308,2,2,-103,-98,240,25,-17,57,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1309,2,2,101,-181,98,0,-70,60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1310,1,2,139,-249,400,-41,28,-86,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1311,4,2,-345,87,132,-14,58,-59,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1312,4,2,-256,-344,424,-87,78,17,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1313,3,2,-75,-289,-31,67,4,79,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1314,1,2,-288,-315,294,-64,45,-53,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1315,2,2,-167,120,76,-42,50,-5,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1316,1,2,177,79,142,18,28,-37,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1317,4,2,117,6,308,-79,80,57,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1318,3,2,-130,-387,-85,-11,-71,70,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1319,3,2,-177,-524,290,72,-24,66,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1320,3,2,-23,147,436,17,-49,34,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1321,4,2,-344,-285,139,-5,-64,70,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1322,3,2,161,-1632,-39,4,88,89,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1323,1,2,665,-2085,-426,84,-79,-18,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1324,1,2,248,-2200,16,49,55,29,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1325,1,2,278,-2066,66,-86,72,-24,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1326,4,2,383,-2083,35,-1,52,-31,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1327,2,2,193,-2058,-367,-43,42,50,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1328,1,2,523,-2097,-27,-39,-2,46,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1329,4,2,114,-1754,-442,-48,8,-46,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1330,1,2,367,-2056,-455,84,75,14,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1331,1,2,377,-2071,-169,-26,-89,82,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1332,4,2,448,-1636,-366,-83,58,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1333,2,2,215,-2054,112,78,-74,-21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1334,2,2,353,-1583,0,-10,-9,-4,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1335,3,2,203,-1728,49,-9,78,-64,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1336,3,2,894,-787,-776,8,34,-27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1337,3,2,911,-659,-507,12,38,57,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1338,4,2,942,-1165,-400,34,-16,34,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1339,4,2,445,-788,-381,-88,-30,39,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1340,2,2,895,-721,-773,-35,-71,-42,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1341,3,2,892,-668,-665,-13,-29,-62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1342,3,2,763,-445,-808,71,-32,-51,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1343,1,2,917,-1083,-315,-87,6,43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1344,1,2,650,-616,-370,-31,44,87,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1345,1,2,677,-560,-468,73,76,-37,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1346,4,2,533,-792,-335,86,-87,71,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1347,4,2,414,-572,-358,-37,-3,-22,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1348,4,2,639,-1173,-797,19,-40,-32,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1349,4,2,620,-702,-548,85,34,27,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1350,4,2,632,-1115,-700,-37,40,-86,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1351,3,2,493,-731,-321,20,21,-72,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1352,3,2,546,-626,-651,16,-31,10,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1353,1,2,545,-801,-688,64,-87,49,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1354,4,2,948,-954,-663,4,-41,70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1355,1,2,377,-1034,-360,44,36,7,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1356,4,2,740,-810,-638,12,-35,-85,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1357,1,2,644,-659,-451,26,9,64,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1358,4,2,459,-833,-432,-26,-21,38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1359,3,2,657,-834,-479,-7,32,-77,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1360,3,2,769,-550,-599,-52,9,6,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1361,3,2,421,-624,-312,-84,50,-1,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1362,1,2,654,-838,-862,69,-61,-69,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1363,3,2,803,-994,-624,27,12,25,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1364,1,2,741,-1029,-594,-6,28,-58,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1365,4,2,-830,302,962,-82,79,73,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1366,1,2,-1070,730,1101,-32,-23,-71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1367,3,2,-724,333,1280,-53,70,-41,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1368,4,2,-834,129,1024,61,-44,1,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1369,1,2,-840,833,822,36,-35,-4,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1370,1,2,-947,580,1304,83,-56,-1,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1371,2,2,-819,641,1093,-54,46,14,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1372,1,2,-1111,645,876,-19,-80,-16,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1373,3,2,-764,819,1090,-49,-30,71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1374,4,2,-1300,740,1301,45,38,-44,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1375,2,2,-1231,283,854,-34,18,7,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1376,1,2,-1230,668,856,15,-3,83,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1377,4,2,-954,541,1086,48,19,79,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1378,2,2,-1104,682,1346,6,-79,-34,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1379,4,2,-1241,248,1072,-22,2,84,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1380,3,2,-1149,779,1160,-2,-79,9,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1381,3,2,-820,561,855,-60,-54,-14,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1382,4,2,-847,276,809,-28,-53,28,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1383,4,2,-1115,797,969,18,22,-90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1384,2,2,-777,331,1043,-22,-72,-46,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1385,1,2,-878,583,949,-37,81,-60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1386,4,2,-752,139,954,-34,-50,-38,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1387,3,2,-1036,242,1040,-51,-9,-3,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1388,2,2,-941,157,765,12,-27,85,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1389,3,2,-999,473,881,64,-55,-8,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1390,1,2,-998,-1132,-700,-17,-69,90,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1391,2,2,-1120,-1220,-756,38,-67,37,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1392,2,2,-688,-1305,-463,-86,-30,62,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1393,2,2,-997,-1752,-735,-47,79,22,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1394,1,2,-728,-1148,-228,-60,-33,-49,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1395,4,2,-637,-1568,-247,63,13,-3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1396,4,2,-1162,-1083,-698,6,-52,-56,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1397,1,2,-532,-140,-382,86,-54,47,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1398,2,2,-569,-1158,287,-67,-35,-80,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1399,3,2,-393,-1392,255,-89,-6,-22,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1400,2,2,-655,-1619,417,61,13,-35,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1401,4,2,-655,-1557,459,56,36,-16,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1402,2,2,-643,-1288,290,31,43,-70,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1403,1,2,-245,-1271,344,20,-37,-70,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1404,4,2,-721,-1566,213,17,-13,-38,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1405,1,2,-206,-1721,439,-75,53,87,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1406,3,2,-175,-1575,563,-27,89,-7,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1407,4,2,-307,-1367,397,-75,-73,34,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1408,3,2,-580,-1277,674,-83,11,62,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1409,1,2,-656,-1024,175,63,-72,1,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1410,2,2,-260,-1533,685,30,85,-81,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1411,2,2,-490,-1304,443,52,89,51,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1412,4,2,-642,-1721,569,-6,67,71,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1413,3,2,-699,-1763,484,89,3,-21,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1414,3,2,-383,-1265,212,75,-27,-17,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1415,3,2,-518,-1088,540,-3,35,36,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1416,1,2,1251,1744,-702,54,60,60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1417,3,2,1168,1172,-889,50,72,-3,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1418,3,2,1070,1420,-476,-51,-39,12,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1419,1,2,1374,1336,-669,-6,-51,-90,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1420,4,2,1274,1231,-513,-62,6,4,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1421,1,2,1528,1806,-517,6,62,60,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1422,3,2,1362,1197,-680,-81,11,46,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1423,1,2,1524,1465,-500,4,-26,-26,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1424,4,2,1061,1308,-499,78,41,43,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1425,3,2,1036,1317,-491,64,-72,21,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1426,4,2,1206,1224,-493,-88,-80,-2,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1427,4,2,1152,1667,-837,10,-49,74,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1428,2,2,1227,1769,-682,-71,-16,-31,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1429,4,2,1499,1139,-791,-54,-71,71,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1430,3,2,1238,1396,-581,-23,-75,13,1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1431,2,2,1043,1765,-549,17,83,20,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (1432,1,2,1133,1498,-424,-62,-30,75,2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3061,4,4,3320,1045,-5055,76,-69,-40,0.108);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3062,8,4,4109,-3435,-4599,86,41,48,0.121);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3063,8,4,3327,-3520,-5320,-52,-26,22,0.019);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3064,4,4,4007,-4747,-3392,23,-32,57,0.06);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3065,7,4,3574,-3424,-5083,38,19,66,0.273);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3066,4,4,-1297,-5327,-6279,-2,58,-70,0.034);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3067,8,4,-2075,-6061,-5806,-75,19,90,0.135);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3068,4,4,-2127,-6472,-6947,81,25,65,0.224);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3069,7,4,-2468,-6219,-5435,73,78,62,0.155);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3070,4,4,-1206,-6727,-5167,26,60,-82,0.112);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3071,8,4,5654,-4405,-4021,87,81,-72,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3072,7,4,5525,-4439,-1744,41,59,90,0.108);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3073,4,4,8149,-5569,-2493,-86,-22,51,0.183);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3074,7,4,8075,-3837,-2909,-21,-69,4,0.165);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3075,4,4,5936,-5880,-1779,-12,3,-25,0.168);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3076,4,4,6428,-4439,-4396,-42,-30,-68,0.013);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3077,8,4,6421,-4302,-3176,29,21,-58,0.095);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3078,8,4,6568,-3340,-3015,-50,-44,70,0.028);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3079,9,4,5687,-5596,-3280,-21,75,0,0.254);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3080,9,4,7718,-6006,-1903,86,-33,84,0.296);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3081,9,4,6179,-3432,-4528,-7,34,-51,0.034);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3082,7,4,6021,6529,-1961,-62,88,-2,0.176);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3083,7,4,5751,6088,-126,-22,-39,-40,0.139);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3084,8,4,6575,6033,-1418,36,-72,15,0.019);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3085,4,4,5042,5897,-26,54,15,12,0.045);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3086,9,4,3849,6524,-1517,-20,24,76,0.208);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3087,4,4,6273,4941,-1471,58,-66,88,0.12);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3088,9,4,5197,6741,-2217,32,-38,-8,0.217);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3089,7,4,3970,4443,-2411,-30,12,-38,0.298);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3091,4,4,5406,5774,-1800,45,-68,67,0.015);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3092,9,4,4672,7134,-1172,8,16,9,0.138);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3093,7,4,6732,5353,126,-7,27,-6,0.017);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3094,9,4,5600,-2073,-7023,-61,14,26,0.203);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3095,9,4,5549,-602,-7192,61,50,-58,0.257);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3096,8,4,246,-3427,-2183,76,-78,38,0.184);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3097,7,4,-1009,-950,-1351,43,13,37,0.084);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3098,9,4,-799,-3667,-2539,55,9,79,0.217);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3099,8,4,3051,3151,2262,57,9,7,0.119);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3100,7,4,4306,5442,4790,-3,-79,53,0.124);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3101,7,4,-7581,1092,-5320,-36,-72,70,0.06);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3102,8,4,-7381,776,-4325,43,-36,-42,0.193);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3103,8,4,-6293,589,-4512,-65,-31,44,0.19);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3104,7,4,-3594,325,-4854,57,16,-11,0.201);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3105,4,4,-8117,-250,5995,-11,-30,6,0.228);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3106,8,4,-7027,-132,4769,87,-4,-40,0.02);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3107,8,4,-7094,645,6705,-10,59,4,0.067);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3108,8,4,-6538,749,6380,-34,-8,6,0.17);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3109,8,4,-8358,-1008,5635,-90,-66,-89,0.279);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3110,7,4,-6640,-1544,6434,6,3,-47,0.273);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3111,7,4,-5960,-413,4466,78,-57,74,0.238);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3112,7,4,-6944,378,5502,27,-66,12,0.228);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3113,4,4,-6717,594,5953,-72,-68,68,0.083);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3114,7,4,-7452,1241,4915,20,23,31,0.07);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3115,4,4,-7843,-1461,4885,-35,-57,-27,0.048);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3116,4,4,-5647,-828,5462,-50,-68,-56,0.244);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3117,8,4,5157,3076,-5504,85,-57,-2,0.259);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3118,9,4,5979,3489,-4257,-30,-50,-59,0.112);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3119,9,4,3910,3363,-5948,-83,-40,75,0.247);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3120,7,4,5680,3401,-3578,-35,-54,89,0.246);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3121,8,4,4482,3942,-4279,-44,-88,46,0.016);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3122,8,4,5333,5442,-3552,-80,-72,86,0.081);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3123,8,4,5061,3370,-4041,5,-26,-3,0.292);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3124,7,4,6225,4344,-4261,10,81,35,0.009);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3125,9,4,4266,3739,-4127,-90,35,-84,0.289);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3126,8,4,-47,5070,-1070,-67,59,-66,0.216);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3127,7,4,-1429,7767,-1854,-67,65,-44,0.114);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3128,9,4,-2822,6345,1029,30,2,-87,0.083);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3129,7,4,-1941,6893,-1689,69,-82,30,0.15);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3130,7,4,-11,5736,-1263,-65,-1,53,0.127);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3131,7,4,-528,7812,626,-80,85,64,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3132,9,4,-1360,7174,218,-76,70,55,0.281);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3133,9,4,-607,6598,-1012,56,66,-35,0.182);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3134,9,4,4942,6153,-3503,54,-18,66,0.291);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3135,9,4,2482,7927,-2846,-39,63,-5,0.053);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3136,8,4,2886,6753,-1984,-52,-6,-48,0.063);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3137,7,4,2844,6037,-2118,75,55,88,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3138,8,4,3391,6167,-4339,-52,64,-7,0.281);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3139,8,4,5111,7544,-2204,-53,6,31,0.225);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3140,9,4,4060,5726,-1594,9,-79,60,0.085);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3141,4,4,2595,5511,-2301,-82,-29,-10,0.258);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3142,7,4,4626,5371,-3442,-77,64,40,0.187);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3143,8,4,4852,6157,-1575,32,48,9,0.209);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3144,8,4,4389,5979,-2861,-57,-18,-6,0.102);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3145,4,4,2312,7335,-2036,8,78,-90,0.223);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3146,9,4,-3326,-5415,77,-29,-67,73,0.024);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3147,8,4,-3739,-4574,2144,-39,-70,17,0.098);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3148,7,4,-3714,-4792,1793,-79,22,-28,0.178);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3149,9,4,-1476,-6040,2094,-65,3,-21,0.07);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3150,8,4,-2144,-5388,-139,19,77,-22,0.12);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3151,8,4,-2962,-7128,958,20,49,-64,0.048);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3152,4,4,-3227,-5572,821,-57,23,-40,0.057);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3153,9,4,598,1153,-3875,-40,-86,-60,0.234);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3154,9,4,-320,1939,-5674,-74,-28,-28,0.099);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3155,8,4,1677,4,-5443,-5,35,87,0.036);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3156,9,4,1551,888,-6086,-17,77,-86,0.174);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3157,9,4,1840,11,-5147,61,47,-50,0.108);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3158,4,4,532,173,-4768,-41,18,70,0.023);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3159,9,4,226,511,-5473,67,71,-59,0.016);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3160,7,4,2105,1515,-6064,-69,36,27,0.255);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3161,8,4,1165,1015,-3517,77,83,-54,0.092);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3162,7,4,2169,83,-3588,-42,30,89,0.169);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3163,7,4,1027,423,-4804,58,-19,11,0.158);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3164,7,4,1686,1995,-4045,-74,-3,-68,0.244);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3165,7,4,116,1063,-4433,58,56,-16,0.157);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3166,4,4,2025,6031,4677,-88,-49,16,0.171);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3167,4,4,2320,5428,2836,-4,59,-38,0.05);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3168,7,4,3428,5657,3163,-84,-77,-46,0.179);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3169,8,4,1543,5588,3971,-32,-60,-47,0.094);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3170,7,4,729,3324,4221,-4,-80,65,0.268);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3171,9,4,934,4831,4790,57,-44,-75,0.249);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3172,7,4,2086,3929,4422,20,-53,-48,0.178);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3173,8,4,1304,4319,4835,-18,-30,57,0.161);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3174,4,4,907,5682,4739,-1,-13,58,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3175,4,4,850,6215,2350,-33,79,-73,0.237);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3176,7,4,1946,3388,5214,83,-56,8,0.02);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3177,8,4,2941,5379,4331,63,9,-44,0.178);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3178,4,4,2101,-1638,5792,-21,-29,41,0.171);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3179,9,4,-5049,4858,5305,39,2,-37,0.14);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3180,9,4,-7185,7207,4462,-35,35,-55,0.102);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3181,8,4,-7292,7087,5687,2,-54,84,0.019);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3182,9,4,-7677,5690,5213,-32,-75,-71,0.193);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3183,7,4,-5128,5562,6592,-86,-17,-28,0.242);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3184,7,4,-5502,6489,5768,-85,-72,-2,0.225);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3185,4,4,-1174,-5931,391,-37,-24,-56,0.268);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3186,7,4,1541,-5416,1148,-4,-50,42,0.267);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3187,8,4,-876,1585,-5538,79,27,-1,0.14);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3188,7,4,1178,-38,-8096,-25,71,-25,0.01);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3189,8,4,-648,1183,-6314,-65,76,62,0.029);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3190,4,4,300,1351,-6691,-25,83,-73,0.021);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3191,9,4,-128,1790,-5288,44,-47,-71,0.115);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3192,9,4,244,2448,-5645,54,59,-30,0.156);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3193,7,4,-1023,1002,-6533,-42,-40,-52,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3194,7,4,-1055,382,-5136,78,-42,-63,0.249);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3195,7,4,-106,520,-6597,-16,-23,4,0.066);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3196,9,4,-2981,5264,-4740,47,-60,-19,0.038);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3197,4,4,-3723,5244,-2688,4,-43,89,0.123);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3198,7,4,-2994,6098,-4857,20,34,70,0.294);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3199,7,4,-4267,5494,-4950,-30,-64,58,0.089);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3200,4,4,-4500,6179,-3909,-70,-44,1,0.048);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3202,4,4,-2571,4040,-2742,-40,-71,7,0.034);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3203,4,4,-3490,6702,-3205,72,-24,29,0.176);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3204,7,4,-3276,4701,-3902,87,63,50,0.062);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3205,8,4,-4033,6868,-4335,80,19,28,0.254);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3206,8,4,-4027,6543,-3441,30,85,-5,0.275);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3207,7,4,-4315,5171,-2736,43,11,-89,0.093);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3208,8,4,-6876,5989,-6986,34,-59,-3,0.216);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3209,8,4,-4562,5423,-6523,48,12,67,0.251);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3210,7,4,2392,3501,-8217,-63,20,-15,0.264);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3211,8,4,3993,1974,-6634,68,51,-54,0.269);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3212,8,4,4912,1960,-7393,-70,10,23,0.287);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3213,9,4,2420,3883,-7644,-73,15,-63,0.25);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3214,7,4,3403,3346,-7400,-62,47,17,0.095);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3215,7,4,2774,4516,-6817,-36,89,-15,0.223);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3216,4,4,2793,4237,-6611,-61,54,78,0.019);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3217,8,4,2527,4565,-5920,62,-65,88,0.243);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3218,8,4,4242,4819,-6525,33,-66,-61,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3219,9,4,3950,3564,-7251,-19,-34,-23,0.271);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3220,9,4,4572,2463,-6685,84,-13,17,0.083);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3221,8,4,3061,2865,-6421,31,47,-19,0.297);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3222,4,4,3047,3007,-5885,61,85,62,0.02);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3223,8,4,2645,3270,-5848,-46,46,14,0.111);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3224,4,4,4736,2327,-5756,-28,81,-36,0.245);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3225,7,4,4876,3531,-3898,-35,-83,-19,0.059);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3226,7,4,2759,4071,-4826,5,-24,-75,0.164);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3227,9,4,4643,5117,-2622,89,7,-51,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3228,9,4,5127,5466,-3157,90,-83,-47,0.105);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3229,8,4,4423,3437,-3845,-10,60,-53,0.165);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3230,7,4,-2848,-5835,5742,0,65,-55,0.169);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3231,4,4,-5059,-6746,3520,-69,17,47,0.089);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3232,9,4,-5281,-6895,5002,65,-64,-58,0.137);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3233,7,4,-3975,-6887,4225,85,-42,75,0.23);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3234,8,4,-5098,-4115,4052,-54,6,62,0.162);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3235,8,4,-4420,-4813,5417,47,90,57,0.208);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3236,4,4,4362,-1879,2375,-82,22,37,0.13);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3237,9,4,4388,-2866,4957,19,-29,-31,0.109);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3238,7,4,6902,-3743,3490,73,68,12,0.065);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3239,9,4,6153,6321,-1630,-39,-12,-74,0.001);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3240,9,4,5889,5694,-1571,-62,-30,-57,0.169);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3241,9,4,6394,6647,-517,18,-66,-9,0.085);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3242,8,4,2771,-1800,5679,-35,37,-3,0.136);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3243,7,4,2399,-2204,4850,-72,55,-88,0.196);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3244,7,4,1176,-1361,5457,-66,-67,-40,0.036);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3245,9,4,-645.729,-8895.62,-1139.64,-175.142,-53.4611,124.196,0.08);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3246,7,4,6999,6862,2195,17,71,3,0.208);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3247,7,4,6993,6917,3092,49,11,-81,0.152);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3248,7,4,5596,6090,2044,8,-35,-25,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3249,9,4,163,2462,5412,2,-54,11,0.182);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3250,4,4,1589,751,6444,30,85,-21,0.181);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3251,9,4,1969,2419,4891,47,22,39,0.012);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3252,7,4,2390,826,4186,-25,1,-1,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3253,7,4,2172,1456,5740,71,42,-52,0.041);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3254,8,4,970,2126,5931,-52,67,-65,0.234);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3255,9,4,1541,-2393,-2569,69,0,-60,0.256);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3256,7,4,781,-3305,-4704,46,51,-80,0.054);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3258,8,4,1950,-2760,-4681,-53,45,-55,0.006);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3260,8,4,1203,-2996,-3381,75,-10,78,0.251);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3261,8,4,1821,-2079,-4104,0,24,-32,0.256);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3262,7,4,1538,-2740,-3044,41,33,74,0.014);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3263,8,4,-5634,-3315,-3150,90,-26,61,0.058);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3264,8,4,-902,2027,-4527,78,86,55,0.009);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3266,8,4,-450,3057,-3288,-43,-83,52,0.077);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3267,8,4,92,1659,-4821,-51,81,18,0.065);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3268,4,4,-1492,1403,-5279,61,80,-6,0.02);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3269,4,4,-2079,3244,-5223,9,78,-36,0.144);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3270,8,4,-2093,2650,-5822,56,-56,-60,0.082);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3271,8,4,-333,1262,-6076,21,88,17,0.026);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3272,8,4,-592,2832,-3552,-59,-17,-13,0.166);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3273,7,4,-645.049,-125641,-12597.2,124.982,-58.6012,-47.6205,0.117);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3274,4,4,359,2157,-5896,61,28,-59,0.145);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3275,8,4,-1275,1447,-5439,-89,83,76,0.285);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3276,9,4,-59,-4828,-768,-9,53,-27,0.233);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3277,8,4,-1923,-6009,-2369,25,-83,81,0.035);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3278,9,4,-460,-3185,-2713,77,56,19,0.3);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3279,9,4,-201,-5248,-3104,-73,1,-40,0.004);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3280,7,4,803,-3237,-2418,28,48,-11,0.091);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3281,9,4,-1151,-5621,-3289,-23,81,26,0.136);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3282,7,4,-1185,-3616,-890,36,20,88,0.063);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3283,8,4,-1689,-3753,-2910,86,-34,8,0.077);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3284,9,4,743,-4484,-3110,70,-32,34,0.07);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3285,9,4,449,-3087,-2281,86,37,78,0.134);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3286,8,4,1013,-3733,-1026,33,33,-58,0.045);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3287,8,4,-470,-3221,-2791,42,-23,-5,0.069);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3288,9,4,-2724,-1134,-7705,-17,-37,-45,0.072);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3289,8,4,-3717,645,-6252,-27,65,-64,0.027);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3290,8,4,-3761,-1767,-4846,24,-49,-58,0.287);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3291,8,4,-2184,582,-5270,-74,90,70,0.157);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3292,4,4,-2308,-1099,-5085,65,-64,-38,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3293,8,4,-2659,336,-6735,-57,3,-59,0.173);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3294,4,4,-3939,-1957,-4888,-55,43,-56,0.097);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3295,4,4,-2945,-692,-6608,-73,-19,16,0.103);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3296,8,4,-1582,-960,-7445,60,-5,84,0.191);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3297,4,4,-2504,-1069,-6745,-31,-55,-18,0.103);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3298,9,4,-4359,576,-5238,-60,-19,27,0.261);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3299,4,4,-2751,-1429,-7486,42,-43,-10,0.061);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3300,4,4,-3483,844,-7301,14,55,-52,0.276);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3301,4,4,-3480,209,-5700,-62,-46,-42,0.104);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3302,9,4,-5218,4890,-5607,69,13,-2,0.139);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3303,7,4,-4564,2295,-5659,87,-35,34,0.144);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3305,4,4,-4107,2328,-7346,-55,-89,-54,0.205);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3306,8,4,-5190,2302,-6248,-68,-84,66,0.26);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3307,7,4,-4485,4073,-7367,43,70,-55,0.221);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3308,7,4,-5500,2711,-5890,69,22,-89,0.044);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3309,8,4,-4519,2365,-6723,56,-48,-10,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3310,7,4,-5307,2828,-7421,-64,63,-37,0.207);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3311,4,4,-5401,3351,-6625,38,-31,-40,0.109);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3313,4,4,-1181,-1968,1554,-45,44,33,0.233);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3314,4,4,-1921,-1335,4182,-33,-42,-31,0.001);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3315,8,4,-2567,-358,2208,-5,71,-53,0.273);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3316,8,4,-2961,-747,4067,78,-15,56,0.133);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3317,9,4,-2188,-1806,1904,84,58,46,0.011);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3318,7,4,-1103,219,4024,-15,-54,7,0.089);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3319,9,4,-1691,-2234,2292,-12,36,-65,0.001);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3320,7,4,-2431,-1763,3553,-42,88,-22,0.29);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3321,7,4,-2778,-287,2290,-58,40,-66,0.006);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3322,8,4,-2692,-964,1908,-2,2,76,0.057);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3323,9,4,-1433,-871,3992,45,-13,52,0.209);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3324,4,4,-1012,-2771,2646,73,33,-11,0.282);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3325,7,4,-3396,-2701,3633,-71,-54,-15,0.242);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3326,7,4,-2750,-1275,2926,51,-60,-15,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3327,9,4,195,-746,-1949,-57,65,-27,0.078);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3328,7,4,1277,-2242,-2142,72,-85,89,0.015);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3329,7,4,2107,-1403,-1227,-59,-5,-86,0.118);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3330,8,4,-1593,2208,6056,18,6,-34,0.121);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3331,7,4,-1353,1263,5124,54,-21,-55,0.18);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3332,4,4,-628,3968,6173,-11,-87,-82,0.036);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3333,7,4,1123,2668,6595,52,18,1,0.139);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3334,7,4,1040,2750,7653,40,19,-89,0.088);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3335,8,4,760,2380,5757,60,26,60,0.172);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3336,4,4,-202,2228,5633,-70,-47,-19,0.135);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3337,9,4,-634,1561,5759,-78,89,25,0.194);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3338,9,4,-1483,3280,7450,-75,-53,74,0.01);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3339,7,4,-120,-3625,-5331,70,-10,-63,0.069);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3340,8,4,-19,-5069,-6670,-78,-62,44,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3341,8,4,396,-2312,2608,39,58,37,0.052);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3342,8,4,-837,-1690,16,-18,-59,79,0.003);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3343,7,4,-600,-2345,1323,53,-69,90,0.024);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3344,4,4,1814,-3951,2264,-44,79,28,0.042);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3345,9,4,1340,-4402,2425,-72,-62,86,0.205);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3346,8,4,-14,-1989,2200,-88,39,-2,0.085);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3347,4,4,956,-3139,874,33,-72,52,0.211);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3348,8,4,-1124,-2806,1554,-80,18,-54,0.258);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3349,4,4,-285,-4376,-205,-1,10,-83,0.176);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3350,7,4,-5847,-5572,455,-85,31,40,0.067);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3351,7,4,-4554,-7208,1300,-81,-12,78,0.251);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3353,8,4,-2077,-2708,3316,-19,-35,69,0.242);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3354,8,4,-2552,-2330,2925,79,66,-55,0.165);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3355,9,4,-580,-1932,4253,73,75,83,0.163);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3356,9,4,-239,-2738,3699,-71,-40,47,0.183);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3357,8,4,-1486,-1008,4037,-18,-47,-29,0.219);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3358,9,4,-1457,-1998,4993,-5,-51,60,0.196);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3359,9,4,-1618,-1616,4340,36,15,37,0.055);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3360,7,4,-1857,-2132,4693,11,-87,89,0.109);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3361,8,4,-836,-3050,3729,28,31,46,0.149);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3362,4,4,-526,-1013,4925,8,-74,33,0.194);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3363,9,4,-2745,-232,4591,78,-7,34,0.133);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3364,7,4,-1458,-682,2671,-9,60,-20,0.237);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3365,9,4,-2119,-1508,2949,-77,56,26,0.284);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3366,9,4,1376,2371,-7189,-59,-10,-32,0.127);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3367,7,4,908,3071,-5520,46,-29,86,0.129);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3368,4,4,-88,1806,-6709,38,-14,23,0.083);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3369,7,4,-672,1822,-4849,-18,12,45,0.038);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3370,7,4,882,3949,-5533,-49,78,-57,0.287);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3371,9,4,839,1589,-4416,80,40,72,0.087);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3372,7,4,-1450,2526,-6901,57,-40,-43,0.068);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3373,9,4,949,1617,-6963,-88,-14,-4,0.246);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3374,8,4,-1524,2776,-5682,82,-64,24,0.04);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3376,8,4,887,2987,-2868,22,-14,-22,0.293);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3377,8,4,513,3177,-3354,66,28,13,0.113);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3378,4,4,1257,1428,-1808,-20,-71,-66,0.173);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3379,8,4,1977,1676,-1719,32,-7,20,0.008);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3380,4,4,519,2356,-3010,82,61,45,0.046);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3381,9,4,1555,1954,-2792,-36,-20,43,0.111);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3382,7,4,3037,902,-3299,-89,-88,-40,0.034);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3383,8,4,926,2305,-2754,72,-6,81,0.182);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3384,9,4,3800,559,-188,-42,-48,29,0.206);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3385,8,4,4428,342,-730,-9,74,25,0.049);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3386,8,4,6414,653,111,-65,28,-58,0.092);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3387,9,4,3747,1456,-973,36,88,61,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3388,4,4,4296,-755,747,-26,-37,-27,0.18);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3389,9,4,4885,1844,-139,-6,-30,5,0.05);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3390,4,4,6155,882,-763,0,-22,32,0.146);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3391,8,4,5696,-5302,-5737,-83,42,-10,0.016);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3392,8,4,1665,821,2727,89,77,-39,0.29);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3393,9,4,2706,1474,4058,47,27,20,0.251);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3394,7,4,2773,-2248,-235,71,-69,-12,0.237);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3395,9,4,1217,-3391,-25,-31,48,2,0.288);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3396,8,4,242,-3552,781,8,-33,69,0.093);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3397,9,4,1746,-2240,-345,-82,45,66,0.119);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3398,8,4,1667,-3654,-573,77,76,57,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3399,9,4,2973,-2758,453,49,39,83,0.101);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3400,4,4,2326,-2094,-457,30,65,48,0.091);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3401,7,4,2553,-2262,944,10,29,76,0.138);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3402,9,4,1179,-1621,522,-66,9,-71,0.18);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3403,8,4,3133,-3776,-1487,-15,-23,24,0.098);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3404,4,4,-4261,-1966,3358,-12,-50,3,0.068);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3405,4,4,-4528,-1171,6176,76,-2,-11,0.131);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3406,4,4,-3476,526,5954,-23,-90,43,0.166);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3407,8,4,-3388,-1244,4348,41,-7,-74,0.02);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3408,8,4,-2764,-1743,5047,-23,76,-83,0.195);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3409,4,4,-4470,-384,5654,65,11,-87,0.074);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3410,9,4,-2514,183,5105,-52,-36,20,0.025);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3411,9,4,-3756,-1468,4327,8,45,73,0.246);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3412,8,4,-3060,553,4391,-58,-76,53,0.195);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3414,4,4,-1242,-6516,3072,-50,-30,10,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3415,9,4,-1168,-7115,2548,63,74,41,0.012);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3416,9,4,-1759,-6631,3603,7,52,69,0.238);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3417,4,4,-2296,-4966,2618,-10,-35,-82,0.174);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3418,7,4,-1267,-7421,3613,51,-87,67,0.123);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3419,8,4,-1048,-6369,4173,51,-70,46,0.177);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3420,4,4,-3117,-494,-8188,-49,-77,54,0.167);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3421,8,4,-2994,423,-6178,38,-62,43,0.29);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3422,4,4,-2524,253,-7906,29,-6,-52,0.094);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3423,9,4,-3870,197,-8077,-29,-36,90,0.171);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3424,7,4,-4959,66,-5639,27,55,-1,0.111);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3425,8,4,-3569,-151,-6945,67,41,50,0.276);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3426,7,4,-1815,1226,-2094,84,-43,-73,0.138);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3427,8,4,-1229,296,-2447,-60,-33,40,0.103);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3428,4,4,-35591.9,-24194.6,-32760.2,-9.57929,-9.99487,96.8314,0.295);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3429,7,4,-510,1592,-1572,-12,-60,-28,0.138);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3430,8,4,-1424,-204,-3052,37,-14,-77,0.15);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3431,9,4,-1782,1236,-1545,87,46,88,0.264);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3432,9,4,110,1030,-3530,-87,62,-46,0.103);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3433,7,4,-2209,733,-2391,15,-84,49,0.267);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3434,9,4,-1420,556,-4134,-70,14,57,0.289);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3435,9,4,-1240,-1025,-2980,59,0,10,0.198);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3436,7,4,5157,1219,-928,-37,-84,-75,0.284);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3437,4,4,3722,795,888,-73,33,62,0.21);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3438,7,4,4871,1493,-57,33,35,-29,0.001);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3439,4,4,4935,179,-1357,-53,-57,41,0.126);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3440,8,4,4937,682,309,31,3,-44,0.256);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3441,4,4,4818,-4643,2194,-82,-65,-26,0.129);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3442,8,4,4639,-5825,3802,25,11,-64,0.266);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3443,7,4,4897,-3448,4305,88,-62,-18,0.195);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3444,4,4,5289,-5844,5095,78,43,71,0.163);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3445,9,4,4412,-4953,2404,43,-55,14,0.075);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3446,4,4,3945,-4356,3053,35,-74,-56,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3447,9,4,4208,-4446,3731,24,-19,35,0.251);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3448,9,4,6294,-4976,4082,63,70,-24,0.081);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3449,8,4,-370,-4109,1074,-53,78,-30,0.187);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3450,7,4,1136,-3606,955,88,-1,15,0.061);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3451,8,4,-307,-3626,2080,-25,54,-68,0.279);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3452,9,4,1433,-3353,1649,-44,70,88,0.156);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3453,4,4,151,-5214,2063,-40,21,-69,0.049);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3455,9,4,-406,-4022,83,50,66,62,0.015);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3456,8,4,1196,-5088,752,64,-83,-45,0.256);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3457,4,4,1470,-4264,262,-89,-86,24,0.187);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3458,8,4,1084,-5491,343,0,77,77,0.101);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3459,8,4,1620,-5797,1401,41,34,9,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3460,9,4,-280,-4506,2481,47,67,-64,0.136);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3461,8,4,-156,-4929,2234,32,-20,52,0.101);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3462,8,4,6182,222,2136,-88,33,56,0.287);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3463,4,4,-5162,3107,6355,-15,26,-8,0.049);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3464,7,4,-4041,3123,5227,-8,-5,-33,0.234);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3465,4,4,-6024,3471,4358,-48,1,75,0.203);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3466,9,4,-2084,4916,3981,26,-33,64,0.295);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3467,4,4,-972.893,7827.64,2702.49,-156.777,25.9857,-41.1674,0.158);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3468,4,4,-2916,4921,4511,-20,-14,3,0.014);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3469,9,4,-2116,4648,2052,1,-76,73,0.173);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3470,7,4,-3692,2886,2705,33,56,11,0.179);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3471,9,4,-1487,2318,3466,31,65,65,0.215);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3472,8,4,-3306.11,-2945.12,988.201,-21.094,81.6647,124.984,0.17);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3473,7,4,-1097,3425,3465,55,29,-33,0.094);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3474,4,4,-3386,3898,3091,-71,-78,-90,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3475,9,4,5154,6870,6127,21,-41,-43,0.288);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3476,7,4,5056,7493,5524,-79,-68,14,0.045);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3477,4,4,4402,7010,4078,64,16,25,0.128);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3478,8,4,5252,5544,5388,-24,20,-2,0.008);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3479,7,4,4483,6522,4191,-70,61,88,0.185);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3480,7,4,3855,6203,4094,-54,-83,51,0.176);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3481,7,4,4975,5553,4615,73,43,-32,0.128);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3482,4,4,5479,7463,5723,84,-52,-42,0.027);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3483,7,4,5278,5398,5882,-28,14,-81,0.243);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3484,4,4,5553,6370,5701,-37,-79,-54,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3485,8,4,5833,6775,4259,64,20,-63,0.237);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3486,7,4,4605,6071,5194,-72,-64,38,0.141);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3487,7,4,4248,7587,3356,66,59,-18,0.214);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3488,7,4,5104,5468,3887,-27,4,17,0.189);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3489,9,4,3891,6784,3641,27,-76,-5,0.159);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3490,7,4,1583,-3786,-2106,-22,27,-88,0.056);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3492,4,4,2294,-5597,-3850,81,10,32,0.225);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3493,9,4,2131,-4540,-2956,63,61,39,0.057);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3494,8,4,3888,-5941,-2839,-6,-24,-76,0.018);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3495,8,4,5153,-6550,3891,-85,44,46,0.048);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3496,4,4,6463,-4743,2093,4,-38,-8,0.187);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3497,8,4,4640,6872,-862,-30,1,28,0.126);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3498,7,4,-6875,5150,5911,-10,25,83,0.205);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3499,7,4,-6355,6243,5088,-15,16,-36,0.091);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3500,4,4,-5370,3745,4526,-90,77,-64,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3501,8,4,-6826,3767,4170,-27,79,75,0.164);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3502,7,4,-4498,6480,5440,5,-45,25,0.112);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3503,8,4,-4630,4928,4373,-69,9,88,0.227);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3504,4,4,-6003,6234,3774,7,-74,-8,0.05);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3505,9,4,-6145,3856,3482,62,-36,-77,0.283);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3506,7,4,-5596,4167,3501,-29,-9,-60,0.024);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3507,4,4,-4858,6052,4714,78,-59,-15,0.23);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3508,8,4,-4490,7658,-5927,-47,-17,29,0.215);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3509,7,4,-5219,6764,-4892,64,68,31,0.291);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3510,8,4,-5011,6363,-3672,-66,24,-7,0.171);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3511,9,4,-5752,7123,-4010,71,-59,-82,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3512,7,4,-4896,5741,-4920,-64,-23,-77,0.211);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3513,7,4,-7142,6813,-5518,-89,8,-28,0.097);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3514,7,4,-4803,7676,-5306,86,-26,-56,0.13);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3515,7,4,-1034,-2955,-4370,-67,-75,-47,0.166);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3516,8,4,-1193,-3251,-6163,-67,1,-70,0.116);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3517,8,4,741,-2549,-3711,-68,39,-88,0.201);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3518,8,4,672,-1511,-3655,-36,87,-79,0.187);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3519,9,4,1016,-1866,-5093,-86,-65,76,0.129);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3521,7,4,-287,-1517,-3824,-13,-22,-23,0.21);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3522,9,4,-513,-1932,-4166,32,-46,7,0.286);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3523,7,4,197,-2258,-5021,-80,7,-29,0.003);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3524,8,4,-571,-1749,-3935,-75,11,-68,0.257);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3525,7,4,-1340,-1272,-5529,-4,5,10,0.188);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3526,7,4,-1565,-3245,-5915,-46,-72,-82,0.1);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3527,8,4,-4998,3907,-6046,-62,8,-71,0.297);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3528,4,4,-5388,1634,-6488,19,29,84,0.146);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3529,7,4,-6333,2980,-4423,68,-47,46,0.087);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3530,7,4,-6466,2417,-5709,-39,-32,-36,0.265);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3531,7,4,-6060,1636,-5774,-31,-65,-81,0.059);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3532,7,4,-5550,2997,-4150,-21,-67,76,0.061);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3533,9,4,-7005,722,-1395,-85,-53,-75,0.221);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3534,9,4,-7463,1537,-1534,-43,37,69,0.02);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3535,4,4,1573,3874,-5107,-44,-35,-81,0.085);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3537,8,4,1271,2114,-4414,-22,36,-11,0.135);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3538,7,4,904,3534,-4041,-49,-15,-71,0.194);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3539,7,4,734,4218,-5009,89,82,-84,0.203);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3540,7,4,-423,3775,-4439,32,75,11,0.138);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3541,9,4,-689,3378,-6162,90,-84,52,0.29);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3542,8,4,-6976,-3376,-1342,88,63,43,0.064);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3543,4,4,-2928.34,-2300.39,-5715.59,111.42,22.5815,-59.0733,0.258);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3544,8,4,-5179,-3552,942,-8,-35,57,0.241);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3545,9,4,-6756,-2788,212,-17,80,80,0.226);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3546,7,4,-4980,-1111,1201,-51,-11,-76,0.123);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3547,7,4,-8986.08,-2384.61,6331.64,77.9507,73.8938,55.0521,0.066);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3548,4,4,-4862,-3124,119,-64,63,17,0.133);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3549,4,4,-6496,-3978,-921,15,48,72,0.239);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3550,9,4,-6969,-1627,657,12,26,-5,0.08);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3551,9,4,-6570,-2334,-142,43,-57,-53,0.291);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3552,8,4,6375,140,-6118,1,58,-31,0.098);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3553,4,4,5141,-247,-6334,-26,-90,-8,0.012);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3554,4,4,5433,-1353,-5988,-84,64,-10,0.165);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3555,8,4,-6709,4014,-1207,-69,64,-77,0.075);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3556,8,4,-5267,3209,-2465,-5,15,19,0.23);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3557,7,4,-5219,3806,195,-39,-86,-62,0.018);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3558,4,4,-6787,5159,118,-39,44,-8,0.04);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3559,7,4,-5109,3812,-380,-80,10,-31,0.261);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3560,8,4,-5218,3150,-2086,-25,40,9,0.253);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3561,7,4,-6285,4476,17,49,78,90,0.175);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3562,7,4,-6291,4235,-494,-22,-67,50,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3563,8,4,-4767,3759,-2399,73,71,-81,0.205);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3564,8,4,-3992,4245,-161,-4,18,15,0.273);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3565,8,4,-4697,4836,-1271,-49,61,35,0.248);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3566,8,4,-6071,3222,-1748,30,66,70,0.135);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3567,4,4,-3925,3763,-1466,22,9,9,0.272);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3568,7,4,-5063,3314,358,-23,-33,75,0.005);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3569,4,4,-5558,-7501,-6013,-30,-27,39,0.246);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3570,4,4,-3880,-7630,-7030,-19,63,-62,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3571,9,4,-6312,-6236,-5919,25,81,4,0.241);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3572,7,4,-6046,-8118,-6883,77,-11,61,0.15);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3573,9,4,-5197,-7909,-7363,-55,-13,45,0.152);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3574,7,4,-6704,-6860,-6026,-82,-68,-63,0.044);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3575,8,4,-6633,-7085,-5584,-19,-12,-62,0.3);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3576,8,4,-6102,-7702,-5351,-45,48,69,0.281);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3577,4,4,-5350,-8278,-6915,7,73,84,0.219);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3578,8,4,-2511,6633,-6716,-71,-62,7,0.258);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3579,7,4,-703,5404,-5733,-37,31,8,0.123);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3580,9,4,-1512,5835,-7878,-46,-7,-69,0.029);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3581,4,4,-1223,5876,-6774,24,11,-48,0.271);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3582,9,4,-2526,4977,-6413,-18,-55,24,0.215);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3583,4,4,-1742,4990,-7209,90,-35,-62,0.232);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3584,7,4,-2427,5605,-6764,63,-58,81,0.06);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3585,4,4,-1699,5707,-5017,10,-23,84,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3586,7,4,-3158,5990,-6125,5,1,68,0.255);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3588,7,4,-3256,5500,-5573,-37,-84,-18,0.03);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3589,7,4,-1496,5410,-6883,20,-72,40,0.004);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3590,9,4,5021,2209,6934,-81,81,7,0.191);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3591,9,4,5541,2225,6407,30,-35,87,0.214);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3592,4,4,4795,3069,5459,-63,-5,46,0.259);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3593,4,4,4373,4005,5356,-39,69,66,0.071);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3594,9,4,6503,3538,6472,32,46,-88,0.071);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3595,4,4,4263,1178,6852,7,-46,79,0.264);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3596,8,4,-3198,-551,973,47,-13,-41,0.152);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3597,8,4,-3817,-1196,-537,58,-76,22,0.294);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3598,9,4,-3852,-1688,1683,80,87,-49,0.048);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3599,9,4,-4599,124,572,45,-26,-39,0.019);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3600,4,4,-2025,-959,-325,16,-48,7,0.253);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3601,9,4,-4475,-226,971,19,-65,-28,0.213);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3602,7,4,4084,-4904,-2172,53,69,80,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3603,4,4,5107,-5446,-3056,45,85,-32,0.097);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3604,7,4,5979,-4681,-1292,23,-13,-38,0.225);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3605,8,4,3088,-3447,-3257,59,-71,-68,0.3);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3606,7,4,3376,-2634,-3383,85,68,73,0.042);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3607,7,4,5243,-3884,-1460,-3,3,-48,0.093);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3608,8,4,5298,-4419,-891,79,-34,55,0.074);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3610,8,4,3403,-4418,-2781,41,34,-86,0.253);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3611,8,4,3182,-4521,-3074,69,-82,42,0.025);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3612,4,4,5808,-3178,-3604,-30,46,-61,0.263);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3613,9,4,-2582,6125,1844,-36,-5,0,0.195);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3614,9,4,-270,4519,1362,46,81,-65,0.182);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3615,9,4,120,5057,403,80,-19,-64,0.213);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3616,8,4,-182,4927,2841,17,2,80,0.194);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3617,4,4,890,-5754,4320,-27,-79,-27,0.089);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3618,4,4,-6174.84,-29110.1,-2785.68,146.11,40.5688,-71.8605,0.023);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3619,8,4,2536,-5049,2725,59,-34,70,0.139);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3620,4,4,997,-3680,1647,1,4,-77,0.015);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3621,8,4,1823,-6102,2225,-56,-89,17,0.132);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3622,8,4,2782,-3693,2425,12,-79,-81,0.008);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3623,9,4,1087,-4733,2224,-6,-67,-35,0.197);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3624,4,4,1293,-5161,3798,20,-10,-82,0.16);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3625,8,4,2096,-4195,1924,-48,30,50,0.049);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3626,8,4,7281,1315,-8271,-89,78,73,0.237);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3627,4,4,6844,671,-8339,13,-89,65,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3628,4,4,5993,1344,-5880,89,-55,16,0.165);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3629,4,4,7936,-113,-8212,-26,-16,-73,0.205);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3630,8,4,3013,4404,4988,-76,19,36,0.034);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3631,4,4,-47.507,-2531.92,-2860.17,-36.2106,-48.2902,-48.3456,0.126);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3632,9,4,-8224.48,-7045.08,778.214,43.2902,-46.6968,-58.307,0.21);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3633,8,4,-4630,-5555,-1320,-55,-64,-77,0.107);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3634,9,4,-5057,-5445,-1965,53,38,-75,0.229);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3635,9,4,-3272,-4524,-2189,30,-3,56,0.106);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3636,8,4,-3481,-4637,-813,13,-48,36,0.024);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3637,7,4,-4439,-511,3479,3,-44,71,0.249);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3638,4,4,-5228,797,2308,27,87,14,0.06);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3639,9,4,-6761,987,3385,-24,-69,-48,0.217);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3640,9,4,-5470,660,3730,71,43,8,0.164);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3641,7,4,-6026,571,2007,84,-29,22,0.225);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3642,8,4,-4383,-428,3622,-7,18,-23,0.049);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3643,9,4,-6132,222,3458,7,44,18,0.173);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3644,4,4,-5169,-149,1702,-45,80,-43,0.123);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3645,8,4,-7204,1440,1586,48,15,3,0.026);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3646,8,4,-5607,-447,884,-38,-83,-2,0.279);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3647,9,4,-6817,6109,2348,-85,12,79,0.009);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3648,4,4,-6754,3788,2164,-46,37,-69,0.2);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3649,7,4,-5511,5555,3054,-53,36,18,0.17);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3650,9,4,-7494,5042,4022,-53,-52,75,0.172);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3651,7,4,-7089,5021,3656,49,61,-27,0.27);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3652,7,4,-6105,4190,1639,58,-32,-82,0.18);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3653,4,4,-5111,5432,-2870,-43,-5,-30,0.026);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3654,9,4,-4957,4452,-3395,70,54,-51,0.089);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3655,7,4,-3740,4022,-3151,-62,-53,-70,0.056);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3656,7,4,-5267,4721,-2445,-10,44,-30,0.082);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3657,7,4,-5902,3800,-4549,-14,-57,-56,0.057);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3658,7,4,-5546,4982,-2261,61,56,19,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3659,7,4,-5540,4330,-2421,83,-84,-71,0.272);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3660,8,4,-3776,5683,-4878,-31,18,-58,0.279);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3661,9,4,-5188,4877,-3287,-43,-90,87,0.105);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3662,8,4,-4120,6494,-3011,-58,86,-4,0.119);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3663,8,4,-5851,6179,-4355,67,-84,60,0.201);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3664,4,4,-5143,4605,-2338,82,1,15,0.077);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3665,9,4,2455,4372,5425,-7,-3,-85,0.262);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3666,7,4,788,3706,6140,9,48,18,0.106);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3667,8,4,1513,1697,4163,-54,76,-27,0.281);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3668,9,4,2847,3583,5206,39,30,-50,0.125);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3669,8,4,1011,2545,5564,25,-1,74,0.071);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3670,4,4,1221,3708,4440,57,-73,-10,0.204);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3671,7,4,1664,4318,6337,33,-24,75,0.208);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3672,8,4,2393,3984,5396,-37,13,36,0.161);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3673,4,4,-976,-5028,-4758,59,43,-88,0.16);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3674,9,4,-589,-4279,-3980,36,18,39,0.118);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3675,9,4,-119,-4286,-4495,-86,59,59,0.106);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3676,7,4,-1197,-5081,-3728,-24,19,37,0.047);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3677,4,4,-1504,-4574,-4315,-76,-43,-9,0.135);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3678,4,4,-780,-1097,-4246,-84,-1,-26,0.015);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3679,7,4,-580,-330,-4296,75,-48,-57,0.112);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3680,7,4,341,279,-3155,81,-80,-60,0.202);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3681,4,4,1010,-1575,-2590,-19,-41,-24,0.186);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3682,9,4,-1099,-1927,-3107,41,-86,23,0.014);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3683,4,4,2857,7405,799,40,8,77,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3684,4,4,2372,4792,1562,-62,31,54,0.157);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3685,8,4,529,5743,1059,-60,-15,66,0.245);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3686,8,4,2326,5375,517,-20,-50,-76,0.122);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3687,4,4,2999.86,4758.96,3822.3,176.883,-57.3909,-90.4113,0.27);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3688,8,4,1654,5473,1222,-82,78,55,0.091);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3689,9,4,3788.14,5194.04,-2574.21,-63.9312,13.4569,67.5332,0.25);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3690,8,4,3105,7036,-227,-23,-47,-57,0.13);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3691,4,4,-1258,1892,3047,24,80,90,0.14);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3692,8,4,-1872,2533,4222,-86,7,20,0.287);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3693,7,4,-369,2459,4188,49,24,34,0.141);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3696,9,4,1932,6768,7085,24,2,-11,0.292);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3697,4,4,208,6839,7522,-10,59,-51,0.24);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3698,9,4,2503,5411,8066,-22,-18,-84,0.291);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3699,7,4,2604.48,426.862,6300.33,69.7919,1.70395,65.8438,0.182);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3700,8,4,2427,5503,6423,-69,84,64,0.171);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3701,9,4,627,4878,7446,-29,-34,-15,0.086);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3702,9,4,1550,4354,8380,-45,88,80,0.218);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3703,4,4,1336,4941,7899,-65,-23,-19,0.226);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3704,8,4,1120,4329,7265,36,-66,-51,0.154);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3705,4,4,1159,7161,6689,47,-48,2,0.263);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3707,4,4,1058,6715,7998,-54,63,-3,0.058);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3708,4,4,573,5909,6192,-41,-53,89,0.126);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3709,8,4,917,6910,5616,-63,-20,70,0.108);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3710,8,4,176,4408,8045,75,46,-68,0.01);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3711,7,4,1081,2632,-2659,32,31,90,0.022);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3712,8,4,1881,2946,-415,-87,4,-36,0.251);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3713,8,4,306,3071,-1866,-60,73,72,0.281);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3714,7,4,1431,4428,-1514,90,64,-65,0.291);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3715,9,4,981,2015,-1070,89,71,43,0.154);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3716,7,4,1957,3189,-2560,73,-55,34,0.172);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3717,4,4,3887.79,-10545.3,-16316,70.4949,35.2742,-64.5797,0.299);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3718,7,4,1093,3078,-2754,59,-20,-78,0.263);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3719,9,4,-614,2639,-227,-39,-15,-59,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3720,8,4,1113,2018,-919,47,-38,61,0.021);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3721,8,4,568,3768,-1603,-12,90,44,0.198);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3722,7,4,258,3990,-1036,-40,62,84,0.284);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3723,9,4,561,4555,-2948,-15,77,69,0.169);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3724,9,4,-190,2604,-2512,-30,33,-86,0.22);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3725,8,4,84,673,-6001,-88,-12,-39,0.204);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3726,8,4,-672,502,-6213,20,60,-77,0.198);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3727,4,4,45,1192,-6093,-48,-47,-1,0.001);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3728,8,4,705,572,-5068,-38,-73,-45,0.265);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3729,4,4,-1006,-747,-4615,-18,84,-40,0.028);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3730,7,4,-1582,861,-6660,2,49,-52,0.22);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3731,8,4,-43,125,-4596,80,-48,49,0.083);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3732,7,4,310,658,-6495,47,-87,66,0.106);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3733,7,4,934,-353,-5725,85,86,-53,0.249);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3734,4,4,-1607,1148,-6700,15,40,6,0.127);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3735,8,4,-1302,398,-6287,22,74,-63,0.232);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3736,9,4,160,55,-5897,49,-83,54,0.228);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3737,9,4,6318,-2323,4572,38,-65,63,0.236);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3738,4,4,6998,-3661,2646,-27,13,-67,0.269);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3739,7,4,7134,-1929,2508,-2,-63,-35,0.24);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3740,8,4,6547,-3374,4693,-79,14,-14,0.211);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3741,8,4,5350,-1427,4363,42,-27,-24,0.037);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3742,8,4,7041,-821,4936,3,-27,-19,0.164);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3743,4,4,8342,-2893,5131,5,-90,-1,0.204);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3744,8,4,7211,-1933,2292,68,-32,-28,0.196);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3745,4,4,7335,-1529,4252,-88,84,6,0.022);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3746,4,4,7804,-1297,3847,74,-76,-46,0.115);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3748,7,4,5893,-1200,4139,-76,-50,63,0.29);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3749,7,4,-2516,-2632,-5628,-63,-66,36,0.226);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3750,4,4,-4215,-2939,-6502,-77,26,-78,0.128);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3751,4,4,-2384,-4770,-5803,38,56,-67,0.047);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3752,7,4,6301,-5334,-5680,5,90,-37,0.047);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3753,4,4,6747,-4721,-5312,86,-18,-15,0.258);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3754,8,4,5975,-7081,-6477,28,52,-81,0.154);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3755,4,4,6335,-4673,-6605,66,-58,48,0.206);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3756,9,4,7717,-7491,-5957,38,-7,-63,0.157);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3757,4,4,6973,-7477,-5262,43,-57,-43,0.105);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3758,8,4,7377,-7305,-4707,-45,-86,-19,0.273);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3759,7,4,7486,-5776,-6562,-2,-26,-83,0.289);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3760,9,4,7717,-5786,-6462,-7,36,-4,0.131);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3761,4,4,7176,-5565,-7208,-42,-88,60,0.138);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3762,9,4,7769,-6116,-6873,-12,55,72,0.259);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3763,9,4,7179,-5942,-4736,14,-87,42,0.191);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3764,8,4,5911,-6086,-5194,-46,82,-29,0.15);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3765,9,4,-6099,-2860,6306,79,87,-19,0.217);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3766,9,4,-5877,-3285,4737,-85,88,-60,0.099);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3767,9,4,-5021,-5159,5265,-37,-88,45,0.11);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3768,8,4,-6103,-2264,6046,-37,84,-7,0.214);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3769,9,4,-7441,-3109,6342,-84,-17,-89,0.002);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3770,7,4,-4976,-3915,4378,-45,-45,-27,0.068);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3771,9,4,-5744,-2278,5597,-54,-66,11,0.123);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3772,4,4,-7427,-4525,4586,-47,11,68,0.295);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3773,9,4,-6940,-4443,5365,62,-51,5,0.041);
insert  into `star014_asteroid`(`star014_id`,`star014_template_star013`,`star014_zone_star011`,`star014_posx`,`star014_posy`,`star014_posz`,`star014_hprh`,`star014_hprp`,`star014_hprr`,`star014_scale`) values (3774,8,4,-5292,-3142,6429,-19,-26,9,0.259);

/*Table structure for table `star015_junk` */

DROP TABLE IF EXISTS `star015_junk`;

CREATE TABLE `star015_junk` (
  `star015_id` int(11) NOT NULL AUTO_INCREMENT,
  `star015_zone_star011` int(11) DEFAULT NULL,
  `star015_posx` float DEFAULT '0',
  `star015_posy` float DEFAULT '0',
  `star015_posz` float DEFAULT '0',
  `star015_hprh` float DEFAULT '0',
  `star015_hprp` float DEFAULT '0',
  `star015_hprr` float DEFAULT '0',
  PRIMARY KEY (`star015_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `star015_junk` */

insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (31,1,799.966,-2840.91,210.603,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (32,1,1086.81,834.194,991.584,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (33,1,947.754,362.94,711.282,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (34,1,1234.92,-754.027,282.831,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (35,1,200.828,-3839.43,-354.722,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (36,1,0.0863331,-3148.4,-382.524,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (37,1,176.366,1333.04,120.157,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (38,1,0,0,0,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (50,1,-953.825,1631.15,1550.15,0,0,0);
insert  into `star015_junk`(`star015_id`,`star015_zone_star011`,`star015_posx`,`star015_posy`,`star015_posz`,`star015_hprh`,`star015_hprp`,`star015_hprr`) values (51,1,-946.308,1049.08,996.407,0,0,0);

/*Table structure for table `star016_reactor` */

DROP TABLE IF EXISTS `star016_reactor`;

CREATE TABLE `star016_reactor` (
  `star016_id` int(11) NOT NULL AUTO_INCREMENT,
  `star016_energy` int(11) DEFAULT NULL,
  PRIMARY KEY (`star016_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star016_reactor` */

insert  into `star016_reactor`(`star016_id`,`star016_energy`) values (1,100);

/*Table structure for table `star017_engine` */

DROP TABLE IF EXISTS `star017_engine`;

CREATE TABLE `star017_engine` (
  `star017_id` int(11) NOT NULL AUTO_INCREMENT,
  `star017_acceleration` int(11) NOT NULL,
  `star017_speed` int(11) NOT NULL,
  `star017_sound` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`star017_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `star017_engine` */

insert  into `star017_engine`(`star017_id`,`star017_acceleration`,`star017_speed`,`star017_sound`) values (1,5,75,'/sounds/19108__jace__engine-hum.ogg');
insert  into `star017_engine`(`star017_id`,`star017_acceleration`,`star017_speed`,`star017_sound`) values (2,7,150,'/sounds/19108__jace__engine-hum.ogg');

/*Table structure for table `star018_weapon` */

DROP TABLE IF EXISTS `star018_weapon`;

CREATE TABLE `star018_weapon` (
  `star018_id` int(11) NOT NULL AUTO_INCREMENT,
  `star018_damage` int(11) NOT NULL,
  `star018_range` int(11) NOT NULL,
  `star018_egg` varchar(80) NOT NULL,
  `star018_cadence` float NOT NULL,
  `star018_speed` int(11) NOT NULL,
  `star018_weapon_sound` varchar(255) DEFAULT NULL,
  `star018_bullet_sound` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`star018_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `star018_weapon` */

insert  into `star018_weapon`(`star018_id`,`star018_damage`,`star018_range`,`star018_egg`,`star018_cadence`,`star018_speed`,`star018_weapon_sound`,`star018_bullet_sound`) values (1,10,10000,'sphere.bam',0.3,1000,'','/sounds/enemy_laser.ogg');
insert  into `star018_weapon`(`star018_id`,`star018_damage`,`star018_range`,`star018_egg`,`star018_cadence`,`star018_speed`,`star018_weapon_sound`,`star018_bullet_sound`) values (2,50,10000,'spherered.bam',1.5,3000,'','/sounds/enemy_laser.ogg');
insert  into `star018_weapon`(`star018_id`,`star018_damage`,`star018_range`,`star018_egg`,`star018_cadence`,`star018_speed`,`star018_weapon_sound`,`star018_bullet_sound`) values (3,20,10000,'spheregreen.bam',0.7,1200,NULL,'/sounds/enemy_laser.ogg');
insert  into `star018_weapon`(`star018_id`,`star018_damage`,`star018_range`,`star018_egg`,`star018_cadence`,`star018_speed`,`star018_weapon_sound`,`star018_bullet_sound`) values (4,30,10000,'beam.bam',1,2000,NULL,'/sounds/enemy_laser.ogg');

/*Table structure for table `star019_radar` */

DROP TABLE IF EXISTS `star019_radar`;

CREATE TABLE `star019_radar` (
  `star019_id` int(11) NOT NULL AUTO_INCREMENT,
  `zz` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`star019_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star019_radar` */

/*Table structure for table `star020_stockbay` */

DROP TABLE IF EXISTS `star020_stockbay`;

CREATE TABLE `star020_stockbay` (
  `star020_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`star020_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star020_stockbay` */

/*Table structure for table `star021_slot_typeitem` */

DROP TABLE IF EXISTS `star021_slot_typeitem`;

CREATE TABLE `star021_slot_typeitem` (
  `star021_typeitem_star003` int(11) NOT NULL,
  `star021_slot_star009` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star021_slot_typeitem` */

insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,2);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,1);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,3);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,4);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,5);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,4);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,5);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,4);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,5);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,4);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,5);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,1);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,2);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3272);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,3272);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3273);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,3273);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3272);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,3272);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3273);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,3273);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,3396);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,3396);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3397);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,3397);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,3398);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3400);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,3400);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,3401);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,3401);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,699);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,3401);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,3273);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6125);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6125);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6126);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6126);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6127);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6128);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6128);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6128);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6128);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6129);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6129);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6129);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6129);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6130);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6130);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6130);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6130);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6134);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6134);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6135);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6135);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6136);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6137);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6137);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6137);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6137);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6138);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6138);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6138);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6138);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6139);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6139);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6139);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6139);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6149);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6149);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6150);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6150);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6151);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6152);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6152);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6152);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6152);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6153);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6153);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6153);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6153);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6154);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6154);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6154);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6154);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (3,4);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (12,1);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6284);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6284);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (12,6284);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6285);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6285);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6286);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6287);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6287);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6287);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6287);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (3,6287);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6288);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6288);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6288);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6288);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6289);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6289);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6289);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6289);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6290);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6290);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (12,6290);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (2,6291);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (10,6291);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6292);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6293);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6293);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6293);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6293);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (3,6293);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6294);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6294);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6294);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6294);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (4,6295);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (5,6295);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (6,6295);
insert  into `star021_slot_typeitem`(`star021_typeitem_star003`,`star021_slot_star009`) values (1,6295);

/*Table structure for table `star022_station` */

DROP TABLE IF EXISTS `star022_station`;

CREATE TABLE `star022_station` (
  `star022_zone_star011` int(11) NOT NULL AUTO_INCREMENT,
  `star022_posx` float NOT NULL,
  `star022_posy` float NOT NULL,
  `star022_posz` float NOT NULL,
  `star022_hprh` float NOT NULL DEFAULT '0',
  `star022_hprp` float NOT NULL DEFAULT '0',
  `star022_hprr` float NOT NULL DEFAULT '0',
  `star022_mass` float NOT NULL,
  `star022_screen` varchar(80) NOT NULL,
  `star022_inzone_star011` int(11) NOT NULL,
  PRIMARY KEY (`star022_zone_star011`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `star022_station` */

insert  into `star022_station`(`star022_zone_star011`,`star022_posx`,`star022_posy`,`star022_posz`,`star022_hprh`,`star022_hprp`,`star022_hprr`,`star022_mass`,`star022_screen`,`star022_inzone_star011`) values (3,15,800,200,0,0,0,1000,'intostation.jpg',1);
insert  into `star022_station`(`star022_zone_star011`,`star022_posx`,`star022_posy`,`star022_posz`,`star022_hprh`,`star022_hprp`,`star022_hprr`,`star022_mass`,`star022_screen`,`star022_inzone_star011`) values (5,800,800,800,0,0,0,1000,'intostation.jpg',4);

/*Table structure for table `star023_keyword` */

DROP TABLE IF EXISTS `star023_keyword`;

CREATE TABLE `star023_keyword` (
  `star023_id` int(11) NOT NULL AUTO_INCREMENT,
  `star023_label` varchar(80) NOT NULL,
  PRIMARY KEY (`star023_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `star023_keyword` */

insert  into `star023_keyword`(`star023_id`,`star023_label`) values (1,'Station');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (2,'Empire');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (5,'Bonjour');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (6,'Menage');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (7,'Recolter');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (8,'Visite');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (9,'entrainement');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (10,'Collegues');
insert  into `star023_keyword`(`star023_id`,`star023_label`) values (11,'collecte');

/*Table structure for table `star024_typedialogue` */

DROP TABLE IF EXISTS `star024_typedialogue`;

CREATE TABLE `star024_typedialogue` (
  `star024_id` int(11) NOT NULL AUTO_INCREMENT,
  `star024_label` varchar(80) NOT NULL,
  PRIMARY KEY (`star024_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `star024_typedialogue` */

insert  into `star024_typedialogue`(`star024_id`,`star024_label`) values (1,'dialogue');
insert  into `star024_typedialogue`(`star024_id`,`star024_label`) values (2,'rumeur');
insert  into `star024_typedialogue`(`star024_id`,`star024_label`) values (3,'mission');

/*Table structure for table `star025_dialogue` */

DROP TABLE IF EXISTS `star025_dialogue`;

CREATE TABLE `star025_dialogue` (
  `star025_id` int(11) NOT NULL AUTO_INCREMENT,
  `star025_text` text NOT NULL,
  `star025_idtype_star024` int(11) NOT NULL,
  `star025_proba` int(11) NOT NULL DEFAULT '100',
  `star025_readonce` tinyint(4) NOT NULL DEFAULT '0',
  `star025_dialogue_star025` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`star025_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `star025_dialogue` */

insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (1,'Tu es dans une station au bout de tout.\\2n On envoie les nouveaux dans une station tranquille, et sans histoire pour commencer.\\2n \\2n \\2n \\2n \\2n \\2n \\2n \\2nBah oui, faut bien le temps que tu t adaptes a la nouvelle situation, et que tes neurones se remettent en route.\\2n \\2n \\2n \\2n \\2n \\2n \\2n \\2nAlors on va commencer soft. Tu vas aller casser quelques cailloux a l ancienne, tu verras rien d extraordinaire, mais rien de tel pour se derouiller.\\2n \\2n \\2n \\2n \\2n \\2n \\2n \\2nBon maintenant il y a du boulot, et faut le faire, alors arrete de trainer dans mes pattes, c est pas comme si cela me plaisait d etre ici non plus, a torcher des culs.\\2n On me file toujours des sorties de frigo, si je pouvais avoir un vrai pilote pour une fois pour faire le menage.',1,100,0,5);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (2,'L empire est la, et il a toujours ete la.\\2n Les tetes changent, mais l Empire reste.\\2n On y peut rien, et il faut faire le travail!',1,100,0,5);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (3,'Bah oui, tu parles, on est au bout de l univers, alors forcement tous les pirates du coin, ils en profitent.\\2n On est juste une station miniere alors ca va, ils viennent nous faire chier qu une fois tous les X cycles, vu qu on n a que du minerai.\\2nIls viennent faire leur shopping en somme.\\2nBon moi cela fout bien les boules, j ai des quotas a remplir quand meme si un jour, je veux me sortir d ici, faudrait reussir a les arreter.\\2nPirates de mes deux!\\2nSi j avais un pilote qui valait quelque chose, je pourrai envoyer une escadrille nettoyer ce nid de felons!',1,100,0,1);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (4,'Oui, un vaisseau t attend dans le hangar.\\2n Il est equipe specialement pour cela. Alors ne t attend pas a faire des merveilles pour l instant, ni a jouer l as des as.\\2n \\2n \\2n \\2nSi tu t en sors bien, on verra pour mieux t equiper, et nous aider a la protection de la base.\\2nVa falloir que tu gagnes ta croute, alors va falloir t y mettre.',1,100,0,3);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (5,'Bonjour le nouveau,\\2n \\2nPas trop froid? Tu sors du frigo, alors ne t inquiete pas, tu vas avoir des nausees, et une sensation de froid qui va durer un certain temps.\\2n \\2nJ avais demande des recrues fraiches, mais je ne pensais pas que cela aurait ete pris au pied de la lettre. Je ferai attention la prochaine fois.\\2n \\2nJe vais t expliquer rapidement la situation. Comme tu vois, tu as ete decongele dans l espace. Ce n est pas ce que tu crois, tu n attends pas en orbite d une fabuleuse planete.\\2n \\2nOn a fait, comme on dirait, une petite pause pique nique, pour se ravitailler, et moi je dois fournir des metaux, alors tu es ici, pour aller en recolter.',1,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (6,'Maintenant que vous connaissez mieux ce qui se passe dans votre nouveau monde, il serait bon que vous appreniez a utiliser votre rafiot.\\2n\\2nAvant de vous donner des missions importantes, j\'aimerai que vous ayez un minimum de formation.\\2n\\2nPour cela, rendez vous dans la zone 2, ou machin vous y attend. Il vous expliquera comment vous servir de cette guimbarde, en vous entrainant sur des drones.\\2n\\2nHa en passant, il m\'avez demande un certain nombre de materiels pour sa station, vous pourriez lui apporter en passant?',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (7,'Y a quelque chose que tu n\'as pas compris?\\2nTu vas dans cette foutue station, et tu parles a machin\\2nFaut te decongeler completement mon pauvre!!!',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (8,'Merci pour la livraison, vous avez ete efficace!',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (9,'Il est temps d aller vous entrainer\\2nIl y a quelques drones qui trainent dans les parages, allez en detruire 5 pour vous amuser, et revenez me voir une fois termine.',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (10,'Ce n etait pas dur.',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (11,'Vous etes arrives en groupe ces derniers temps.\\1n\\1nJ aimerai que vous montriez aux autres comment cela se passe ici, et demontrez votre leadership.\\1n\\1nAllez pourchasser quelques uns de vos camarades la dehors. Je suis sur que vous y prendrez plaisir.\\1n\\1nNe vous inquietez pas, cela n aura aucun impact sur eux. Je leur fournirai une vieille brouette, j en ai des tas a ecouler.\\1n',3,100,0,10);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (12,'Alors vous vous etes faits plaisirs en chassant vos petits camarades?\\1n\\1nPas assez apparemment, il vous en manque au compteur.\\1n\\1nAu lieu de me distraire, retournez vous amuser.',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (13,'Alors comment c etait de chasser des rookies?\\1n\\1nNe faites pas le fier a bras. Ce n etait que des rookies, et vos competences de vol sont encore loin d un vrai pilote.\\1n\\1nParlez en aux Celestes quand vous serez abattus.\\1n\\1nMais cela suffira pour une premiere fois.\\1n\\1nJ ai mieux a faire que vous maternez, allez trouver quelqu un d autre pour vous chanter une berceuse.',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (14,'Miner, Miner, Miner telle est la devise du centre.\\1n\\1nJ ai besoin de 500 minerai de fer rapidement. Aller me collecter ces minerais.',3,100,0,0);
insert  into `star025_dialogue`(`star025_id`,`star025_text`,`star025_idtype_star024`,`star025_proba`,`star025_readonce`,`star025_dialogue_star025`) values (15,'Merci',3,100,0,0);

/*Table structure for table `star026_dialogue_keyword` */

DROP TABLE IF EXISTS `star026_dialogue_keyword`;

CREATE TABLE `star026_dialogue_keyword` (
  `star026_dialogue_star025` int(11) NOT NULL,
  `star026_keyword_star023` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star026_dialogue_keyword` */

insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (3,6);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (6,8);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (7,8);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (8,8);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (9,9);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (10,9);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (12,10);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (13,10);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (11,10);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (14,11);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (15,11);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (4,7);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (1,1);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (2,2);
insert  into `star026_dialogue_keyword`(`star026_dialogue_star025`,`star026_keyword_star023`) values (5,5);

/*Table structure for table `star027_npc_station` */

DROP TABLE IF EXISTS `star027_npc_station`;

CREATE TABLE `star027_npc_station` (
  `star027_id` int(11) NOT NULL AUTO_INCREMENT,
  `star027_name` varchar(80) NOT NULL,
  `star027_location_star022` int(11) NOT NULL,
  `star027_face` varchar(80) NOT NULL,
  `star027_type_star057` int(11) NOT NULL,
  PRIMARY KEY (`star027_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `star027_npc_station` */

insert  into `star027_npc_station`(`star027_id`,`star027_name`,`star027_location_star022`,`star027_face`,`star027_type_star057`) values (1,'Nina',3,'face3',1);
insert  into `star027_npc_station`(`star027_id`,`star027_name`,`star027_location_star022`,`star027_face`,`star027_type_star057`) values (2,'Joe',3,'face1',2);
insert  into `star027_npc_station`(`star027_id`,`star027_name`,`star027_location_star022`,`star027_face`,`star027_type_star057`) values (3,'Ben',5,'face1',2);

/*Table structure for table `star028_npc_dialogue` */

DROP TABLE IF EXISTS `star028_npc_dialogue`;

CREATE TABLE `star028_npc_dialogue` (
  `star028_npc_star027` int(11) NOT NULL,
  `star028_dialogue_star025` int(11) NOT NULL,
  `star028_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star028_npc_dialogue` */

insert  into `star028_npc_dialogue`(`star028_npc_star027`,`star028_dialogue_star025`,`star028_default`) values (1,1,0);
insert  into `star028_npc_dialogue`(`star028_npc_star027`,`star028_dialogue_star025`,`star028_default`) values (1,2,0);
insert  into `star028_npc_dialogue`(`star028_npc_star027`,`star028_dialogue_star025`,`star028_default`) values (1,5,0);
insert  into `star028_npc_dialogue`(`star028_npc_star027`,`star028_dialogue_star025`,`star028_default`) values (1,3,0);
insert  into `star028_npc_dialogue`(`star028_npc_star027`,`star028_dialogue_star025`,`star028_default`) values (1,4,0);

/*Table structure for table `star029_character_dialogue` */

DROP TABLE IF EXISTS `star029_character_dialogue`;

CREATE TABLE `star029_character_dialogue` (
  `star029_dialogue_star025` int(11) NOT NULL,
  `star029_character_star002` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star029_character_dialogue` */

insert  into `star029_character_dialogue`(`star029_dialogue_star025`,`star029_character_star002`) values (5,15);
insert  into `star029_character_dialogue`(`star029_dialogue_star025`,`star029_character_star002`) values (2,15);
insert  into `star029_character_dialogue`(`star029_dialogue_star025`,`star029_character_star002`) values (1,15);
insert  into `star029_character_dialogue`(`star029_dialogue_star025`,`star029_character_star002`) values (3,15);
insert  into `star029_character_dialogue`(`star029_dialogue_star025`,`star029_character_star002`) values (4,15);

/*Table structure for table `star030_skill` */

DROP TABLE IF EXISTS `star030_skill`;

CREATE TABLE `star030_skill` (
  `star030_id` int(11) NOT NULL AUTO_INCREMENT,
  `star030_name` varchar(80) NOT NULL,
  `star030_description` text NOT NULL,
  `star030_base` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`star030_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `star030_skill` */

insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (1,'Industrie','Comptences lies  l\'industrie (Minage, raffinage, ...)',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (2,'Pilotage','Comptences lies au pilotage de vaisseaux',1);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (3,'Chasseur lger','Chasseur lger',1);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (4,'Transport lger','Transport lger',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (5,'chasseur moyen','chasseur moyen',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (6,'chasseur lourd','chasseur lourd',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (7,'Mcanique','Mcanique',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (8,'Recyclage','Recyclage',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (9,'Construction','Construction',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (10,'Upgrade','Upgrade',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (11,'Rparation','Rparation',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (12,'Vaisseau Lger','Construction Vaisseau Lger',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (13,'Vaisseau Moyen','Construction Vaisseau Moyen',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (14,'Vaisseau Lourd','Construction Vaisseau Lourd',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (15,'Armement','Competences liees a l\'armement',1);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (16,'Laser leger','Laser Leger',1);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (17,'Laser moyen','Laser moyen',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (18,'Laser Lourd','Laser Lourd',0);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (19,'Navigation','Gestion des moteurs et autres elements de navigation',1);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (20,'Moteur leger','Moteur leger',1);
insert  into `star030_skill`(`star030_id`,`star030_name`,`star030_description`,`star030_base`) values (21,'Moteur moyen','Moteur Moyen',0);

/*Table structure for table `star031_character_skill` */

DROP TABLE IF EXISTS `star031_character_skill`;

CREATE TABLE `star031_character_skill` (
  `star031_character_star002` int(11) NOT NULL,
  `star031_skill_star030` int(11) NOT NULL,
  `star031_currentlevel` int(11) NOT NULL,
  `star031_nextstep` int(11) NOT NULL,
  `star031_currentcount` int(11) NOT NULL,
  `star031_islearning` tinyint(4) NOT NULL DEFAULT '0',
  `star031_starting_ticks` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star031_character_skill` */

insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (24,2,1,1000,701,1,0);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (11,1,0,1000,600,0,0);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (24,7,0,1000,200,0,0);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (31,1,0,1000,110,1,0);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (16,1,0,1000,0,0,16.5735);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (16,2,0,1000,69,1,120.009);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (33,2,0,1000,0,0,11.857);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (33,3,0,1000,0,0,11.857);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (33,15,0,1000,0,0,11.857);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (33,16,0,1000,0,0,11.857);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (34,2,0,1000,0,0,10.5539);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (34,3,0,1000,0,0,10.5539);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (34,15,0,1000,0,0,10.5539);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (34,16,0,1000,0,0,10.5539);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (35,2,0,1000,0,0,15.4887);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (35,3,0,1000,0,0,15.4887);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (35,15,0,1000,0,0,15.4887);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (35,16,0,1000,0,0,15.4887);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (36,2,0,1000,0,0,8.58566);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (36,3,0,1000,0,0,8.58566);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (36,15,0,1000,0,0,8.58566);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (36,16,0,1000,0,0,8.58566);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (37,2,0,1000,0,0,133.844);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (37,3,0,1000,0,0,133.844);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (37,15,0,1000,0,0,133.844);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (37,16,0,1000,0,0,133.844);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (38,2,0,1000,0,0,8.74515);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (38,3,0,1000,0,0,8.74515);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (38,15,0,1000,0,0,8.74515);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (38,16,0,1000,0,0,8.74515);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (39,2,1,1000,1000,0,8.50704);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (39,3,1,1000,1000,0,8.50704);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (39,15,1,1000,1000,0,8.50704);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (39,16,1,1000,1000,0,8.50704);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,2,1,1000,1000,0,8.68238);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,3,1,1000,1000,0,8.68238);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,15,1,1000,41,0,89.7273);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,16,1,1000,1000,0,8.68238);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,1,0,1000,979,0,352.661);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,7,0,1000,181,0,111.753);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,19,0,1000,-72,1,292.255);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,4,0,1000,-789,0,800.194);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (40,17,0,1000,-1668,0,1702.76);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (42,2,1,1000,1000,0,26.3402);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (42,3,1,1000,1000,0,26.3402);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (42,15,1,1000,1000,0,26.3402);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (42,16,1,1000,1000,0,26.3402);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (42,19,1,1000,1000,0,26.3402);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (42,20,1,1000,1000,0,26.3402);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (43,2,1,1000,1000,0,151.01);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (43,3,1,1000,1000,0,151.01);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (43,15,1,1000,1000,0,151.01);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (43,16,1,1000,1000,0,151.01);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (43,19,1,1000,1000,0,151.01);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (43,20,1,1000,1000,0,151.01);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (44,2,1,1000,1000,0,182.693);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (44,3,1,1000,1000,0,182.693);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (44,15,1,1000,1000,0,182.693);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (44,16,1,1000,1000,0,182.693);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (44,19,1,1000,1000,0,182.693);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (44,20,1,1000,1000,0,182.693);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (45,2,1,1000,1000,0,528.023);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (45,3,1,1000,1000,0,528.023);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (45,15,1,1000,1000,0,528.023);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (45,16,1,1000,1000,0,528.023);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (45,19,1,1000,1000,0,528.023);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (45,20,1,1000,1000,0,528.023);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (46,2,1,1000,1000,0,63.641);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (46,3,1,1000,1000,0,63.641);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (46,15,1,1000,1000,0,63.641);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (46,16,1,1000,1000,0,63.641);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (46,19,1,1000,1000,0,63.641);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (46,20,1,1000,1000,0,63.641);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (47,2,1,1000,1000,0,118.754);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (47,3,1,1000,1000,0,118.754);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (47,15,1,1000,1000,0,118.754);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (47,16,1,1000,1000,0,118.754);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (47,19,1,1000,1000,0,118.754);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (47,20,1,1000,1000,0,118.754);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (48,2,1,1000,1000,0,7.99403);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (48,3,1,1000,1000,0,7.99403);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (48,15,1,1000,1000,0,7.99403);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (48,16,1,1000,1000,0,7.99403);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (48,19,1,1000,1000,0,7.99403);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (48,20,1,1000,1000,0,7.99403);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (49,2,1,1000,1000,0,47.773);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (49,3,1,1000,1000,0,47.773);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (49,15,1,1000,1000,0,47.773);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (49,16,1,1000,1000,0,47.773);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (49,19,1,1000,1000,0,47.773);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (49,20,1,1000,1000,0,47.773);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (1,2,1,1000,1000,0,24.1361);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (1,3,1,1000,1000,0,24.1361);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (1,15,1,1000,1000,0,24.1361);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (1,16,1,1000,1000,0,24.1361);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (1,19,1,1000,1000,0,24.1361);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (1,20,1,1000,1000,0,24.1361);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (2,2,1,1000,1000,0,10.0018);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (2,3,1,1000,1000,0,10.0018);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (2,15,1,1000,1000,0,10.0018);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (2,16,1,1000,1000,0,10.0018);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (2,19,1,1000,1000,0,10.0018);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (2,20,1,1000,1000,0,10.0018);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (3,2,1,1000,1000,0,86.0038);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (3,3,1,1000,1000,0,86.0038);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (3,15,1,1000,1000,0,86.0038);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (3,16,1,1000,1000,0,86.0038);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (3,19,1,1000,1000,0,86.0038);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (3,20,1,1000,1000,0,86.0038);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (4,2,1,1000,1000,0,10.0003);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (4,3,1,1000,1000,0,10.0003);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (4,15,1,1000,1000,0,10.0003);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (4,16,1,1000,1000,0,10.0003);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (4,19,1,1000,1000,0,10.0003);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (4,20,1,1000,1000,0,10.0003);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (5,2,1,1000,1000,0,5.61934);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (5,3,1,1000,1000,0,5.61934);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (5,15,1,1000,1000,0,5.61934);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (5,16,1,1000,1000,0,5.61934);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (5,19,1,1000,1000,0,5.61934);
insert  into `star031_character_skill`(`star031_character_star002`,`star031_skill_star030`,`star031_currentlevel`,`star031_nextstep`,`star031_currentcount`,`star031_islearning`,`star031_starting_ticks`) values (5,20,1,1000,1000,0,5.61934);

/*Table structure for table `star032_parent_skill` */

DROP TABLE IF EXISTS `star032_parent_skill`;

CREATE TABLE `star032_parent_skill` (
  `star032_skill_star030` int(11) NOT NULL,
  `star032_skillparent_star030` int(11) NOT NULL,
  `star032_level_needed` int(11) NOT NULL,
  `star032_primary_parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star032_parent_skill` */

insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (3,2,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (4,2,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (5,3,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (6,5,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (8,7,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (9,7,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (10,7,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (11,7,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (12,9,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (13,9,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (14,9,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (16,15,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (17,15,1,1);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (18,17,1,0);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (18,15,1,0);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (20,19,1,0);
insert  into `star032_parent_skill`(`star032_skill_star030`,`star032_skillparent_star030`,`star032_level_needed`,`star032_primary_parent`) values (21,20,1,0);

/*Table structure for table `star033_world` */

DROP TABLE IF EXISTS `star033_world`;

CREATE TABLE `star033_world` (
  `star033_id` int(11) NOT NULL AUTO_INCREMENT,
  `star033_timer` float NOT NULL,
  PRIMARY KEY (`star033_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `star033_world` */

insert  into `star033_world`(`star033_id`,`star033_timer`) values (1,30.0009);
insert  into `star033_world`(`star033_id`,`star033_timer`) values (3,30.0009);

/*Table structure for table `star034_npc` */

DROP TABLE IF EXISTS `star034_npc`;

CREATE TABLE `star034_npc` (
  `star034_id` int(11) NOT NULL AUTO_INCREMENT,
  `star034_name` varchar(80) NOT NULL,
  `star034_zone_star011zone` int(11) NOT NULL,
  `star034_template_star035` int(11) NOT NULL DEFAULT '1',
  `star034_event_star047` int(11) NOT NULL DEFAULT '0',
  `star034_faction_star059` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`star034_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star034_npc` */

/*Table structure for table `star035_npc_template` */

DROP TABLE IF EXISTS `star035_npc_template`;

CREATE TABLE `star035_npc_template` (
  `star035_id` int(11) NOT NULL AUTO_INCREMENT,
  `star035_name` varchar(80) NOT NULL,
  `star035_ship_star005` int(11) NOT NULL,
  `star035_id_behaviour` int(11) DEFAULT '0',
  `star035_id_zone_behaviour_star011` int(11) DEFAULT '0',
  `star035_id_faction_star059` int(11) DEFAULT '0',
  PRIMARY KEY (`star035_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `star035_npc_template` */

insert  into `star035_npc_template`(`star035_id`,`star035_name`,`star035_ship_star005`,`star035_id_behaviour`,`star035_id_zone_behaviour_star011`,`star035_id_faction_star059`) values (1,'drone',2,1,1,2);
insert  into `star035_npc_template`(`star035_id`,`star035_name`,`star035_ship_star005`,`star035_id_behaviour`,`star035_id_zone_behaviour_star011`,`star035_id_faction_star059`) values (3,'pirate',3,2,1,6);
insert  into `star035_npc_template`(`star035_id`,`star035_name`,`star035_ship_star005`,`star035_id_behaviour`,`star035_id_zone_behaviour_star011`,`star035_id_faction_star059`) values (4,'pirate2',1,3,1,7);
insert  into `star035_npc_template`(`star035_id`,`star035_name`,`star035_ship_star005`,`star035_id_behaviour`,`star035_id_zone_behaviour_star011`,`star035_id_faction_star059`) values (5,'celestial',13,1,1,2);

/*Table structure for table `star036_mission` */

DROP TABLE IF EXISTS `star036_mission`;

CREATE TABLE `star036_mission` (
  `star036_id` int(11) NOT NULL AUTO_INCREMENT,
  `star036_label` varchar(255) NOT NULL,
  `star036_begindialog_star025` int(11) NOT NULL DEFAULT '0',
  `currentstar036_dialog_star025` int(11) NOT NULL DEFAULT '0',
  `star036_postdialog_star025` int(11) NOT NULL DEFAULT '0',
  `star036_npc_star034` int(11) NOT NULL DEFAULT '0',
  `star036_endingnpc_star034` int(11) NOT NULL,
  `star036_mission_star036` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`star036_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `star036_mission` */

insert  into `star036_mission`(`star036_id`,`star036_label`,`star036_begindialog_star025`,`currentstar036_dialog_star025`,`star036_postdialog_star025`,`star036_npc_star034`,`star036_endingnpc_star034`,`star036_mission_star036`) values (1,'first',6,7,8,1,1,0);
insert  into `star036_mission`(`star036_id`,`star036_label`,`star036_begindialog_star025`,`currentstar036_dialog_star025`,`star036_postdialog_star025`,`star036_npc_star034`,`star036_endingnpc_star034`,`star036_mission_star036`) values (2,'second',9,9,10,1,1,0);
insert  into `star036_mission`(`star036_id`,`star036_label`,`star036_begindialog_star025`,`currentstar036_dialog_star025`,`star036_postdialog_star025`,`star036_npc_star034`,`star036_endingnpc_star034`,`star036_mission_star036`) values (3,'pvp1',11,12,13,1,1,2);
insert  into `star036_mission`(`star036_id`,`star036_label`,`star036_begindialog_star025`,`currentstar036_dialog_star025`,`star036_postdialog_star025`,`star036_npc_star034`,`star036_endingnpc_star034`,`star036_mission_star036`) values (4,'collect',14,14,15,1,1,0);

/*Table structure for table `star037_typeobjectif` */

DROP TABLE IF EXISTS `star037_typeobjectif`;

CREATE TABLE `star037_typeobjectif` (
  `star037_id` int(11) NOT NULL AUTO_INCREMENT,
  `star037_label` varchar(255) NOT NULL,
  PRIMARY KEY (`star037_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `star037_typeobjectif` */

insert  into `star037_typeobjectif`(`star037_id`,`star037_label`) values (1,'transport');
insert  into `star037_typeobjectif`(`star037_id`,`star037_label`) values (2,'destroy');
insert  into `star037_typeobjectif`(`star037_id`,`star037_label`) values (3,'protect');
insert  into `star037_typeobjectif`(`star037_id`,`star037_label`) values (4,'survive');

/*Table structure for table `star038_objectif` */

DROP TABLE IF EXISTS `star038_objectif`;

CREATE TABLE `star038_objectif` (
  `star038_id` int(11) NOT NULL AUTO_INCREMENT,
  `star038_mission_star036` int(11) NOT NULL,
  `star038_type_star037` int(11) NOT NULL,
  `star038_text` varchar(255) NOT NULL,
  `star038_item_starXXX` int(11) NOT NULL,
  `star038_item_table` varchar(255) NOT NULL,
  `star038_zone_star012` int(11) NOT NULL,
  `star038_nbitem` int(11) NOT NULL,
  PRIMARY KEY (`star038_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `star038_objectif` */

insert  into `star038_objectif`(`star038_id`,`star038_mission_star036`,`star038_type_star037`,`star038_text`,`star038_item_starXXX`,`star038_item_table`,`star038_zone_star012`,`star038_nbitem`) values (1,1,1,'Livrer 1 materiel de construction',5,'star004_item_template',3,1);
insert  into `star038_objectif`(`star038_id`,`star038_mission_star036`,`star038_type_star037`,`star038_text`,`star038_item_starXXX`,`star038_item_table`,`star038_zone_star012`,`star038_nbitem`) values (2,2,1,'Detruire 5 npcs',1,'star035_npc_template',1,5);
insert  into `star038_objectif`(`star038_id`,`star038_mission_star036`,`star038_type_star037`,`star038_text`,`star038_item_starXXX`,`star038_item_table`,`star038_zone_star012`,`star038_nbitem`) values (3,4,1,'Miner 500 minerais',9,'star004_item_template',3,500);

/*Table structure for table `star039_character_mission` */

DROP TABLE IF EXISTS `star039_character_mission`;

CREATE TABLE `star039_character_mission` (
  `star039_character_star002` int(11) NOT NULL,
  `star039_mission_star036` int(11) NOT NULL,
  `star036_status_star044` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star039_character_mission` */

insert  into `star039_character_mission`(`star039_character_star002`,`star039_mission_star036`,`star036_status_star044`) values (15,4,1);

/*Table structure for table `star040_character_objectif` */

DROP TABLE IF EXISTS `star040_character_objectif`;

CREATE TABLE `star040_character_objectif` (
  `star040_character_star002` int(11) NOT NULL,
  `star040_objectif_star038` int(11) NOT NULL,
  `star040_nbitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `star040_character_objectif` */

insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (29,1,0);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (29,1,0);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (11,2,5);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (30,2,0);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (31,2,6);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (42,2,0);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (42,3,0);
insert  into `star040_character_objectif`(`star040_character_star002`,`star040_objectif_star038`,`star040_nbitem`) values (15,3,0);

/*Table structure for table `star041_givenitem_mission` */

DROP TABLE IF EXISTS `star041_givenitem_mission`;

CREATE TABLE `star041_givenitem_mission` (
  `star041_itemtemplate_star004` int(11) NOT NULL,
  `star041_mission_star036` int(11) NOT NULL,
  `star041_nb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star041_givenitem_mission` */

insert  into `star041_givenitem_mission`(`star041_itemtemplate_star004`,`star041_mission_star036`,`star041_nb`) values (5,1,1);

/*Table structure for table `star042_rewards_mission` */

DROP TABLE IF EXISTS `star042_rewards_mission`;

CREATE TABLE `star042_rewards_mission` (
  `star042_typerewards_star043` int(11) NOT NULL,
  `star042_mission_star036` int(11) NOT NULL,
  `star042_itemtemplate_star004` int(11) NOT NULL DEFAULT '0',
  `star042_nb` int(11) NOT NULL DEFAULT '0',
  `star042_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`star042_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `star042_rewards_mission` */

insert  into `star042_rewards_mission`(`star042_typerewards_star043`,`star042_mission_star036`,`star042_itemtemplate_star004`,`star042_nb`,`star042_id`) values (1,1,0,100,1);
insert  into `star042_rewards_mission`(`star042_typerewards_star043`,`star042_mission_star036`,`star042_itemtemplate_star004`,`star042_nb`,`star042_id`) values (1,4,0,200,2);

/*Table structure for table `star043_typerewards` */

DROP TABLE IF EXISTS `star043_typerewards`;

CREATE TABLE `star043_typerewards` (
  `star043_id` int(11) NOT NULL AUTO_INCREMENT,
  `star043_label` varchar(255) NOT NULL,
  PRIMARY KEY (`star043_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star043_typerewards` */

insert  into `star043_typerewards`(`star043_id`,`star043_label`) values (1,'COIN');

/*Table structure for table `star044_status_mission` */

DROP TABLE IF EXISTS `star044_status_mission`;

CREATE TABLE `star044_status_mission` (
  `star044_id` int(11) NOT NULL AUTO_INCREMENT,
  `star044_label` varchar(20) NOT NULL,
  PRIMARY KEY (`star044_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `star044_status_mission` */

insert  into `star044_status_mission`(`star044_id`,`star044_label`) values (1,'IN PROGRESS');
insert  into `star044_status_mission`(`star044_id`,`star044_label`) values (2,'FINISHED');
insert  into `star044_status_mission`(`star044_id`,`star044_label`) values (3,'SUCCESS');

/*Table structure for table `star045_prerequis_mission` */

DROP TABLE IF EXISTS `star045_prerequis_mission`;

CREATE TABLE `star045_prerequis_mission` (
  `star045_id` int(11) NOT NULL AUTO_INCREMENT,
  `star045_type_star046` int(11) NOT NULL DEFAULT '0',
  `star045_mission_star036` int(11) NOT NULL DEFAULT '0',
  `star045_idtable` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`star045_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star045_prerequis_mission` */

insert  into `star045_prerequis_mission`(`star045_id`,`star045_type_star046`,`star045_mission_star036`,`star045_idtable`) values (1,1,1,1);

/*Table structure for table `star046_type_prerequis` */

DROP TABLE IF EXISTS `star046_type_prerequis`;

CREATE TABLE `star046_type_prerequis` (
  `star046_id` int(11) NOT NULL AUTO_INCREMENT,
  `star045_label` varchar(80) NOT NULL,
  PRIMARY KEY (`star046_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `star046_type_prerequis` */

insert  into `star046_type_prerequis`(`star046_id`,`star045_label`) values (1,'MISSION');
insert  into `star046_type_prerequis`(`star046_id`,`star045_label`) values (2,'DIALOGUE');

/*Table structure for table `star047_event` */

DROP TABLE IF EXISTS `star047_event`;

CREATE TABLE `star047_event` (
  `star047_id` int(11) NOT NULL AUTO_INCREMENT,
  `star047_type_star048` int(11) NOT NULL DEFAULT '0',
  `star047_mission_star036` int(11) NOT NULL DEFAULT '0',
  `star047_npc_star035` int(11) NOT NULL DEFAULT '0',
  `star047_pointX` float NOT NULL,
  `star047_pointY` float NOT NULL,
  `star047_pointZ` float NOT NULL,
  `star047_zone_star011` int(11) NOT NULL DEFAULT '0',
  `star047_idtrigger_star064` int(11) DEFAULT '0',
  PRIMARY KEY (`star047_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star047_event` */

insert  into `star047_event`(`star047_id`,`star047_type_star048`,`star047_mission_star036`,`star047_npc_star035`,`star047_pointX`,`star047_pointY`,`star047_pointZ`,`star047_zone_star011`,`star047_idtrigger_star064`) values (1,1,2,5,1000,1000,1000,1,1);

/*Table structure for table `star048_type_event` */

DROP TABLE IF EXISTS `star048_type_event`;

CREATE TABLE `star048_type_event` (
  `star048_id` int(11) NOT NULL AUTO_INCREMENT,
  `star048_label` varchar(80) NOT NULL,
  PRIMARY KEY (`star048_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star048_type_event` */

insert  into `star048_type_event`(`star048_id`,`star048_label`) values (1,'SHIP_POPUP');

/*Table structure for table `star049_zonelights` */

DROP TABLE IF EXISTS `star049_zonelights`;

CREATE TABLE `star049_zonelights` (
  `star049_id` int(11) NOT NULL AUTO_INCREMENT,
  `star049_r` float NOT NULL,
  `star049_g` float NOT NULL,
  `star049_b` float NOT NULL,
  `star049_posx` float NOT NULL,
  `star049_posy` float NOT NULL,
  `star049_posz` float NOT NULL,
  `star049_lookx` float NOT NULL,
  `star049_looky` float NOT NULL,
  `star049_lookz` float NOT NULL,
  `star049_zone_star011` int(11) NOT NULL,
  `star049_type_star050` int(11) NOT NULL,
  PRIMARY KEY (`star049_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star049_zonelights` */

/*Table structure for table `star050_typelight` */

DROP TABLE IF EXISTS `star050_typelight`;

CREATE TABLE `star050_typelight` (
  `star050_id` int(11) NOT NULL AUTO_INCREMENT,
  `star050_label` varchar(50) NOT NULL,
  PRIMARY KEY (`star050_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star050_typelight` */

/*Table structure for table `star051_typetuto` */

DROP TABLE IF EXISTS `star051_typetuto`;

CREATE TABLE `star051_typetuto` (
  `star051_id` int(11) NOT NULL AUTO_INCREMENT,
  `star051` varchar(80) NOT NULL,
  PRIMARY KEY (`star051_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `star051_typetuto` */

insert  into `star051_typetuto`(`star051_id`,`star051`) values (1,'init');
insert  into `star051_typetuto`(`star051_id`,`star051`) values (2,'personnel');
insert  into `star051_typetuto`(`star051_id`,`star051`) values (3,'mission');
insert  into `star051_typetuto`(`star051_id`,`star051`) values (4,'soute');

/*Table structure for table `star052_character_tuto` */

DROP TABLE IF EXISTS `star052_character_tuto`;

CREATE TABLE `star052_character_tuto` (
  `star052_character_star002` int(11) NOT NULL,
  `star052_tuto_star051` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star052_character_tuto` */

insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (30,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (30,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (30,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (31,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (33,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (34,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (35,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (36,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (37,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (11,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (17,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (17,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (17,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (29,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (29,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (29,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (29,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (29,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (41,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (40,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (40,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (40,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (40,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (40,8);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (16,8);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (39,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (39,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (39,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (39,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (44,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (44,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,2);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,8);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,3);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (42,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (47,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (47,4);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (47,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (47,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (47,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (1,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (2,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (2,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (2,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (2,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (4,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (4,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (5,1);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (5,5);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (5,7);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (5,6);
insert  into `star052_character_tuto`(`star052_character_star002`,`star052_tuto_star051`) values (5,4);

/*Table structure for table `star053_skill_item` */

DROP TABLE IF EXISTS `star053_skill_item`;

CREATE TABLE `star053_skill_item` (
  `star004_id` int(11) NOT NULL,
  `star030_id` int(11) NOT NULL,
  `star053_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star053_skill_item` */

insert  into `star053_skill_item`(`star004_id`,`star030_id`,`star053_level`) values (3,3,1);

/*Table structure for table `star054_mineral` */

DROP TABLE IF EXISTS `star054_mineral`;

CREATE TABLE `star054_mineral` (
  `star054_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`star054_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star054_mineral` */

insert  into `star054_mineral`(`star054_id`) values (1);

/*Table structure for table `star055_mining_item` */

DROP TABLE IF EXISTS `star055_mining_item`;

CREATE TABLE `star055_mining_item` (
  `star055_id` int(11) NOT NULL AUTO_INCREMENT,
  `star055_vitesse` float NOT NULL,
  `star055_perf` float NOT NULL,
  `star055_nb` float NOT NULL,
  `star055_range` int(11) NOT NULL,
  PRIMARY KEY (`star055_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star055_mining_item` */

insert  into `star055_mining_item`(`star055_id`,`star055_vitesse`,`star055_perf`,`star055_nb`,`star055_range`) values (1,1,1,3,1000);

/*Table structure for table `star056_miningitem_mineral` */

DROP TABLE IF EXISTS `star056_miningitem_mineral`;

CREATE TABLE `star056_miningitem_mineral` (
  `star056_idmining_star054` int(11) NOT NULL,
  `star056_idmineral_star055` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star056_miningitem_mineral` */

insert  into `star056_miningitem_mineral`(`star056_idmining_star054`,`star056_idmineral_star055`) values (1,1);

/*Table structure for table `star057_typenpc` */

DROP TABLE IF EXISTS `star057_typenpc`;

CREATE TABLE `star057_typenpc` (
  `star057_id` int(11) NOT NULL AUTO_INCREMENT,
  `star057_name` varchar(55) NOT NULL,
  PRIMARY KEY (`star057_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `star057_typenpc` */

insert  into `star057_typenpc`(`star057_id`,`star057_name`) values (1,'quest');
insert  into `star057_typenpc`(`star057_id`,`star057_name`) values (2,'shopkeeper');

/*Table structure for table `star058_ast_mineral` */

DROP TABLE IF EXISTS `star058_ast_mineral`;

CREATE TABLE `star058_ast_mineral` (
  `star058_idast_star013` int(11) NOT NULL,
  `star058_idmineral_star004` int(11) NOT NULL,
  `star058_nb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star058_ast_mineral` */

insert  into `star058_ast_mineral`(`star058_idast_star013`,`star058_idmineral_star004`,`star058_nb`) values (1,9,10000);
insert  into `star058_ast_mineral`(`star058_idast_star013`,`star058_idmineral_star004`,`star058_nb`) values (2,9,6000);
insert  into `star058_ast_mineral`(`star058_idast_star013`,`star058_idmineral_star004`,`star058_nb`) values (3,9,5400);
insert  into `star058_ast_mineral`(`star058_idast_star013`,`star058_idmineral_star004`,`star058_nb`) values (4,9,1000000);
insert  into `star058_ast_mineral`(`star058_idast_star013`,`star058_idmineral_star004`,`star058_nb`) values (5,9,3424);
insert  into `star058_ast_mineral`(`star058_idast_star013`,`star058_idmineral_star004`,`star058_nb`) values (6,9,20000);

/*Table structure for table `star059_faction` */

DROP TABLE IF EXISTS `star059_faction`;

CREATE TABLE `star059_faction` (
  `star059_id` int(11) NOT NULL AUTO_INCREMENT,
  `star059_name` varchar(255) NOT NULL,
  PRIMARY KEY (`star059_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `star059_faction` */

insert  into `star059_faction`(`star059_id`,`star059_name`) values (1,'Empire');
insert  into `star059_faction`(`star059_id`,`star059_name`) values (2,'Nyryan ');
insert  into `star059_faction`(`star059_id`,`star059_name`) values (3,'Hishnak');
insert  into `star059_faction`(`star059_id`,`star059_name`) values (5,'test');
insert  into `star059_faction`(`star059_id`,`star059_name`) values (6,'nofaction1');
insert  into `star059_faction`(`star059_id`,`star059_name`) values (7,'nofaction2');

/*Table structure for table `star060_gate` */

DROP TABLE IF EXISTS `star060_gate`;

CREATE TABLE `star060_gate` (
  `star060_id` int(11) NOT NULL AUTO_INCREMENT,
  `star060_template_star061` int(11) DEFAULT NULL,
  `star060_zone_star011` int(11) DEFAULT NULL,
  `star060_posx` float DEFAULT '0',
  `star060_posy` float DEFAULT '0',
  `star060_posz` float DEFAULT '0',
  `star060_hprh` float DEFAULT '0',
  `star060_hprp` float DEFAULT '0',
  `star060_hprr` float DEFAULT '0',
  PRIMARY KEY (`star060_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `star060_gate` */

insert  into `star060_gate`(`star060_id`,`star060_template_star061`,`star060_zone_star011`,`star060_posx`,`star060_posy`,`star060_posz`,`star060_hprh`,`star060_hprp`,`star060_hprr`) values (27,1,1,1000,1000,1500,0,0,0);

/*Table structure for table `star061_gate_template` */

DROP TABLE IF EXISTS `star061_gate_template`;

CREATE TABLE `star061_gate_template` (
  `star061_id` int(11) NOT NULL AUTO_INCREMENT,
  `star061_name` varchar(45) NOT NULL,
  `star061_egg` varchar(255) NOT NULL,
  PRIMARY KEY (`star061_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star061_gate_template` */

insert  into `star061_gate_template`(`star061_id`,`star061_name`,`star061_egg`) values (1,'gate1','models/wormhole/worm');

/*Table structure for table `star062_gate_zone` */

DROP TABLE IF EXISTS `star062_gate_zone`;

CREATE TABLE `star062_gate_zone` (
  `star062_gate_star062` int(11) NOT NULL,
  `star062_zone_star011` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star062_gate_zone` */

insert  into `star062_gate_zone`(`star062_gate_star062`,`star062_zone_star011`) values (27,2);

/*Table structure for table `star063_behaviour_template` */

DROP TABLE IF EXISTS `star063_behaviour_template`;

CREATE TABLE `star063_behaviour_template` (
  `star063_id` int(11) NOT NULL AUTO_INCREMENT,
  `star064_num` int(11) DEFAULT NULL,
  `star064_zone_star011` int(11) DEFAULT NULL,
  PRIMARY KEY (`star063_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `star063_behaviour_template` */

insert  into `star063_behaviour_template`(`star063_id`,`star064_num`,`star064_zone_star011`) values (1,1,1);
insert  into `star063_behaviour_template`(`star063_id`,`star064_num`,`star064_zone_star011`) values (5,2,1);
insert  into `star063_behaviour_template`(`star063_id`,`star064_num`,`star064_zone_star011`) values (6,3,1);

/*Table structure for table `star064_trigger_mission` */

DROP TABLE IF EXISTS `star064_trigger_mission`;

CREATE TABLE `star064_trigger_mission` (
  `star064_id` int(11) NOT NULL AUTO_INCREMENT,
  `star064_type_star065` int(11) DEFAULT '0',
  `star064_idzone_star011` int(11) DEFAULT '0',
  `star064_point_x` int(11) DEFAULT '0',
  `star064_point_y` int(11) DEFAULT '0',
  `star064_point_z` int(11) DEFAULT '0',
  `star064_radius` int(11) DEFAULT '0',
  `star064_itemtemplate_star004` int(11) DEFAULT '0',
  `star064_nb_template` int(11) DEFAULT '0',
  `star064_timer` int(11) DEFAULT '0',
  `star064_npctemplate_star035` int(11) DEFAULT '0',
  `star064_order` int(11) DEFAULT '0',
  `star064_idmission_star036` int(11) DEFAULT '0',
  PRIMARY KEY (`star064_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star064_trigger_mission` */

insert  into `star064_trigger_mission`(`star064_id`,`star064_type_star065`,`star064_idzone_star011`,`star064_point_x`,`star064_point_y`,`star064_point_z`,`star064_radius`,`star064_itemtemplate_star004`,`star064_nb_template`,`star064_timer`,`star064_npctemplate_star035`,`star064_order`,`star064_idmission_star036`) values (1,1,1,0,0,0,0,0,0,0,0,0,1);

/*Table structure for table `star065_type_trigger_mission` */

DROP TABLE IF EXISTS `star065_type_trigger_mission`;

CREATE TABLE `star065_type_trigger_mission` (
  `star065_id` int(11) NOT NULL AUTO_INCREMENT,
  `star065_label` text NOT NULL,
  PRIMARY KEY (`star065_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `star065_type_trigger_mission` */

insert  into `star065_type_trigger_mission`(`star065_id`,`star065_label`) values (1,'Arrivee joueur dans zone');
insert  into `star065_type_trigger_mission`(`star065_id`,`star065_label`) values (2,'Arrivee npctemplate dans zone');
insert  into `star065_type_trigger_mission`(`star065_id`,`star065_label`) values (3,'ItemTemplate detruit dans zone');
insert  into `star065_type_trigger_mission`(`star065_id`,`star065_label`) values (4,'NpcTemplate detruit');
insert  into `star065_type_trigger_mission`(`star065_id`,`star065_label`) values (5,'Timer');

/*Table structure for table `star066_trigger_character` */

DROP TABLE IF EXISTS `star066_trigger_character`;

CREATE TABLE `star066_trigger_character` (
  `star066_id` int(11) NOT NULL AUTO_INCREMENT,
  `star066_trigger_star064` int(11) DEFAULT '0',
  `star066_character_star002` int(11) DEFAULT '0',
  `star066_state` int(11) DEFAULT '0',
  PRIMARY KEY (`star066_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `star066_trigger_character` */

/*Table structure for table `star067_shield` */

DROP TABLE IF EXISTS `star067_shield`;

CREATE TABLE `star067_shield` (
  `star067_id` int(11) NOT NULL AUTO_INCREMENT,
  `star067_hitpoints` int(11) DEFAULT '1',
  `star067_reload_tempo` float DEFAULT NULL,
  PRIMARY KEY (`star067_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `star067_shield` */

insert  into `star067_shield`(`star067_id`,`star067_hitpoints`,`star067_reload_tempo`) values (1,100,5);
insert  into `star067_shield`(`star067_id`,`star067_hitpoints`,`star067_reload_tempo`) values (2,200,5);
insert  into `star067_shield`(`star067_id`,`star067_hitpoints`,`star067_reload_tempo`) values (3,500,10);

/*Table structure for table `star068_iteminspace` */

DROP TABLE IF EXISTS `star068_iteminspace`;

CREATE TABLE `star068_iteminspace` (
  `star068_id` int(11) NOT NULL AUTO_INCREMENT,
  `star068_template_star069` int(11) DEFAULT NULL,
  `star068_zone_star011` int(11) DEFAULT NULL,
  `star068_posx` float DEFAULT '0',
  `star068_posy` float DEFAULT '0',
  `star068_posz` float DEFAULT '0',
  `star068_hprh` float DEFAULT '0',
  `star068_hprp` float DEFAULT '0',
  `star068_hprr` float DEFAULT '0',
  `star068_scale` float DEFAULT '1',
  `star068_hullpoints` int(11) DEFAULT NULL,
  PRIMARY KEY (`star068_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `star068_iteminspace` */

insert  into `star068_iteminspace`(`star068_id`,`star068_template_star069`,`star068_zone_star011`,`star068_posx`,`star068_posy`,`star068_posz`,`star068_hprh`,`star068_hprp`,`star068_hprr`,`star068_scale`,`star068_hullpoints`) values (1,1,1,800,-800,1000,0,0,0,1,5000);

/*Table structure for table `star069_iteminspace_template` */

DROP TABLE IF EXISTS `star069_iteminspace_template`;

CREATE TABLE `star069_iteminspace_template` (
  `star069_id` int(11) NOT NULL AUTO_INCREMENT,
  `star069_name` text,
  `star069_egg` text,
  `star069_egg_middle` text,
  `star069_egg_far` text,
  `star069_scale` float DEFAULT NULL,
  `star069_masse` int(11) DEFAULT NULL,
  `star069_img` text,
  `star069_type_star003` int(11) DEFAULT NULL,
  `star069_hullpoints` int(11) DEFAULT NULL,
  PRIMARY KEY (`star069_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `star069_iteminspace_template` */

insert  into `star069_iteminspace_template`(`star069_id`,`star069_name`,`star069_egg`,`star069_egg_middle`,`star069_egg_far`,`star069_scale`,`star069_masse`,`star069_img`,`star069_type_star003`,`star069_hullpoints`) values (1,'container1','models/container1.bam',NULL,NULL,1,1000,'container1',4,5000);

/* Function  structure for function  `calctempsattente` */

/*!50003 DROP FUNCTION IF EXISTS `calctempsattente` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `calctempsattente`(id_demande VARCHAR(11)) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    
      DECLARE prio_indicateur INT;
    DECLARE Svrit_indicateur VARCHAR(255);
    DECLARE app_indicateur VARCHAR(255);
    DECLARE motcl_indicateur VARCHAR(255);
    DECLARE svrit_app_indicateur VARCHAR(255);
    DECLARE evrnmt_indicateur VARCHAR(255);
    DECLARE stat_indicateur VARCHAR(255);
    DECLARE typedde_indicateur VARCHAR(255);
    /*END les valeurs des champs indicateur*/
    DECLARE indicateur_demande INT;
    DECLARE nb_indicateur INT;
    DECLARE nb_champs INT;
    DECLARE save_nb_champs INT;
    DECLARE num_indicateur INT;
    DECLARE demande_Correspond INT;
    DECLARE indicateur INT;
    DECLARE id_new_jalon INT;
    DECLARE id_jal_exist INT;
    
    DECLARE delai_indicateur INT;
    DECLARE delai_indicateur_jour INT;
    DECLARE delai_indicateur_heure FLOAT;
    
    DECLARE client_indicateur VARCHAR(255);
    DECLARE date_jalon DATETIME;
    DECLARE date_jalon_cible DATETIME;
    DECLARE date_jalon_cible_tmp DATETIME;
    
    DECLARE idCalendar INT DEFAULT 2;
    DECLARE cal_debut_mat TIME;
    DECLARE cal_fin_mat TIME;
    DECLARE cal_debut_aprem TIME;
    DECLARE cal_fin_aprem TIME;
    
    DECLARE nbSecTravailleesParJour INT;
    DECLARE nbJoursFeriesEtWESautes INT;
    DECLARE heureDebutEnSec INT;
    DECLARE heureFinEnSec INT;
    
    DECLARE statut_att VARCHAR(50);
    DECLARE parseDone  INT(11) DEFAULT 0 ;
    DECLARE statut_date DATETIME;
    DECLARE statut_date_temp DATETIME;
    DECLARE statut_etat VARCHAR(50);
    
    
    DECLARE ticketStatus CURSOR FOR
    SELECT Date_entree,code_etat 
    FROM demande_se_trouve_dans_etat dstde
    WHERE IdDemande = id_demande
    ORDER BY date_entree ASC, id DESC ;
    
    DECLARE cur_indicateur CURSOR FOR SELECT ind.id_indicateur AS id_indicateur FROM indicateur ind;
    
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET parseDone = 1 ;  
    set delai_indicateur=0;
    SET demande_Correspond = 0;
    SELECT COUNT(*) INTO nb_indicateur FROM indicateur ;
    OPEN cur_indicateur;
    SET num_indicateur = 0;
    SET save_nb_champs = 0;  
    SET id_jal_exist = NULL;
    
    /*boucle indicateur*/
    WHILE num_indicateur < nb_indicateur DO
    FETCH cur_indicateur INTO indicateur;
    
    
    SET num_indicateur = num_indicateur + 1;
    IF EXISTS (SELECT 1
		   FROM champ_indicateur cin, demande_ou_projet dop, interlocuteur i, site s
			    WHERE cin.id_indicateur = indicateur 
					AND cin.libelle = 'type de demande'
					AND dop.nominterlocuteur = i.nom 
					AND dop.prenominterlocuteur=i.prenom
					AND i.idsite = s.idsite  
					AND cin.valeur = dop.Type_demande
					AND CIN.id_client = s.idclient
					AND dop.IdDemande = id_demande ) THEN
		
	    SELECT is_parent INTO typedde_indicateur 
	    FROM champ_indicateur cin, demande_ou_projet dop
	    WHERE cin.id_indicateur = indicateur 
			AND cin.libelle = 'type de demande' 
			AND cin.valeur = dop.Type_demande
			AND dop.IdDemande = id_demande;
            SET nb_champs = 1;	-- cet indicateur le meme type de demande et le meme client que la demande.
            
		 /*recuperer les valeurs des champs de l'indicateur*/	
	    SELECT valeur  INTO prio_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = 'Priorit' AND is_parent = typedde_indicateur;
	    SELECT valeur  INTO Svrit_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = 'Svrit' AND is_parent = typedde_indicateur;
	    SELECT valeur  INTO app_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = 'Applications concernes' AND is_parent = typedde_indicateur;
	    SELECT valeur  INTO motcl_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = 'Mot-cl' AND is_parent = typedde_indicateur;
	    SELECT valeur  INTO svrit_app_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = "Svrit de l'application" AND is_parent = typedde_indicateur;
	    SELECT valeur  INTO evrnmt_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = 'Environnement' AND is_parent = typedde_indicateur;
	    SELECT valeur  INTO stat_indicateur FROM champ_indicateur WHERE id_indicateur = indicateur AND libelle = 'Statut' AND is_parent = typedde_indicateur;
	   
	   /*tester si la demande correspond  l'indicateur courrant*/
    	    SELECT 1 INTO demande_Correspond  FROM demande_ou_projet dop, demande_se_trouve_dans_etat destde WHERE dop.IdDemande = id_demande 
								AND destde.IdDemande = dop.IdDemande
								AND destde.date_entree = (SELECT MAX(date_entree) FROM demande_se_trouve_dans_etat WHERE IdDemande = id_demande )
								AND (dop.Priorite = prio_indicateur OR prio_indicateur IS NULL)
								AND (dop.niveau_de_severite = Svrit_indicateur OR Svrit_indicateur IS NULL)
								AND (dop.Mot_Cle LIKE CONCAT('%',motcl_indicateur,'%') OR motcl_indicateur IS NULL)
								AND (dop.env_retour = evrnmt_indicateur OR evrnmt_indicateur IS NULL)
								AND (destde.code_etat = stat_indicateur  OR stat_indicateur IS NULL) LIMIT 1;
	  
	   IF  demande_Correspond = 1 THEN /*si la demande correspond l'indicateur au moins type demande*/
	   
	   /*nombre de correspondance*/
	   
               IF prio_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
               
               IF Svrit_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
               
               IF app_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
               
               IF motcl_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
               
               IF svrit_app_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
               
               IF evrnmt_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
               
               IF stat_indicateur IS NOT NULL THEN 
               SET nb_champs = nb_champs + 1;
               END IF;
       /*nombre de correspondance*/
               
               IF nb_champs > save_nb_champs THEN
               SET save_nb_champs = nb_champs;
               END IF;
               IF nb_champs = save_nb_champs THEN
                
		SET indicateur_demande  = indicateur; -- recuperation de l'indicateur le plus adequat             
                
               END IF;
	   END IF;
    END IF;
    				
			      
    SET demande_Correspond = 0;
    END WHILE;
    -- select indicateur_demande;
    IF  (indicateur_demande IS NOT NULL) THEN
	-- Recuperation du statut d'attente
	    SELECT statut_attente INTO statut_att FROM indicateur WHERE id_indicateur = indicateur_demande;
	   
	    SET parseDone = 0;
	    SET statut_date_temp = NULL;
	    OPEN ticketStatus ;
	    set delai_indicateur=0;
	    REPEAT
		
		-- Parcours de l'ensemble des statuts
		FETCH ticketStatus INTO statut_date, statut_etat ;
		IF (statut_etat = statut_att AND statut_date_temp IS NULL) THEN
			-- Si on tombe sur un statut d'attente, on stocke la date
			SET statut_date_temp = statut_date;
		ELSEIF (statut_date_temp IS NOT NULL) THEN
			-- Si on tombe sur un statut apres un statut d'attente, on calcule la difference entre les deux
			-- On l'ajoute ensuite au delai de l'indicateur
			SET delai_indicateur = delai_indicateur + GET_WORKING_DIFFERENCE(statut_date_temp, statut_date, idCalendar);
			SET statut_date_temp = NULL;
		END IF;
	    UNTIL parseDone END REPEAT ;
	    CLOSE ticketStatus ;
    
    END IF;
    return indicateur_demande;
    END */$$
DELIMITER ;

/* Function  structure for function  `nextDemandeID` */

/*!50003 DROP FUNCTION IF EXISTS `nextDemandeID` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `nextDemandeID`() RETURNS varchar(11) CHARSET latin1
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE res VARCHAR(11) ;
select IFNULL(
   (select CONCAT(SUBSTRING(NOW(),3,2),LPAD(SUBSTRING(Max(IdDemande),3)+1,6,'0'))
      from demande_ou_projet
     where SUBSTRING(IdDemande, 1, 2) = SUBSTRING(NOW(),3,2)),
   CONCAT(SUBSTRING(NOW(),3,2),LPAD(1,6,'0'))) into res ;
RETURN res ;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
