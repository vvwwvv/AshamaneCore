-- four horsemen rewrite
UPDATE `creature_template` SET `ScriptName`='boss_four_horsemen_baron' WHERE `entry`=30549;
UPDATE `creature_template` SET `ScriptName`='boss_four_horsemen_thane' WHERE `entry`=16064;
UPDATE `creature_template` SET `ScriptName`='boss_four_horsemen_lady' WHERE `entry`=16065;
UPDATE `creature_template` SET `ScriptName`='boss_four_horsemen_sir' WHERE `entry`=16063;

-- add ragecast texts
DELETE FROM `creature_text` WHERE `entry` IN (16064,16065,16063,30549) AND `groupid`=7;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(16063,7,0,"%s casts Condemnation on everyone!",41,100,33088,3,"zeliek EMOTE_RAGECAST"),
(16065,7,0,"%s casts Unyielding Pain on everyone!",41,100,33087,3,"blaumeux EMOTE_RAGECAST");
-- slay text probability to DB
UPDATE `creature_text` SET `probability`=30 WHERE `entry` IN (16064,16065,16063,30549) AND `groupid`=3;
