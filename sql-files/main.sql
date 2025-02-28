-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2012-2023 Hercules Dev Team
-- Copyright (C) Athena Dev Teams
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

--
-- Table structure for table `account_data`
--

CREATE TABLE IF NOT EXISTS `account_data` (
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `bank_vault` INT UNSIGNED NOT NULL DEFAULT '0',
  `base_exp` SMALLINT UNSIGNED NOT NULL DEFAULT '100',
  `base_drop` SMALLINT UNSIGNED NOT NULL DEFAULT '100',
  `base_death` SMALLINT UNSIGNED NOT NULL DEFAULT '100',
  `attendance_count` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attendance_timer` BIGINT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `acc_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `acc_reg_num_db` (
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `acc_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `acc_reg_str_db` (
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `auction`
--

CREATE TABLE IF NOT EXISTS `auction` (
  `auction_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `seller_name` VARCHAR(30) NOT NULL DEFAULT '',
  `buyer_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `buyer_name` VARCHAR(30) NOT NULL DEFAULT '',
  `price` INT UNSIGNED NOT NULL DEFAULT '0',
  `buynow` INT UNSIGNED NOT NULL DEFAULT '0',
  `hours` SMALLINT NOT NULL DEFAULT '0',
  `timestamp` INT UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT UNSIGNED NOT NULL DEFAULT '0',
  `item_name` VARCHAR(50) NOT NULL DEFAULT '',
  `type` SMALLINT NOT NULL DEFAULT '0',
  `refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `card0` INT NOT NULL DEFAULT '0',
  `card1` INT NOT NULL DEFAULT '0',
  `card2` INT NOT NULL DEFAULT '0',
  `card3` INT NOT NULL DEFAULT '0',
  `opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val0` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val1` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val2` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val3` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val4` SMALLINT NOT NULL DEFAULT '0',
  `unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `autotrade_data`
--

CREATE TABLE IF NOT EXISTS `autotrade_data` (
  `char_id` INT NOT NULL DEFAULT '0',
  `itemkey` INT NOT NULL DEFAULT '0',
  `amount` INT NOT NULL DEFAULT '0',
  `price` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`itemkey`)
) ENGINE=MyISAM;

--
-- Table structure for table `autotrade_merchants`
--

CREATE TABLE IF NOT EXISTS `autotrade_merchants` (
  `account_id` INT NOT NULL DEFAULT '0',
  `char_id` INT NOT NULL DEFAULT '0',
  `sex` TINYINT NOT NULL DEFAULT '0',
  `title` VARCHAR(80) NOT NULL DEFAULT 'Buy From Me!',
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `char_achievements`
--

CREATE TABLE IF NOT EXISTS `char_achievements` (
	`char_id` INT UNSIGNED NOT NULL,
	`ach_id` INT UNSIGNED NOT NULL,
	`completed_at` INT UNSIGNED NOT NULL DEFAULT '0',
	`rewarded_at` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_0` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_1` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_2` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_3` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_4` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_5` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_6` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_7` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_8` INT UNSIGNED NOT NULL DEFAULT '0',
	`obj_9` INT UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`char_id`, `ach_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `cart_inventory`
--

CREATE TABLE IF NOT EXISTS `cart_inventory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `char_id` INT NOT NULL DEFAULT '0',
  `nameid` INT NOT NULL DEFAULT '0',
  `amount` INT NOT NULL DEFAULT '0',
  `equip` INT UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT NOT NULL DEFAULT '0',
  `refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT NOT NULL DEFAULT '0',
  `card0` INT NOT NULL DEFAULT '0',
  `card1` INT NOT NULL DEFAULT '0',
  `card2` INT NOT NULL DEFAULT '0',
  `card3` INT NOT NULL DEFAULT '0',
  `opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val0` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val1` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val2` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val3` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val4` SMALLINT NOT NULL DEFAULT '0',
  `expire_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `char`
--

CREATE TABLE IF NOT EXISTS `char` (
  `char_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `char_num` TINYINT NOT NULL DEFAULT '0',
  `name` VARCHAR(30) NOT NULL DEFAULT '',
  `class` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `base_level` SMALLINT UNSIGNED NOT NULL DEFAULT '1',
  `job_level` SMALLINT UNSIGNED NOT NULL DEFAULT '1',
  `base_exp` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  `job_exp` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  `zeny` INT UNSIGNED NOT NULL DEFAULT '0',
  `str` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `agi` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `vit` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `int` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `dex` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `luk` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `max_hp` INT UNSIGNED NOT NULL DEFAULT '0',
  `hp` INT UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` INT UNSIGNED NOT NULL DEFAULT '0',
  `sp` INT UNSIGNED NOT NULL DEFAULT '0',
  `status_point` INT UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` INT UNSIGNED NOT NULL DEFAULT '0',
  `option` INT NOT NULL DEFAULT '0',
  `karma` TINYINT NOT NULL DEFAULT '0',
  `manner` SMALLINT NOT NULL DEFAULT '0',
  `party_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `clan_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `pet_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `homun_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `elemental_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `hair` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `clothes_color` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `body` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `weapon` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `shield` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `head_top` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `head_mid` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `head_bottom` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `robe` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `last_login` BIGINT NULL DEFAULT '0',
  `last_map` VARCHAR(11) NOT NULL DEFAULT '',
  `last_x` SMALLINT UNSIGNED NOT NULL DEFAULT '53',
  `last_y` SMALLINT UNSIGNED NOT NULL DEFAULT '111',
  `save_map` VARCHAR(11) NOT NULL DEFAULT '',
  `save_x` SMALLINT UNSIGNED NOT NULL DEFAULT '53',
  `save_y` SMALLINT UNSIGNED NOT NULL DEFAULT '111',
  `partner_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `online` TINYINT NOT NULL DEFAULT '0',
  `father` INT UNSIGNED NOT NULL DEFAULT '0',
  `mother` INT UNSIGNED NOT NULL DEFAULT '0',
  `child` INT UNSIGNED NOT NULL DEFAULT '0',
  `fame` INT UNSIGNED NOT NULL DEFAULT '0',
  `rename` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `delete_date` INT UNSIGNED NOT NULL DEFAULT '0',
  `slotchange` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `char_opt` INT UNSIGNED NOT NULL DEFAULT '0',
  `font` TINYINT UNSIGNED NOT NULL DEFAULT  '0',
  `unban_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `uniqueitem_counter` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  `sex` ENUM('M','F','U') NOT NULL DEFAULT 'U',
  `hotkey_rowshift` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `hotkey_rowshift2` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `title_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `inventory_size` INT UNSIGNED NOT NULL DEFAULT '100',
  PRIMARY KEY (`char_id`),
  UNIQUE KEY `name_key` (`name`),
  KEY `account_id` (`account_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `online` (`online`)
) ENGINE=MyISAM AUTO_INCREMENT=150000;

--
-- Table structure for table `char_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `char_reg_num_db` (
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `char_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `char_reg_str_db` (
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `charlog`
--

CREATE TABLE IF NOT EXISTS `charlog` (
  `time` DATETIME NULL,
  `char_msg` VARCHAR(255) NOT NULL DEFAULT 'char select',
  `account_id` INT NOT NULL DEFAULT '0',
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `char_num` TINYINT NOT NULL DEFAULT '0',
  `class` MEDIUMINT NOT NULL DEFAULT '0',
  `name` VARCHAR(23) NOT NULL DEFAULT '',
  `str` INT UNSIGNED NOT NULL DEFAULT '0',
  `agi` INT UNSIGNED NOT NULL DEFAULT '0',
  `vit` INT UNSIGNED NOT NULL DEFAULT '0',
  `int` INT UNSIGNED NOT NULL DEFAULT '0',
  `dex` INT UNSIGNED NOT NULL DEFAULT '0',
  `luk` INT UNSIGNED NOT NULL DEFAULT '0',
  `hair` TINYINT NOT NULL DEFAULT '0',
  `hair_color` INT NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Table structure for table `elemental`
--

CREATE TABLE IF NOT EXISTS `elemental` (
  `ele_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT NOT NULL,
  `class` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `mode` INT UNSIGNED NOT NULL DEFAULT '1',
  `hp` INT NOT NULL DEFAULT '1',
  `sp` INT NOT NULL DEFAULT '1',
  `max_hp` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `atk1` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `atk2` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `matk` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `aspd` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `def` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `mdef` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `flee` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `hit` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `life_time` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`ele_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `char_id` INT NOT NULL DEFAULT '0',
  `friend_account` INT NOT NULL DEFAULT '0',
  `friend_id` INT NOT NULL DEFAULT '0',
  KEY  `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `hotkey`
--

CREATE TABLE IF NOT EXISTS `hotkey` (
  `char_id` INT NOT NULL,
  `hotkey` TINYINT UNSIGNED NOT NULL,
  `type` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `itemskill_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `skill_lvl` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`hotkey`)
) ENGINE=MyISAM;

--
-- Table structure for table `global_acc_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `global_acc_reg_num_db` (
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `global_acc_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `global_acc_reg_str_db` (
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild`
--

CREATE TABLE IF NOT EXISTS `guild` (
  `guild_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `master` VARCHAR(24) NOT NULL DEFAULT '',
  `guild_lv` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `connect_member` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `max_member` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `max_storage` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `average_lv` SMALLINT UNSIGNED NOT NULL DEFAULT '1',
  `exp` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  `next_exp` INT UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `mes1` VARCHAR(60) NOT NULL DEFAULT '',
  `mes2` VARCHAR(120) NOT NULL DEFAULT '',
  `emblem_len` INT UNSIGNED NOT NULL DEFAULT '0',
  `emblem_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `emblem_data` blob,
  PRIMARY KEY (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_alliance`
--

CREATE TABLE IF NOT EXISTS `guild_alliance` (
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `opposition` INT UNSIGNED NOT NULL DEFAULT '0',
  `alliance_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_castle`
--

CREATE TABLE IF NOT EXISTS `guild_castle` (
  `castle_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `economy` INT UNSIGNED NOT NULL DEFAULT '0',
  `defense` INT UNSIGNED NOT NULL DEFAULT '0',
  `triggerE` INT UNSIGNED NOT NULL DEFAULT '0',
  `triggerD` INT UNSIGNED NOT NULL DEFAULT '0',
  `nextTime` INT UNSIGNED NOT NULL DEFAULT '0',
  `payTime` INT UNSIGNED NOT NULL DEFAULT '0',
  `createTime` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleC` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG0` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG1` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG2` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG3` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG4` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG5` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG6` INT UNSIGNED NOT NULL DEFAULT '0',
  `visibleG7` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_expulsion`
--

CREATE TABLE IF NOT EXISTS `guild_expulsion` (
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `mes` VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`name`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_member`
--

CREATE TABLE IF NOT EXISTS `guild_member` (
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `hair` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `gender` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `class` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `lv` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `exp` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  `exp_payper` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `online` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `position` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_position`
--

CREATE TABLE IF NOT EXISTS `guild_position` (
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `position` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `mode` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `exp_mode` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`position`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_skill`
--

CREATE TABLE IF NOT EXISTS `guild_skill` (
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `id` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `lv` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_storage`
--

CREATE TABLE IF NOT EXISTS `guild_storage` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT UNSIGNED NOT NULL DEFAULT '0',
  `equip` INT UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `card0` INT NOT NULL DEFAULT '0',
  `card1` INT NOT NULL DEFAULT '0',
  `card2` INT NOT NULL DEFAULT '0',
  `card3` INT NOT NULL DEFAULT '0',
  `opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val0` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val1` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val2` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val3` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val4` SMALLINT NOT NULL DEFAULT '0',
  `expire_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `homunculus`
--

CREATE TABLE IF NOT EXISTS `homunculus` (
  `homun_id` INT NOT NULL AUTO_INCREMENT,
  `char_id` INT NOT NULL,
  `class` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `prev_class` MEDIUMINT NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `level` SMALLINT NOT NULL DEFAULT '0',
  `exp` BIGINT NOT NULL DEFAULT '0',
  `intimacy` INT NOT NULL DEFAULT '0',
  `hunger` SMALLINT NOT NULL DEFAULT '0',
  `str` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `agi` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `vit` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `INT` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `dex` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `luk` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `hp` INT NOT NULL DEFAULT '1',
  `max_hp` INT NOT NULL DEFAULT '1',
  `sp` INT NOT NULL DEFAULT '1',
  `max_sp` INT NOT NULL DEFAULT '1',
  `skill_point` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `alive` TINYINT NOT NULL DEFAULT '1',
  `rename_flag` TINYINT NOT NULL DEFAULT '0',
  `vaporize` TINYINT NOT NULL DEFAULT '0',
  `autofeed` TINYINT NOT NULL DEFAULT '0',
  PRIMARY KEY (`homun_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `interlog`
--

CREATE TABLE IF NOT EXISTS `interlog` (
  `time` DATETIME NULL,
  `log` VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT UNSIGNED NOT NULL DEFAULT '0',
  `equip` INT UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT NOT NULL DEFAULT '0',
  `refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `card0` INT NOT NULL DEFAULT '0',
  `card1` INT NOT NULL DEFAULT '0',
  `card2` INT NOT NULL DEFAULT '0',
  `card3` INT NOT NULL DEFAULT '0',
  `opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val0` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val1` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val2` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val3` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val4` SMALLINT NOT NULL DEFAULT '0',
  `expire_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `favorite` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `ipbanlist`
--

CREATE TABLE IF NOT EXISTS `ipbanlist` (
  `list` VARCHAR(39) NOT NULL DEFAULT '',
  `btime` DATETIME NULL,
  `rtime` DATETIME NULL,
  `reason` VARCHAR(255) NOT NULL DEFAULT '',
  KEY (`list`)
) ENGINE=InnoDB;

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `account_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(23) NOT NULL,
  `user_pass` VARCHAR(32) NOT NULL DEFAULT '',
  `sex` ENUM('M','F','S') NOT NULL DEFAULT 'M',
  `email` VARCHAR(39) NOT NULL DEFAULT '',
  `group_id` TINYINT NOT NULL DEFAULT '0',
  `state` INT UNSIGNED NOT NULL DEFAULT '0',
  `unban_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `expiration_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `logincount` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `lastlogin` DATETIME NULL,
  `last_ip` VARCHAR(100) NOT NULL DEFAULT '',
  `birthdate` DATE NULL,
  `character_slots` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `pincode` VARCHAR(4) NOT NULL DEFAULT '',
  `pincode_change` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2000000;

-- added standard accounts for servers, VERY INSECURE!!!
-- inserted into the table called login which is above

INSERT IGNORE INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('1', 's1', 'p1', 'S','athena@athena.com');

--
-- Table structure for table `map_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `map_reg_num_db` (
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`, `index`)
) ENGINE=MyISAM;

--
-- Table structure for table `map_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `map_reg_str_db` (
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`, `index`)
) ENGINE=MyISAM;

--
-- Table structure for table `npc_market_data`
--

CREATE TABLE IF NOT EXISTS `npc_market_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemid` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`itemid`)
) ENGINE=MyISAM;

--
-- Table structure for table `sc_data`
--

CREATE TABLE IF NOT EXISTS `sc_data` (
  `account_id` INT UNSIGNED NOT NULL,
  `char_id` INT UNSIGNED NOT NULL,
  `type` SMALLINT UNSIGNED NOT NULL,
  `tick` INT NOT NULL,
  `total_tick` INT NOT NULL,
  `val1` INT NOT NULL DEFAULT '0',
  `val2` INT NOT NULL DEFAULT '0',
  `val3` INT NOT NULL DEFAULT '0',
  `val4` INT NOT NULL DEFAULT '0',
  KEY (`account_id`),
  KEY (`char_id`),
  PRIMARY KEY (`account_id`,`char_id`,`type`)
) ENGINE=MyISAM;

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_name` VARCHAR(30) NOT NULL DEFAULT '',
  `send_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `dest_name` VARCHAR(30) NOT NULL DEFAULT '',
  `dest_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `title` VARCHAR(45) NOT NULL DEFAULT '',
  `message` VARCHAR(255) NOT NULL DEFAULT '',
  `time` INT UNSIGNED NOT NULL DEFAULT '0',
  `status` TINYINT NOT NULL DEFAULT '0',
  `zeny` INT UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT UNSIGNED NOT NULL DEFAULT '0',
  `refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT NOT NULL DEFAULT '0',
  `card0` INT NOT NULL DEFAULT '0',
  `card1` INT NOT NULL DEFAULT '0',
  `card2` INT NOT NULL DEFAULT '0',
  `card3` INT NOT NULL DEFAULT '0',
  `opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val0` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val1` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val2` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val3` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val4` SMALLINT NOT NULL DEFAULT '0',
  `unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
  `memo_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `map` VARCHAR(11) NOT NULL DEFAULT '',
  `x` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `y` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `mercenary`
--

CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT NOT NULL,
  `class` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `hp` INT NOT NULL DEFAULT '1',
  `sp` INT NOT NULL DEFAULT '1',
  `kill_counter` INT NOT NULL,
  `life_time` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`mer_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `mercenary_owner`
--

CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` INT NOT NULL,
  `merc_id` INT NOT NULL DEFAULT '0',
  `arch_calls` INT NOT NULL DEFAULT '0',
  `arch_faith` INT NOT NULL DEFAULT '0',
  `spear_calls` INT NOT NULL DEFAULT '0',
  `spear_faith` INT NOT NULL DEFAULT '0',
  `sword_calls` INT NOT NULL DEFAULT '0',
  `sword_faith` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `exp` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `item` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `leader_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `leader_char` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `pet`
--

CREATE TABLE IF NOT EXISTS `pet` (
  `pet_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `class` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `level` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `egg_id` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `equip` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `intimate` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `hungry` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `rename_flag` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `incubate` INT UNSIGNED NOT NULL DEFAULT '0',
  `autofeed` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `quest_id` INT UNSIGNED NOT NULL,
  `state` ENUM('0','1','2') NOT NULL DEFAULT '0',
  `time` INT UNSIGNED NOT NULL DEFAULT '0',
  `count1` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `count2` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  `count3` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `ragsrvinfo`
--

CREATE TABLE IF NOT EXISTS `ragsrvinfo` (
  `index` INT NOT NULL DEFAULT '0',
  `name` VARCHAR(255) NOT NULL DEFAULT '',
  `exp` INT UNSIGNED NOT NULL DEFAULT '0',
  `jexp` INT UNSIGNED NOT NULL DEFAULT '0',
  `drop` INT UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `char_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `id` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `lv` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `flag` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `skill_homunculus`
--

CREATE TABLE IF NOT EXISTS `skill_homunculus` (
  `homun_id` INT NOT NULL,
  `id` INT NOT NULL,
  `lv` SMALLINT NOT NULL,
  PRIMARY KEY (`homun_id`,`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `sql_updates`
--

CREATE TABLE IF NOT EXISTS `sql_updates` (
  `timestamp` INT UNSIGNED NOT NULL,
  `ignored` ENUM('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`timestamp`)
) ENGINE=MyISAM;

-- Existent updates to enter
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1360858500); -- 2013-02-14--16-15.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1360951560); -- 2013-02-15--18-06.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1362445531); -- 2013-03-05--01-05.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1362528000); -- 2013-03-06--00-00.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1362794218); -- 2013-03-09--01-56.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1364409316); -- 2013-03-27--18-35.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1366075474); -- 2013-04-16--01-24.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1366078541); -- 2013-04-16--02-15.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1381354728); -- 2013-10-09--21-38.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1381423003); -- 2013-10-10--16-36.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1382892428); -- 2013-10-27--16-47.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1383162785); -- 2013-10-30--19-53.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1383167577); -- 2013-10-30--21-12.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1383205740); -- 2013-10-31--07-49.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1383955424); -- 2013-11-09--00-03.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1384473995); -- 2013-11-15--00-06.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1384545461); -- 2013-11-15--19-57.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1384588175); -- 2013-11-16--07-49.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1384763034); -- 2013-11-18--08-23.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1387844126); -- 2013-12-24--00-15.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1388854043); -- 2014-01-04--16-47.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1389028967); -- 2014-01-06--17-22.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1392832626); -- 2014-02-19--17-57.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1395789302); -- 2014-03-25--23-57.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1396893866); -- 2014-04-07--22-04.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1398477600); -- 2014-04-26--10-00.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1400256139); -- 2014-05-17--00-06.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1409590380); -- 2014-09-01--16-53.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1414975503); -- 2014-11-03--00-45.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1435860840); -- 2015-07-02--18-14.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1436360978); -- 2015-07-08--13-08.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1440688342); -- 2015-08-27--20-42.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1450241859); -- 2015-12-16--12-57.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1450367880); -- 2015-12-17--15-58.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1457638175); -- 2016-03-10--22-18.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1467934919); -- 2016-07-08--02-42.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1467935469); -- 2016-07-08--02-51.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1475526420); -- 2016-10-03--20-27.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1477434595); -- 2016-10-26--10-29.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1488454834); -- 2017-03-02--11-40.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1488744559); -- 2017-03-05--08-09.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1489588190); -- 2017-03-15--14-29.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1496588640); -- 2017-06-04--15-04.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1496588700); -- 2017-06-04--15-05.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1509835214); -- 2017-11-04--10-39.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1519671456); -- 2018-02-26--15-57.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1520654809); -- 2018-03-10--04-06.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1527964800); -- 2018-06-03--00-10.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1528026381); -- 2018-06-03--17-16.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1528180320); -- 2018-06-05--12-02.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1532403228); -- 2018-07-24--03-23.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1535865732); -- 2018-09-01--05-22.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1544738447); -- 2018-12-14--01-02.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1546059075); -- 2018-12-29--07-51.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1554760320); -- 2019-04-08--21-52.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1556147483); -- 2019-04-25--02-12.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1557414445); -- 2019-05-09--18-07.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1565293394); -- 2019-08-08--19-43.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1570309293); -- 2019-10-05--19-01.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1570870260); -- 2019-10-12--14-21.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1574463539); -- 2019-11-22--23-58.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1579817630); -- 2020-01-24--01-09.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1584838560); -- 2020-03-22--01-56.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1584842940); -- 2020-03-22--03-09.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1588301040); -- 2020-05-01--04-44.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1589145060); -- 2020-05-10--23-11.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1597467600); -- 2020-08-15--13-00.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1612286353); -- 2021-05-03--10-19.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1628121360); -- 2021-08-04--23-56.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1634838524); -- 2021-10-21--18-49.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1641405640); -- 2022-01-05--19-00.sql
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1665257750); -- 2022-10-08--08-35.sql

--
-- Table structure for table `storage`
--

CREATE TABLE IF NOT EXISTS `storage` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` INT UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `equip` INT UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `card0` INT NOT NULL DEFAULT '0',
  `card1` INT NOT NULL DEFAULT '0',
  `card2` INT NOT NULL DEFAULT '0',
  `card3` INT NOT NULL DEFAULT '0',
  `opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val0` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val1` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val2` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val3` SMALLINT NOT NULL DEFAULT '0',
  `opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  `opt_val4` SMALLINT NOT NULL DEFAULT '0',
  `expire_time` INT UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `rodex_items` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`mail_id` BIGINT NOT NULL DEFAULT '0',
	`nameid` INT NOT NULL DEFAULT '0',
	`amount` INT NOT NULL DEFAULT '0',
	`equip` INT UNSIGNED NOT NULL DEFAULT '0',
	`identify` SMALLINT NOT NULL DEFAULT '0',
	`refine` TINYINT UNSIGNED NOT NULL DEFAULT '0',
	`grade` TINYINT UNSIGNED NOT NULL DEFAULT '0',
	`attribute` TINYINT NOT NULL DEFAULT '0',
	`card0` INT NOT NULL DEFAULT '0',
	`card1` INT NOT NULL DEFAULT '0',
	`card2` INT NOT NULL DEFAULT '0',
	`card3` INT NOT NULL DEFAULT '0',
	`opt_idx0` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
	`opt_val0` SMALLINT NOT NULL DEFAULT '0',
	`opt_idx1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
	`opt_val1` SMALLINT NOT NULL DEFAULT '0',
	`opt_idx2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
	`opt_val2` SMALLINT NOT NULL DEFAULT '0',
	`opt_idx3` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
	`opt_val3` SMALLINT NOT NULL DEFAULT '0',
	`opt_idx4` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
	`opt_val4` SMALLINT NOT NULL DEFAULT '0',
	`expire_time` INT UNSIGNED NOT NULL DEFAULT '0',
	`bound` TINYINT UNSIGNED NOT NULL DEFAULT '0',
	`unique_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
  KEY `mail_id` (`mail_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `rodex_mail` (
	`mail_id` BIGINT NOT NULL AUTO_INCREMENT,
	`sender_name` VARCHAR(30) NOT NULL,
	`sender_id` INT NOT NULL,
	`receiver_name` VARCHAR(30) NOT NULL,
	`receiver_id` INT NOT NULL,
	`receiver_accountid` INT NOT NULL,
	`title` VARCHAR(50) NOT NULL,
	`body` VARCHAR(510) NOT NULL,
	`zeny` BIGINT NOT NULL,
	`type` TINYINT UNSIGNED NOT NULL,
	`is_read` TINYINT NOT NULL,
	`sender_read` TINYINT NOT NULL,
	`send_date` INT NOT NULL,
	`expire_date` INT NOT NULL,
	`weight` INT NOT NULL,
	PRIMARY KEY (`mail_id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `receiver_accountid` (`receiver_accountid`),
  KEY `send_date` (`send_date`),
  KEY `expire_date` (`expire_date`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `npc_barter_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemId` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT UNSIGNED NOT NULL DEFAULT '0',
  `priceId` INT UNSIGNED NOT NULL DEFAULT '0',
  `priceAmount` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`, `itemid`, `priceId`, `priceAmount`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `npc_expanded_barter_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemId` INT UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT UNSIGNED NOT NULL DEFAULT '0',
  `zeny` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyId1` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount1` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine1` INT NOT NULL DEFAULT '0',
  `currencyId2` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount2` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine2` INT NOT NULL DEFAULT '0',
  `currencyId3` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount3` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine3` INT NOT NULL DEFAULT '0',
  `currencyId4` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount4` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine4` INT NOT NULL DEFAULT '0',
  `currencyId5` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount5` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine5` INT NOT NULL DEFAULT '0',
  `currencyId6` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount6` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine6` INT NOT NULL DEFAULT '0',
  `currencyId7` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount7` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine7` INT NOT NULL DEFAULT '0',
  `currencyId8` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount8` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine8` INT NOT NULL DEFAULT '0',
  `currencyId9` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount9` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine9` INT NOT NULL DEFAULT '0',
  `currencyId10` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount10` INT UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine10` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`, `itemid`, `zeny`,
    `currencyId1`, `currencyAmount1`, `currencyRefine1`,
    `currencyId2`, `currencyAmount2`, `currencyRefine2`,
    `currencyId3`, `currencyAmount3`, `currencyRefine3`,
    `currencyId4`, `currencyAmount4`, `currencyRefine4`
)
) ENGINE=MyISAM;
