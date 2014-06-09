/*
Navicat SQL Server Data Transfer

Source Server         : localhost
Source Server Version : 105000
Source Host           : localhost:1433
Source Database       : webhis
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2014-06-09 18:13:04
*/


-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE [dbo].[auth_role]
GO
CREATE TABLE [dbo].[auth_role] (
[id] varchar(32) NOT NULL ,
[name] varchar(100) NULL ,
[descr] varchar(100) NULL 
)


GO

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881903943ef83013956258e3f0001', N'一般操作', N'一般操作')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e43479b36701347a1988ca001a', N'出生证明使用', N'出生证明使用')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e4358726350135893f8c5c0001', N'重症精神病', N'重症精神病')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e73586e33a0135870404df0001', N'行政管理', N'行政管理')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e73586e33a013587044e7b0002', N'妇幼业务工作', N'妇幼业务工作')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e73586e33a013587047d3c0003', N'妇幼统计工作', N'妇幼统计工作')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e73586e33a01358704a3520004', N'疾控业务', N'疾控业务')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e73586e33a01358704de090005', N'慢病', N'慢病')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'402881e73586e33a01358705a9870006', N'出生证明管理', N'出生证明管理')
GO
GO
INSERT INTO [dbo].[auth_role] ([id], [name], [descr]) VALUES (N'role_admin', N'超级管理员', N'0')
GO
GO

-- ----------------------------
-- Table structure for auth_role_module
-- ----------------------------
DROP TABLE [dbo].[auth_role_module]
GO
CREATE TABLE [dbo].[auth_role_module] (
[module_id] varchar(32) NOT NULL ,
[role_id] varchar(32) NOT NULL 
)


GO

-- ----------------------------
-- Records of auth_role_module
-- ----------------------------
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c36058e9f0136059034650001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c36058e9f0136059034650001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c36058e9f0136059034650001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c360b009d01360c4b38dd0005', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c360b009d01360c4b38dd0005', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c360b009d01360c4b38dd0005', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c360b009d01360c4b38dd0005', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013625f371c50003', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013625f371c50003', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013625f371c50003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626066a650004', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626066a650004', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626066a650004', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626066a650004', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c06101362628aa090005', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c06101362628aa090005', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c06101362628aa090005', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c06101362629165f0006', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c06101362629165f0006', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c06101362629165f0006', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626297d180007', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626297d180007', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c3625c061013626297d180007', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c362df14601362dfc869f0001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'4028813c362df14601362dfc869f0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881853102a260013102a53e160002', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881853102a260013102a53e160002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881853102a260013102a53e160002', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881853102a260013102a53e160002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea2cda4000c', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea2cda4000c', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea2cda4000c', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea2cda4000c', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea53c91000d', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea53c91000d', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea53c91000d', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ea53c91000d', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaacb4c000e', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaacb4c000e', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaacb4c000e', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaacb4c000e', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eab8749000f', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eab8749000f', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eab8749000f', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eab8749000f', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eac7c760010', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eac7c760010', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eac7c760010', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eac7c760010', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ead1a9b0011', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ead1a9b0011', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ead1a9b0011', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ead1a9b0011', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaed1050012', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaed1050012', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eaed1050012', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb046400013', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb046400013', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb1ab5e0014', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb1ab5e0014', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb2be930015', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb2be930015', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb3b5b40016', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9eb3b5b40016', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ecdae240017', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ecdae240017', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32a9e622d012a9ecdae240017', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19c361d0001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19c361d0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19d3be40002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19d3be40002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19df0400003', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19df0400003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19f486e0004', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa19f486e0004', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1a046270005', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1a046270005', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1a0dfd60006', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1a0dfd60006', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c822ed0007', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c822ed0007', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c822ed0007', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c9b2660008', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c9b2660008', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c9b2660008', N'402881e73586e33a01358704de090005')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1c9b2660008', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1ce60950009', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1ce60950009', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1ce60950009', N'402881e73586e33a01358704de090005')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1ce60950009', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1d94b81000a', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1d94b81000a', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1d94b81000a', N'402881e73586e33a01358704de090005')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1d94b81000a', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1db4712000b', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1db4712000b', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1db4712000b', N'402881e73586e33a01358704de090005')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1db4712000b', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e2a3d6000c', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e2a3d6000c', N'402881e4358726350135893f8c5c0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e2a3d6000c', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e2a3d6000c', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e46d6b000d', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e46d6b000d', N'402881e4358726350135893f8c5c0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e46d6b000d', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e46d6b000d', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e52a23000e', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e52a23000e', N'402881e4358726350135893f8c5c0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e52a23000e', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa197cd012aa1e52a23000e', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa708ee880002', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa708ee880002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa709ab300003', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa709ab300003', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa709ab300003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa70ad2c80004', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa70594012aa70ad2c80004', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881a32aa9289e012aa93c71bf0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3322d2ee901322d3131a10002', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3322d2ee901322d3131a10002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3322d2ee901322d3131a10002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3322d2ee901322d42ff300003', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3322d2ee901322d42ff300003', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3322d2ee901322d42ff300003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3323326ea0132337c1d810001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e3323326ea0132337c1d810001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e4338c1d1001338c2b04030001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc71ae0133fc73c00e0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc71ae0133fc74c0480003', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc71ae0133fc74c0480003', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc71ae0133fc74c0480003', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc71ae0133fc74c0480003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc8fba0133fc9301660006', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc8fba0133fc9301660006', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e433fc8fba0133fc9301660006', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d74c1e0002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d74c1e0002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d7a2e80003', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d7a2e80003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d7fb490004', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d7fb490004', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43418c0c7013418d7fb490004', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43479b367013479baa9310001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43479b367013479baa9310001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e43479b367013479baa9310001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e4348ddad601348ddc65f30001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e4348ddad601348ddc65f30001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e434adfabe0134adff72140001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e434adfabe0134adff72140001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e435cc34410135cc36b4770001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e435cc34410135cc36b4770001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e435cd4dc80135cd4f39f10001', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e435cd4dc80135cd4f39f10001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e435cd4dc80135cd4f39f10001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e533689fb2013368a1484c0001', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e533689fb2013368a1484c0001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e533689fb2013368a1484c0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e630697fa20130698187450001', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e630697fa20130698187450001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e630697fa20130698187450001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e630697fa20130698187450001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e630697fa20130698396100003', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881e630697fa20130698396100003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881f0318d877101318d8f901e0002', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881f0318d877101318d8f901e0002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881f0318d877101318d8f901e0002', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'402881f0318d877101318d8f901e0002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333a85f001333a895c640001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333a85f001333a895c640001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333a85f001333a895c640001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb44e090001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb44e090001', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb44e090001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb44e090001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb4baad0002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb4baad0002', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb4baad0002', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb4baad0002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb515310003', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb515310003', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb515310003', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb515310003', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb570de0004', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb570de0004', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb570de0004', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'5c250f83333fae8b01333fb570de0004', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812a6a002b012a6a00e2cb0002', N'402881903943ef83013956258e3f0001')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812a6a002b012a6a00e2cb0002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812a6a002b012a6a00e2cb0002', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812a6a002b012a6a00e2cb0002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812a83d873012a83dd758e0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812aef9554012af09b6b130001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812aef9554012af09b6b130001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812af0b66f012af0b8552c0002', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812af0b66f012af0b8552c0002', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812af0b66f012af0b8552c0002', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2d5f00012b2d8a1fd80001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2d5f00012b2d8a1fd80001', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2d5f00012b2d8a1fd80001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2d5f00012b2d8a1fd80001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2de099012b2de3445d0001', N'402881e73586e33a013587044e7b0002')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2de099012b2de3445d0001', N'402881e73586e33a013587047d3c0003')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2de099012b2de3445d0001', N'402881e73586e33a01358704a3520004')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'ff8081812b2de099012b2de3445d0001', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'm_mod', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'm_mod_cat_mgr', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'm_role', N'role_admin')
GO
GO
INSERT INTO [dbo].[auth_role_module] ([module_id], [role_id]) VALUES (N'm_user_mgr', N'role_admin')
GO
GO

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE [dbo].[auth_user]
GO
CREATE TABLE [dbo].[auth_user] (
[user_id] varchar(32) NOT NULL ,
[user_name] varchar(100) NOT NULL ,
[password] varchar(100) NOT NULL ,
[org_id] int NOT NULL ,
[create_date] datetime NOT NULL ,
[valid_flag] varchar(2) NOT NULL ,
[district_id] varchar(32) NULL ,
[type] int NULL ,
[IsLookAuthority] int NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'admin', N'admin', N'202cb962ac59075b964b07152d234b70', N'1', N'2011-06-07 00:00:00.000', N'1', N'530628', null, null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'cdx', N'陈登训', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 12:55:04.500', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'cls', N'陈腊松', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-08-24 13:52:15.503', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'ctz', N'陈庭芝', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:09:54.123', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'czp', N'曹忠平', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-08-24 09:14:19.127', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'gqy', N'高启英', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-09-10 18:28:09.987', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'HCS', N'韩成松', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-04-24 10:43:28.643', N'1', N'530628', null, null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'hdc', N'何德才', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-09-25 11:32:17.633', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'hrf', N'黄仁芳', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:04:04.967', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'hyh', N'胡永洪', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:05:50.827', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'HZC', N'黄泽春', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-08-24 08:33:05.970', N'1', N'530628', null, null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'LFL', N'林凤岭', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-08-24 08:48:32.627', N'1', N'530628', null, null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'lfx', N'李发仙', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-09-01 10:41:48.867', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'qss', N'邱仕葚', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:00:53.827', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'qxd', N'邱学东', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 12:58:59.140', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'sn', N'宋蘖', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:07:02.733', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'txf', N'唐相芬', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:12:33.937', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'why', N'文怀勇', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:02:32.407', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'wl', N'王林', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-09-01 10:29:56.170', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'WLL', N'文泷丽', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-04-24 11:24:07.550', N'1', N'530628', null, null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'wm', N'文茂', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-09-01 10:37:36.310', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'zcq', N'张春强', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:08:29.000', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'zpc', N'曾品春', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 13:11:29.310', N'1', N'530628213', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'zq', N'张琼', N'202cb962ac59075b964b07152d234b70', N'1', N'2012-09-01 09:06:31.283', N'1', N'530628', N'1', null)
GO
GO
INSERT INTO [dbo].[auth_user] ([user_id], [user_name], [password], [org_id], [create_date], [valid_flag], [district_id], [type], [IsLookAuthority]) VALUES (N'zyt', N'张友涛', N'202cb962ac59075b964b07152d234b70', N'1', N'2013-01-29 12:57:07.060', N'1', N'530628213', N'1', null)
GO
GO

-- ----------------------------
-- Table structure for cod_basecode
-- ----------------------------
DROP TABLE [dbo].[cod_basecode]
GO
CREATE TABLE [dbo].[cod_basecode] (
[ID] int NOT NULL ,
[Number] int NOT NULL ,
[Name] nvarchar(2000) NULL ,
[Name_Png] nvarchar(64) NOT NULL ,
[Type] smallint NOT NULL DEFAULT ((0)) ,
[State] smallint NOT NULL DEFAULT ((0)) ,
[IsMain] bit NOT NULL ,
[IsBeforehand] bit NOT NULL ,
[IsInputValue] nvarchar(30) NOT NULL DEFAULT ((0)) ,
[PrintPage] int NULL 
)


GO

-- ----------------------------
-- Records of cod_basecode
-- ----------------------------
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1', N'0', N'B超', N'', N'1', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'2', N'0', N'HIV抗体检测', N'', N'2', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'3', N'0', N'RH阴性', N'', N'3', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'4', N'0', N'鼻', N'', N'4', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'5', N'0', N'步态', N'', N'5', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'6', N'0', N'残疾情况', N'', N'6', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'7', N'0', N'常住类型', N'', N'7', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'8', N'0', N'齿列', N'', N'8', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'9', N'0', N'出生情况', N'', N'9', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'10', N'0', N'此次随访分类', N'', N'10', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'11', N'0', N'阴性阳性', N'', N'11', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'12', N'0', N'低血糖反应', N'', N'12', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'13', N'0', N'锻炼频率', N'', N'13', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'14', N'0', N'恶露', N'', N'14', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'15', N'0', N'耳', N'', N'15', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'16', N'0', N'肺部', N'', N'16', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'17', N'0', N'分类', N'', N'17', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'18', N'0', N'服药依从性', N'', N'18', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'19', N'0', N'妇科', N'', N'19', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'20', N'0', N'妇科手术史', N'', N'20', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'21', N'0', N'附件', N'', N'21', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'22', N'0', N'腹部', N'', N'22', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'23', N'0', N'肝脾', N'', N'23', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'24', N'0', N'肛门', N'', N'24', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'25', N'0', N'肛门/外生殖器', N'', N'25', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'26', N'0', N'肛门指诊', N'', N'26', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'27', N'0', N'个人生活料理', N'', N'27', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'28', N'0', N'宫颈', N'', N'28', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'29', N'0', N'宫颈涂片', N'', N'29', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'30', N'0', N'巩膜', N'', N'30', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'31', N'0', N'佝偻病体征', N'', N'31', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'32', N'0', N'佝偻病症状', N'', N'32', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'33', N'0', N'关锁情况', N'', N'33', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'34', N'0', N'过敏史', N'', N'34', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'35', N'0', N'正常异常', N'', N'35', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'36', N'0', N'患病对家庭社会的影响', N'', N'36', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'37', N'0', N'婚姻状况', N'', N'37', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'38', N'0', N'疾病', N'', N'38', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'39', N'0', N'脊柱', N'', N'39', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'40', N'0', N'既往史', N'', N'40', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'41', N'0', N'既往治疗情况（门诊）', N'', N'41', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'42', N'0', N'既往主要症状', N'', N'42', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'43', N'0', N'家务劳动', N'', N'43', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'44', N'0', N'家族史', N'', N'44', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'45', N'0', N'健康评价', N'', N'45', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'46', N'0', N'健康指导', N'', N'46', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'47', N'0', N'颈部包块', N'', N'47', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'48', N'0', N'康复措施', N'', N'48', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'49', N'0', N'口唇', N'', N'49', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'50', N'0', N'口腔', N'', N'50', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'51', N'0', N'老年人情感状态', N'', N'51', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'52', N'0', N'老年人认知功能', N'', N'52', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'53', N'0', N'淋巴结', N'', N'53', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'54', N'0', N'罗音', N'', N'54', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'55', N'0', N'梅毒血清学试验', N'', N'55', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'56', N'0', N'面色', N'', N'56', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'57', N'0', N'民族', N'', N'57', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'58', N'0', N'母亲妊娠期患病疾病情况', N'', N'58', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'59', N'0', N'目前症状', N'', N'59', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'60', N'0', N'脑血管疾病', N'', N'60', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'61', N'0', N'皮肤', N'', N'61', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'62', N'0', N'平和质', N'', N'62', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'63', N'0', N'其他系统疾病', N'', N'63', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'64', N'0', N'脐部', N'', N'64', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'65', N'0', N'脐带', N'', N'65', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'66', N'0', N'是、倾向是', N'', N'66', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'67', N'0', N'气郁质', N'', N'67', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'68', N'0', N'前囟', N'', N'68', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'69', N'0', N'乳房', N'', N'69', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'70', N'0', N'乳腺', N'', N'70', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'71', N'0', N'伤口', N'', N'71', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'72', N'0', N'社会人际交往', N'', N'72', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'73', N'0', N'通过未过', N'', N'73', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'74', N'0', N'未发现、有', N'', N'74', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'75', N'0', N'肾脏疾病', N'', N'75', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'76', N'0', N'生产劳动及工作', N'', N'76', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'77', N'0', N'湿热质', N'', N'77', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'78', N'0', N'是否戒酒', N'', N'78', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'79', N'0', N'是否有畸型', N'', N'79', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'80', N'0', N'是否转诊', N'', N'80', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'81', N'0', N'手术', N'', N'81', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'82', N'0', N'输血', N'', N'82', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'83', N'0', N'睡眠情况', N'', N'83', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'84', N'0', N'四肢', N'', N'84', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'85', N'0', N'四肢活动度', N'', N'85', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'86', N'0', N'随访方式', N'', N'86', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'87', N'0', N'痰湿质', N'', N'87', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'88', N'0', N'特秉质', N'', N'88', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'89', N'0', N'体格发育评价', N'', N'89', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'90', N'0', N'听力', N'', N'90', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'91', N'0', N'听诊肺部', N'', N'91', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'92', N'0', N'听诊心脏', N'', N'92', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'93', N'0', N'桶状胸', N'', N'93', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'94', N'0', N'外伤', N'', N'94', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'95', N'0', N'外生殖器', N'', N'95', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'96', N'0', N'未见异常、异常', N'', N'96', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'97', N'0', N'危险因素控制', N'', N'97', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'98', N'0', N'喂养方式', N'', N'98', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'99', N'0', N'文化程度', N'', N'99', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'100', N'0', N'吸烟状况', N'', N'100', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'101', N'0', N'下肢水肿', N'', N'101', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'102', N'0', N'心电图', N'', N'102', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'103', N'0', N'心肺', N'', N'103', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'104', N'0', N'心理调整', N'', N'104', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'105', N'0', N'心律', N'', N'105', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'106', N'0', N'心脏', N'', N'106', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'107', N'0', N'心脏疾病', N'', N'107', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'108', N'0', N'新生儿听力筛查', N'', N'108', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'109', N'0', N'新生儿窒息', N'', N'109', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'110', N'0', N'行为', N'', N'110', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'111', N'0', N'性别', N'', N'111', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'112', N'0', N'胸部X线片', N'', N'112', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'113', N'0', N'学习能力', N'', N'113', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'114', N'0', N'血管疾病', N'', N'114', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'115', N'0', N'血型', N'', N'115', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'116', N'0', N'血瘀质', N'', N'116', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'117', N'0', N'咽部', N'', N'117', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'118', N'0', N'眼', N'', N'118', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'119', N'0', N'眼部疾病', N'', N'119', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'120', N'0', N'眼底', N'', N'120', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'121', N'0', N'阳虚质', N'', N'121', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'122', N'0', N'药物不良反应', N'', N'122', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'123', N'0', N'医疗费用支付方式', N'', N'123', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'124', N'0', N'遗传病史', N'', N'124', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'125', N'0', N'乙型肝炎表面抗原', N'', N'125', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'126', N'0', N'阴道', N'', N'126', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'127', N'0', N'阴道分泌物', N'', N'127', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'128', N'0', N'阴虚质', N'', N'128', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'129', N'0', N'饮酒频率', N'', N'129', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'130', N'0', N'饮酒种类', N'', N'130', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'131', N'0', N'饮食情况', N'', N'131', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'132', N'0', N'饮食习惯', N'', N'132', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'133', N'0', N'幼儿期患病情况', N'', N'133', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'134', N'0', N'孕产史', N'', N'134', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'135', N'0', N'运动功能', N'', N'135', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'136', N'0', N'高血压症状', N'', N'136', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'137', N'0', N'职业', N'', N'137', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'138', N'0', N'职业暴露情况', N'', N'138', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'139', N'0', N'产后健康指导', N'', N'139', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'140', N'0', N'治疗效果', N'', N'140', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'141', N'0', N'转诊', N'', N'141', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'142', N'0', N'子宫', N'', N'142', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'143', N'0', N'自知力', N'', N'143', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'144', N'0', N'总体评估', N'', N'144', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'145', N'0', N'足背动脉搏动', N'', N'145', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'146', N'0', N'最近一次治疗效果', N'', N'146', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'147', N'0', N'遵医行为', N'', N'147', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'148', N'0', N'个人信息家族史', N'', N'148', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'149', N'0', N'体检症状', N'', N'149', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'150', N'0', N'体检皮肤', N'', N'150', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'151', N'0', N'有无', N'', N'151', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'152', N'0', N'健康教育存档材料', N'', N'152', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'153', N'0', N'新生儿面色', N'', N'153', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'154', N'0', N'新生儿前卤', N'', N'154', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'155', N'0', N'新生儿访视指导', N'', N'155', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'156', N'0', N'2岁儿童体检指导', N'', N'156', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'157', N'0', N'3岁儿童体检指导', N'', N'157', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'158', N'0', N'产前随访既往史', N'', N'158', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'159', N'0', N'产前随访指导', N'', N'159', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'160', N'0', N'产后随访指导', N'', N'160', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'161', N'0', N'产后检查分类', N'', N'161', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'162', N'0', N'产后检查处理', N'', N'162', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'163', N'0', N'高血压随访分类', N'', N'163', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'164', N'0', N'2型糖尿病症状', N'', N'164', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'165', N'0', N'触及未触及', N'', N'165', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'166', N'0', N'精神疾病随访分类', N'', N'166', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'167', N'0', N'疫苗', N'', N'167', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'168', N'0', N'疫苗接种部位', N'', N'168', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'169', N'0', N'接种途径', N'', N'169', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'170', N'0', N'报卡类别', N'', N'170', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'171', N'0', N'是否选择', N'', N'171', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'172', N'0', N'上中下', N'', N'172', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'173', N'0', N'1周岁月龄', N'', N'173', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'174', N'0', N'1~2周岁月龄', N'', N'174', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'175', N'0', N'3周岁月龄', N'', N'175', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'176', N'0', N'住院分类', N'', N'176', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'180', N'0', N'年龄单位', N'', N'180', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'181', N'0', N'所属区域', N'', N'181', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'182', N'0', N'患者职业', N'', N'182', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'183', N'0', N'病例分类', N'', N'183', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'184', N'0', N'甲类传染病', N'', N'184', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'185', N'0', N'乙类传染病', N'', N'185', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'186', N'0', N'丙类传染病', N'', N'186', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'187', N'0', N'住院治疗分类', N'', N'187', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'188', N'0', N'发育评估', N'', N'188', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'189', N'0', N'患病情况', N'', N'189', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'190', N'0', N'3~6周岁月龄', N'', N'190', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'191', N'0', N'两次随访间患病情况', N'', N'191', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'192', N'0', N'暴露史', N'', N'192', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'483', N'0', N'未知的性别', N'性别', N'111', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'484', N'1', N'男', N'性别', N'111', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'485', N'2', N'女', N'性别', N'111', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'486', N'9', N'未说明的性别', N'性别', N'111', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'487', N'1', N'户籍', N'常住类型', N'7', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'488', N'2', N'非户籍', N'常住类型', N'7', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'489', N'1', N'汉族', N'民族', N'57', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'490', N'2', N'少数民族', N'民族', N'57', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'491', N'1', N'A型', N'血型', N'115', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'492', N'2', N'B型', N'血型', N'115', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'493', N'3', N'O型', N'血型', N'115', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'494', N'4', N'AB型', N'血型', N'115', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'495', N'5', N'不详', N'血型', N'115', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'496', N'1', N'否', N'RH阴性', N'3', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'497', N'2', N'是', N'RH阴性', N'3', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'498', N'3', N'不详', N'RH阴性', N'3', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'499', N'1', N'文盲及半文盲', N'文化程度', N'99', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'500', N'2', N'小学', N'文化程度', N'99', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'501', N'3', N'初中', N'文化程度', N'99', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'502', N'4', N'高中/技校/中专', N'文化程度', N'99', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'503', N'5', N'大学专科及以上', N'文化程度', N'99', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'504', N'6', N'不详', N'文化程度', N'99', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'505', N'1', N'国家机关、党群组织、企业、事业单位负责人', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'506', N'2', N'专业技术人员', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'507', N'3', N'办事人员和有关人员', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'508', N'4', N'商业、服务业人员', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'509', N'5', N'农、林、牧、渔、水利业生产人员', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'510', N'6', N'生产、运输设备操作人员及有关人员', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'511', N'7', N'军人', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'512', N'8', N'不便分类的其他从业人员', N'职业', N'137', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'513', N'1', N'未婚', N'婚姻状况', N'37', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'514', N'2', N'已婚', N'婚姻状况', N'37', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'515', N'3', N'丧偶', N'婚姻状况', N'37', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'516', N'4', N'离婚  ', N'婚姻状况', N'37', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'517', N'5', N'未说明的婚姻状况', N'婚姻状况', N'37', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'518', N'1', N'城镇职工基本医疗保险', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'519', N'2', N'城镇居民基本医疗保险', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'520', N'3', N'新型农村合作医疗', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'521', N'4', N'贫困救助', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'522', N'5', N'商业医疗保险', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'523', N'6', N'全公费', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'524', N'7', N'全自费', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'525', N'8', N'其他', N'医疗费用支付方式', N'123', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'526', N'1', N'无', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'527', N'2', N'高血压   ', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'528', N'3', N'糖尿病', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'529', N'4', N'冠心病', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'530', N'5', N'慢性阻塞性肺疾病', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'531', N'6', N'恶性肿瘤', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'532', N'7', N'脑卒中', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'533', N'8', N'重性精神疾病', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'534', N'9', N'结核病', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'535', N'10', N'肝炎  ', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'536', N'11', N'其他法定传染病  ', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'537', N'13', N'其他', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'538', N'1', N'无', N'手术', N'81', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'539', N'2', N'有', N'手术', N'81', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'540', N'1', N'无', N'外伤', N'94', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'541', N'2', N'有', N'外伤', N'94', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'542', N'1', N'无', N'输血', N'82', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'543', N'2', N'有', N'输血', N'82', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'544', N'1', N'无', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'545', N'2', N'高血压', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'546', N'3', N'糖尿病', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'547', N'4', N'冠心病', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'548', N'5', N'慢性阻塞性肺疾病', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'549', N'6', N'恶性肿瘤', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'550', N'7', N'脑卒中', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'551', N'8', N'重性精神疾病', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'552', N'9', N'结核病', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'553', N'10', N'肝炎', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'554', N'11', N'先天畸形', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'555', N'12', N'其他', N'家族史', N'148', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'556', N'1', N'无', N'遗传病史', N'124', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'557', N'2', N'有', N'遗传病史', N'124', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'558', N'1', N'无残疾', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'559', N'2', N'视力残疾', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'560', N'3', N'听力残疾', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'561', N'4', N'言语残疾  ', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'562', N'5', N'肢体残疾', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'563', N'6', N'智力残疾  ', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'564', N'7', N'精神残疾    ', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'565', N'8', N'其他残疾', N'残疾情况', N'6', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'566', N'1', N'无症状', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'567', N'2', N'头痛', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'568', N'3', N'头晕', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'569', N'4', N'心悸', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'570', N'5', N'胸闷', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'571', N'6', N'胸痛', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'572', N'7', N'慢性咳嗽', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'573', N'8', N'咳痰', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'574', N'9', N'呼吸困难', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'575', N'10', N'多饮', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'576', N'11', N'多尿', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'577', N'12', N'体重下降', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'578', N'13', N'乏力', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'579', N'14', N'关节肿痛', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'580', N'15', N'视力模糊', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'581', N'16', N'手脚麻木', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'582', N'17', N'尿急', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'583', N'18', N'尿痛', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'584', N'19', N'便秘', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'585', N'20', N'腹泻', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'586', N'21', N'恶心呕吐', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'587', N'22', N'眼花', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'588', N'23', N'耳鸣', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'589', N'24', N'乳房胀痛', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'590', N'25', N'其他', N'症状', N'149', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'591', N'1', N'粗筛阴性', N'老年人认知功能', N'52', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'592', N'2', N'粗筛阳性', N'老年人认知功能', N'52', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'593', N'1', N'粗筛阴性', N'老年人情感状态', N'51', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'594', N'2', N'粗筛阳性， 老年人抑郁评分检查', N'老年人情感状态', N'51', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'595', N'1', N'每天', N'锻炼频率', N'13', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'596', N'2', N'每周一次以上', N'锻炼频率', N'13', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'597', N'3', N'偶尔', N'锻炼频率', N'13', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'598', N'4', N'不锻炼', N'锻炼频率', N'13', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'599', N'1', N'荤素均衡', N'饮食习惯', N'132', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'600', N'2', N'荤食为主', N'饮食习惯', N'132', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'601', N'3', N'素食为主', N'饮食习惯', N'132', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'602', N'4', N'嗜盐', N'饮食习惯', N'132', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'603', N'5', N'嗜油', N'饮食习惯', N'132', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'604', N'6', N'嗜糖', N'饮食习惯', N'132', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'605', N'1', N'从不吸烟', N'吸烟状况', N'100', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'606', N'2', N'已戒烟', N'吸烟状况', N'100', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'607', N'3', N'吸烟', N'吸烟状况', N'100', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'608', N'1', N'从不', N'饮酒频率', N'129', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'609', N'2', N'偶尔', N'饮酒频率', N'129', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'610', N'3', N'经常', N'饮酒频率', N'129', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'611', N'4', N'每天', N'饮酒频率', N'129', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'612', N'1', N'未戒酒', N'是否戒酒', N'78', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'613', N'2', N'已戒酒', N'是否戒酒', N'78', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'614', N'1', N'白酒', N'饮酒种类', N'130', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'615', N'2', N'啤酒', N'饮酒种类', N'130', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'616', N'3', N'红酒', N'饮酒种类', N'130', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'617', N'4', N'黄酒', N'饮酒种类', N'130', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'618', N'5', N'其他', N'饮酒种类', N'130', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'619', N'1', N'无', N'职业暴露情况', N'138', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'620', N'2', N'有', N'职业暴露情况', N'138', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'621', N'1', N'红润', N'口唇', N'49', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'622', N'2', N'苍白', N'口唇', N'49', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'623', N'3', N'发干', N'口唇', N'49', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'624', N'4', N'皲裂', N'口唇', N'49', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'625', N'5', N'疱疹', N'口唇', N'49', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'626', N'1', N'正常', N'齿列', N'8', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'627', N'2', N'缺齿', N'齿列', N'8', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'628', N'3', N'龋齿', N'齿列', N'8', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'629', N'4', N'义齿(假牙)', N'齿列', N'8', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'630', N'1', N'无充血', N'咽部', N'117', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'631', N'2', N'充血', N'咽部', N'117', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'632', N'3', N'淋巴滤泡增生', N'咽部', N'117', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'633', N'1', N'听见', N'听力', N'90', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'634', N'2', N'听不清或无法听见', N'听力', N'90', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'635', N'1', N'可顺利完成', N'运动功能', N'135', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'636', N'2', N'无法独立完成其中任何一个动作', N'运动功能', N'135', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'637', N'1', N'正常', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'638', N'2', N'潮红', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'639', N'3', N'苍白', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'640', N'4', N'发绀', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'641', N'5', N'黄染', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'642', N'6', N'色素沉着', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'643', N'7', N'其他', N'皮肤', N'150', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'644', N'1', N'正常', N'巩膜', N'30', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'645', N'2', N'黄染', N'巩膜', N'30', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'646', N'3', N'充血', N'巩膜', N'30', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'647', N'4', N'其他', N'巩膜', N'30', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'648', N'1', N'未触及', N'淋巴结', N'53', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'649', N'2', N'锁骨上', N'淋巴结', N'53', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'650', N'3', N'腋窝', N'淋巴结', N'53', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'651', N'4', N'其他', N'淋巴结', N'53', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'652', N'1', N'否', N'桶状胸', N'93', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'653', N'2', N'是', N'桶状胸', N'93', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'654', N'1', N'正常', N'呼吸音', N'35', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'655', N'2', N'异常', N'呼吸音', N'35', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'656', N'1', N'无', N'罗音', N'54', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'657', N'2', N'干罗音', N'罗音', N'54', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'658', N'3', N'湿罗音', N'罗音', N'54', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'659', N'4', N'其他', N'罗音', N'54', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'660', N'1', N'齐', N'心律', N'105', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'661', N'2', N'不齐', N'心律', N'105', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'662', N'3', N'绝对不齐', N'心律', N'105', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'665', N'1', N'无', N'下肢水肿', N'101', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'666', N'2', N'单侧', N'下肢水肿', N'101', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'667', N'3', N'双侧不对称', N'下肢水肿', N'101', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'668', N'4', N'双侧对称', N'下肢水肿', N'101', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'669', N'1', N'未触及', N'足背动脉搏动', N'145', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'670', N'2', N'触及双侧对称', N'足背动脉搏动', N'145', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'671', N'3', N'触及左侧弱或消失', N'足背动脉搏动', N'145', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'672', N'4', N'触及右侧弱或消失', N'足背动脉搏动', N'145', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'673', N'1', N'未及异常', N'肛门指诊', N'26', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'674', N'2', N'触痛', N'肛门指诊', N'26', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'675', N'3', N'包块', N'肛门指诊', N'26', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'676', N'4', N'前列腺异常', N'肛门指诊', N'26', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'677', N'5', N'其他', N'肛门指诊', N'26', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'678', N'1', N'未见异常', N'乳腺', N'70', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'679', N'2', N'乳房切除', N'乳腺', N'70', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'680', N'3', N'异常泌乳', N'乳腺', N'70', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'681', N'4', N'乳腺包块', N'乳腺', N'70', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'682', N'5', N'其他', N'乳腺', N'70', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'683', N'1', N'未见异常', N'妇科', N'19', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'684', N'2', N'异常', N'妇科', N'19', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'685', N'1', N'阴性', N'大便潜血', N'11', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'686', N'2', N'阳性', N'大便潜血', N'11', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'691', N'1', N'糖尿病', N'母亲妊娠期患病疾病情况', N'58', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'692', N'2', N'妊娠期高血压', N'母亲妊娠期患病疾病情况', N'58', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'693', N'3', N'其他', N'母亲妊娠期患病疾病情况', N'58', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'694', N'1', N'顺产', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'695', N'2', N'头吸', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'696', N'3', N'产钳剖宫', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'697', N'4', N'剖宫双多胎 ', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'698', N'5', N'双多胎', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'699', N'6', N'臀位', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'700', N'7', N'其他', N'出生情况', N'9', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'701', N'1', N'无', N'新生儿窒息', N'109', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'702', N'2', N'有', N'新生儿窒息', N'109', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'703', N'1', N'无', N'是否有畸型', N'79', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'704', N'2', N'有', N'是否有畸型', N'79', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'705', N'1', N'通过  ', N'新生儿听力筛查', N'108', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'706', N'2', N'未通过  ', N'新生儿听力筛查', N'108', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'707', N'3', N'未筛查', N'新生儿听力筛查', N'108', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'708', N'1', N'纯母乳', N'喂养方式', N'98', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'709', N'2', N'混合', N'喂养方式', N'98', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'710', N'3', N'人工', N'喂养方式', N'98', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'711', N'1', N'红润  ', N'面色', N'153', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'712', N'2', N'黄染 ', N'面色', N'153', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'713', N'3', N'其他', N'面色', N'153', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'714', N'1', N'正常 ', N'前囟', N'154', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'715', N'2', N'膨隆', N'前囟', N'154', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'716', N'3', N'凹陷', N'前囟', N'154', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'717', N'4', N'其他', N'前囟', N'154', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'718', N'1', N'未见异常 ', N'眼', N'118', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'719', N'2', N'异常', N'眼', N'118', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'720', N'1', N'未见异常 ', N'耳', N'15', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'721', N'2', N'异常', N'耳', N'15', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'722', N'1', N'未见异常 ', N'鼻', N'4', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'723', N'2', N'异常', N'鼻', N'4', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'724', N'1', N'未见异常 ', N'口腔', N'50', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'725', N'2', N'异常', N'口腔', N'50', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'726', N'1', N'未见异常 ', N'心肺', N'103', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'727', N'2', N'异常', N'心肺', N'103', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'728', N'1', N'未见异常 ', N'腹部', N'22', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'729', N'2', N'异常', N'腹部', N'22', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'730', N'1', N'未见异常 ', N'脊柱', N'39', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'731', N'2', N'异常', N'脊柱', N'39', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'732', N'1', N'未见异常 ', N'外生殖器', N'95', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'733', N'2', N'异常', N'外生殖器', N'95', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'734', N'1', N'未见异常 ', N'肛门', N'24', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'735', N'2', N'异常', N'肛门', N'24', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'736', N'1', N'未见异常 ', N'四肢活动度', N'85', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'737', N'2', N'异常', N'四肢活动度', N'85', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'738', N'1', N'有 ', N'颈部包块', N'47', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'739', N'2', N'无', N'颈部包块', N'47', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'740', N'1', N'未见异常 ', N'皮肤', N'61', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'741', N'2', N'湿疹', N'皮肤', N'61', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'742', N'3', N'糜烂', N'皮肤', N'61', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'743', N'4', N'其他', N'皮肤', N'61', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'744', N'1', N'未脱 ', N'脐带', N'65', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'745', N'2', N'脱落', N'脐带', N'65', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'746', N'3', N'脐部有渗出 ', N'脐带', N'65', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'747', N'4', N'其他', N'脐带', N'65', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'748', N'1', N'有', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'749', N'2', N'无', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'750', N'1', N'喂养指导  ', N'指导', N'155', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'751', N'2', N'母乳喂养  ', N'指导', N'155', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'752', N'3', N'发育指导', N'指导', N'155', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'753', N'4', N'防病指导', N'指导', N'155', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'756', N'1', N'闭合', N'前囟', N'68', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'757', N'2', N'未闭', N'前囟', N'68', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'758', N'1', N'未见异常', N'眼', N'118', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'759', N'2', N'异常', N'眼', N'118', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'760', N'1', N'未见异常', N'耳', N'15', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'761', N'2', N'异常', N'耳', N'15', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'762', N'1', N'未见异常', N'心肺', N'103', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'763', N'2', N'异常', N'心肺', N'103', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'766', N'1', N'未见异常', N'脐部', N'64', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'767', N'2', N'异常', N'脐部', N'64', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'768', N'1', N'未见异常', N'四肢', N'84', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'769', N'2', N'异常', N'四肢', N'84', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'770', N'1', N'无', N'佝偻病症状', N'32', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'771', N'2', N'夜惊', N'佝偻病症状', N'32', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'772', N'3', N'多汗', N'佝偻病症状', N'32', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'773', N'4', N'烦躁', N'佝偻病症状', N'32', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'774', N'1', N'无', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'775', N'2', N'颅骨软化', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'776', N'3', N'方颅', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'777', N'4', N'枕秃', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'778', N'5', N'肋串珠', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'779', N'6', N'肋外翻', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'780', N'7', N'肋软骨沟', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'781', N'8', N'鸡胸', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'782', N'9', N'手镯征', N'佝偻病体征', N'31', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'783', N'1', N'“O”型腿', N'2岁儿童可疑佝偻病体征', N'1299', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'784', N'2', N'“X”型腿', N'2岁儿童可疑佝偻病体征', N'1299', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'785', N'1', N'未见异常', N'肛门/外生殖器', N'25', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'786', N'2', N'异常', N'肛门/外生殖器', N'25', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'787', N'1', N'有', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'788', N'2', N'无', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'789', N'1', N'未见异常', N'乳房', N'69', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'790', N'2', N'异常', N'乳房', N'69', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'791', N'1', N'未见异常', N'恶露', N'14', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'792', N'2', N'异常', N'恶露', N'14', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'793', N'1', N'未见异常', N'子宫', N'142', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'794', N'2', N'异常', N'子宫', N'142', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'795', N'1', N'未见异常', N'伤口', N'71', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'796', N'2', N'异常', N'伤口', N'71', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'797', N'1', N'未见异常', N'分类', N'17', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'798', N'2', N'异常', N'分类', N'17', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'799', N'1', N'性保健', N'指导', N'139', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'800', N'2', N'避孕', N'指导', N'139', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'801', N'3', N'婴儿喂养及营养', N'指导', N'139', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'802', N'4', N'其他', N'指导', N'139', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'803', N'1', N'无', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'804', N'2', N'心脏病', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'805', N'3', N'肾脏疾病', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'806', N'4', N'肝脏疾病', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'807', N'5', N'高血压', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'808', N'6', N'贫血', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'809', N'7', N'糖尿病', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'810', N'8', N'其他', N'既往史', N'158', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'811', N'2', N'遗传性疾病史', N'家族史', N'44', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'812', N'3', N'精神疾病史', N'家族史', N'44', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'813', N'4', N'其他', N'家族史', N'44', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'814', N'1', N'无', N'妇科手术史', N'20', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'815', N'2', N'有', N'妇科手术史', N'20', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'816', N'1', N'流产', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'817', N'2', N'死胎', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'818', N'3', N'新生儿死亡', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'819', N'1', N'未见异常', N'听诊心脏', N'92', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'820', N'2', N'异常', N'听诊心脏', N'92', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'821', N'1', N'未见异常', N'听诊肺部', N'91', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'822', N'2', N'异常', N'听诊肺部', N'91', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'823', N'1', N'未见异常', N'外阴', N'96', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'824', N'2', N'异常', N'外阴', N'96', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'825', N'1', N'未见异常', N'阴道', N'126', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'826', N'2', N'异常', N'阴道', N'126', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'827', N'1', N'未见异常', N'宫颈', N'28', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'828', N'2', N'异常', N'宫颈', N'28', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'829', N'1', N'未见异常', N'子宫', N'142', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'830', N'2', N'异常', N'子宫', N'142', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'831', N'1', N'未见异常', N'附件', N'21', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'832', N'2', N'异常', N'附件', N'21', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'833', N'1', N'未见异常', N'阴道分泌物', N'127', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'834', N'2', N'异常', N'阴道分泌物', N'127', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'835', N'1', N'未见异常', N'梅毒血清学试验', N'55', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'836', N'2', N'异常', N'梅毒血清学试验', N'55', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'837', N'1', N'未见异常', N'HIV抗体检测', N'2', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'838', N'2', N'异常', N'HIV抗体检测', N'2', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'839', N'1', N'未见异常', N'总体评估', N'144', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'840', N'2', N'异常', N'总体评估', N'144', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'841', N'1', N'无', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'842', N'2', N'有', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'843', N'1', N'个人卫生', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'844', N'2', N'膳食', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'845', N'3', N'心理', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'846', N'4', N'运动', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'847', N'5', N'自我监护', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'848', N'1', N'门诊', N'随访方式', N'86', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'849', N'2', N'家庭', N'随访方式', N'86', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'850', N'3', N'电话', N'随访方式', N'86', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'851', N'1', N'无症状　', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'852', N'2', N'头痛头晕 ', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'853', N'3', N'恶心呕吐　', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'854', N'4', N'眼花耳鸣  ', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'855', N'5', N'呼吸困难　', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'856', N'6', N'心悸胸闷 ', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'857', N'7', N'鼻衄出血不止', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'858', N'8', N'四肢发麻  ', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'859', N'9', N'下肢水肿', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'860', N'1', N'良好', N'心理调整', N'104', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'861', N'2', N'一般', N'心理调整', N'104', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'862', N'3', N'差', N'心理调整', N'104', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'863', N'1', N'良好', N'遵医行为', N'147', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'864', N'2', N'一般', N'遵医行为', N'147', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'865', N'3', N'差', N'遵医行为', N'147', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'866', N'1', N'规律', N'服药依从性', N'18', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'867', N'2', N'间断', N'服药依从性', N'18', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'868', N'3', N'不服药', N'服药依从性', N'18', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'869', N'1', N'有', N'药物不良反应', N'122', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'870', N'2', N'无', N'药物不良反应', N'122', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'871', N'1', N'1控制满意', N'此次随访分类', N'163', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'872', N'2', N'控制不满意', N'此次随访分类', N'163', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'873', N'3', N'不良反应', N'此次随访分类', N'163', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'874', N'4', N'并发症  ', N'此次随访分类', N'163', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'875', N'1', N'无', N'低血糖反应', N'12', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'876', N'2', N'偶尔', N'低血糖反应', N'12', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'877', N'3', N'频繁', N'低血糖反应', N'12', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'878', N'1', N'控制满意', N'此次随访分类', N'10', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'879', N'2', N'控制不满意', N'此次随访分类', N'10', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'880', N'3', N'不良反应 ', N'此次随访分类', N'10', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'881', N'4', N'并发症    ', N'此次随访分类', N'10', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'882', N'1', N'幻觉    ', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'883', N'2', N'交流困难 ', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'884', N'3', N'猜疑笑  ', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'885', N'4', N'喜怒无常', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'886', N'5', N'行为怪异', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'887', N'6', N'兴奋话多', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'888', N'7', N'伤人毁物', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'889', N'8', N'悲观厌世', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'890', N'9', N'无故外走', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'891', N'10', N'自语自笑', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'892', N'11', N'其他', N'既往主要症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'893', N'1', N'未治   ', N'既往治疗情况（门诊）', N'41', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'894', N'2', N'间断门诊治疗    ', N'既往治疗情况（门诊）', N'41', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'895', N'3', N'连续门诊治疗', N'既往治疗情况（门诊）', N'41', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'896', N'1', N'痊愈     ', N'最近一次治疗效果', N'146', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'897', N'2', N'好转  ', N'最近一次治疗效果', N'146', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'898', N'3', N'无变化 ', N'最近一次治疗效果', N'146', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'899', N'4', N'加重  ', N'最近一次治疗效果', N'146', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'900', N'1', N'轻度滋事        次 ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'901', N'2', N'肇事        次  ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'902', N'3', N'肇祸        次  ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'903', N'4', N'自伤         次 ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'904', N'5', N'自杀未遂        次 ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'905', N'6', N'无', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'906', N'1', N'无关锁   ', N'关锁情况', N'33', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'907', N'2', N'关锁  ', N'关锁情况', N'33', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'908', N'3', N'关锁已解除   ', N'关锁情况', N'33', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'909', N'1', N'幻觉 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'910', N'2', N'交流困难 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'911', N'3', N'猜疑 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'912', N'4', N'喜怒无常 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'913', N'5', N'行为怪异 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'914', N'6', N'兴奋话多', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'915', N'7', N'伤人毁物 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'916', N'8', N'悲观厌世 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'917', N'9', N'无故外走', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'918', N'10', N'自语自笑  ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'919', N'11', N'孤僻懒散 ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'920', N'12', N'其他            ', N'目前症状', N'59', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'921', N'1', N'自知力完全　 ', N'自知力', N'143', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'922', N'2', N'自知力不全　 ', N'自知力', N'143', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'923', N'3', N'自知力缺失    ', N'自知力', N'143', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'924', N'1', N'良好', N'睡眠情况', N'83', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'925', N'2', N'一般', N'睡眠情况', N'83', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'926', N'3', N'较差', N'睡眠情况', N'83', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'927', N'1', N'良好', N'饮食情况', N'131', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'928', N'2', N'一般', N'饮食情况', N'131', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'929', N'3', N'较差', N'饮食情况', N'131', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'930', N'1', N'良好   ', N'个人生活料理', N'27', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'931', N'2', N'一般                    ', N'个人生活料理', N'27', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'932', N'3', N'较差   ', N'个人生活料理', N'27', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'933', N'1', N'良好', N'家务劳动', N'43', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'934', N'2', N'一般', N'家务劳动', N'43', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'935', N'3', N'较差', N'家务劳动', N'43', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'936', N'1', N'良好', N'生产劳动及工作', N'76', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'937', N'2', N'一般', N'生产劳动及工作', N'76', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'938', N'3', N'较差', N'生产劳动及工作', N'76', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'939', N'4', N'此项不适宜', N'生产劳动及工作', N'76', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'940', N'1', N'良好', N'学习能力', N'113', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'941', N'2', N'一般', N'学习能力', N'113', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'942', N'3', N'较差', N'学习能力', N'113', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'943', N'1', N'良好', N'社会人际交往', N'72', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'944', N'2', N'一般', N'社会人际交往', N'72', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'945', N'3', N'较差', N'社会人际交往', N'72', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'946', N'1', N'轻度滋事        次   ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'947', N'2', N'肇事        次  ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'948', N'3', N'肇祸        次   ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'949', N'4', N'自伤        次    ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'950', N'5', N'自杀未遂        次  ', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'951', N'6', N'无', N'患病对家庭社会的影响', N'36', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'955', N'1', N'痊愈 ', N'治疗效果', N'140', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'956', N'2', N'好转  ', N'治疗效果', N'140', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'957', N'3', N'无变化   ', N'治疗效果', N'140', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'958', N'4', N'加重  ', N'治疗效果', N'140', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'959', N'1', N'稳定 ', N'此次随访分类', N'166', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'960', N'2', N'基本稳定 ', N'此次随访分类', N'166', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'961', N'3', N'不稳定  ', N'此次随访分类', N'166', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'962', N'1', N'否   ', N'是否转诊', N'80', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'963', N'2', N'是', N'是否转诊', N'80', N'0', N'0', N'1', N'1', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'964', N'1', N'职业训练', N'康复措施', N'48', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'965', N'2', N'学习能力', N'康复措施', N'48', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'966', N'3', N'社会交往', N'康复措施', N'48', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'967', N'4', N'其他   ', N'康复措施', N'48', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'968', N'1', N'正常', N'体格发育评价', N'89', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'969', N'2', N'低体重', N'体格发育评价', N'89', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'970', N'3', N'消瘦', N'体格发育评价', N'89', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'971', N'4', N'发育迟缓', N'体格发育评价', N'89', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'972', N'5', N'超重', N'体格发育评价', N'89', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'973', N'1', N'红润', N'面色', N'56', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'974', N'2', N'异常', N'面色', N'56', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'975', N'1', N'正常', N'步态', N'5', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'976', N'2', N'异常', N'步态', N'5', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'977', N'1', N'未见异常', N'眼', N'118', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'978', N'2', N'异常', N'眼', N'118', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'979', N'1', N'未见异常', N'耳', N'15', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'980', N'2', N'异常', N'耳', N'15', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'981', N'1', N'未见异常', N'心肺', N'103', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'982', N'2', N'异常', N'心肺', N'103', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'983', N'1', N'未见异常', N'肝脾', N'23', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'984', N'2', N'异常', N'肝脾', N'23', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'985', N'1', N'通过', N'行为', N'110', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'986', N'2', N'未过', N'行为', N'110', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'987', N'1', N'通过', N'社交', N'73', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'988', N'2', N'未过', N'社交', N'73', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'989', N'1', N'无', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'990', N'2', N'肺炎       次', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'991', N'3', N'麻疹', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'992', N'4', N'贫血', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'993', N'5', N'营养不良', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'994', N'6', N'佝偻病', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'995', N'7', N'因腹泻住院      次', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'996', N'8', N'因外伤住院      次', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'997', N'9', N'其他', N'幼儿期患病情况', N'133', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'999', N'1', N'无', N'过敏史', N'34', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1000', N'1', N'无', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1001', N'2', N'有', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1002', N'1', N'膳食指导', N'指导', N'157', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1003', N'4', N'预防意外伤害', N'指导', N'157', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1004', N'3', N'疾病预防', N'指导', N'157', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1005', N'1', N'无', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1006', N'2', N'心脏病', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1007', N'3', N'肾脏疾病', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1008', N'4', N'肝脏疾病', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1009', N'5', N'高血压', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1010', N'6', N'贫血', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1011', N'7', N'糖尿病', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1012', N'8', N'其他', N'既往史', N'40', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1016', N'1', N'无', N'妇科手术史', N'20', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1017', N'2', N'有', N'妇科手术史', N'20', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1018', N'1', N'流产', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1019', N'2', N'死胎', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1020', N'3', N'死产', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1021', N'4', N'新生儿死亡', N'孕产史', N'134', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1022', N'1', N'未见异常', N'心脏', N'106', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1023', N'2', N'异常', N'心脏', N'106', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1024', N'1', N'未见异常', N'肺部', N'16', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1025', N'2', N'异常', N'肺部', N'16', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1028', N'1', N'未见异常', N'阴道', N'126', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1029', N'2', N'异常', N'阴道', N'126', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1030', N'1', N'未见异常', N'宫颈', N'28', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1031', N'2', N'异常', N'宫颈', N'28', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1032', N'1', N'未见异常', N'子宫', N'142', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1033', N'2', N'异常', N'子宫', N'142', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1034', N'1', N'未见异常', N'附件', N'21', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1035', N'2', N'异常', N'附件', N'21', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1037', N'3', N'滴虫', N'阴道分泌物', N'127', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1038', N'4', N'霉菌', N'阴道分泌物', N'127', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1039', N'5', N'其他', N'阴道分泌物', N'127', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1040', N'1', N'阴性', N'梅毒血清学试验', N'55', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1041', N'2', N'阳性', N'梅毒血清学试验', N'55', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1042', N'1', N'阴性', N'HIV抗体检测', N'2', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1043', N'2', N'阳性', N'HIV抗体检测', N'2', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1044', N'1', N'未见异常', N'总体评估', N'144', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1045', N'2', N'异常', N'总体评估', N'144', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1046', N'1', N'无', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1047', N'2', N'有', N'转诊', N'141', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1049', N'1', N'纳入慢性病患者健康管理', N'健康指导', N'46', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1050', N'2', N'建议复查', N'健康指导', N'46', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1051', N'3', N'建议转诊', N'健康指导', N'46', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1052', N'1', N'戒烟', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1053', N'2', N'健康饮酒', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1054', N'3', N'饮食', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1055', N'4', N'锻炼', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1056', N'5', N'减体重', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1057', N'6', N'建议疫苗接种', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1058', N'7', N'其他', N'危险因素控制', N'97', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1059', N'1', N'体检无异常', N'健康评价', N'45', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1060', N'2', N'有异常', N'健康评价', N'45', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1061', N'1', N'未发现', N'其他系统疾病', N'63', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1062', N'2', N'有', N'其他系统疾病', N'63', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1063', N'1', N'未发现', N'神经系统疾病', N'74', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1064', N'2', N'有', N'神经系统疾病', N'74', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1065', N'1', N'未发现', N'眼部疾病', N'119', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1066', N'2', N'视网膜出血或渗出', N'眼部疾病', N'119', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1067', N'3', N'视乳头水肿', N'眼部疾病', N'119', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1068', N'4', N'白内障', N'眼部疾病', N'119', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1069', N'5', N'其他', N'眼部疾病', N'119', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1070', N'1', N'未发现', N'血管疾病', N'114', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1071', N'2', N'夹层动脉瘤', N'血管疾病', N'114', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1072', N'3', N'动脉闭塞性疾病', N'血管疾病', N'114', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1073', N'4', N'其他', N'血管疾病', N'114', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1074', N'1', N'未发现', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1075', N'2', N'心肌梗死', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1076', N'3', N'心绞痛', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1077', N'4', N'冠状动脉血运重建', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1078', N'5', N'充血性心力衰竭', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1079', N'6', N'心前区疼痛', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1080', N'7', N'其他', N'心脏疾病', N'107', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1081', N'1', N'未发现', N'肾脏疾病', N'75', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1082', N'2', N'糖尿病肾病', N'肾脏疾病', N'75', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1083', N'3', N'肾功能衰竭', N'肾脏疾病', N'75', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1084', N'4', N'急性肾炎', N'肾脏疾病', N'75', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1085', N'5', N'慢性肾炎', N'肾脏疾病', N'75', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1086', N'6', N'其他', N'肾脏疾病', N'75', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1087', N'1', N'未发现', N'脑血管疾病', N'60', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1088', N'2', N'缺血性卒中', N'脑血管疾病', N'60', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1089', N'3', N'脑出血', N'脑血管疾病', N'60', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1090', N'4', N'蛛网膜下腔出血', N'脑血管疾病', N'60', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1091', N'5', N'短暂性脑缺血发作', N'脑血管疾病', N'60', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1092', N'6', N'其他', N'脑血管疾病', N'60', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1093', N'1', N'是', N'特秉质', N'88', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1094', N'2', N'倾向是', N'特秉质', N'88', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1095', N'1', N'是', N'气郁质', N'67', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1096', N'2', N'倾向是', N'气郁质', N'67', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1097', N'1', N'是', N'血瘀质', N'116', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1098', N'2', N'倾向是', N'血瘀质', N'116', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1099', N'1', N'是', N'湿热质', N'77', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1100', N'2', N'倾向是', N'湿热质', N'77', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1101', N'1', N'是', N'痰湿质', N'87', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1102', N'2', N'倾向是', N'痰湿质', N'87', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1103', N'1', N'是', N'阴虚质', N'128', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1104', N'2', N'倾向是', N'阴虚质', N'128', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1105', N'1', N'是', N'阳虚质', N'121', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1106', N'2', N'倾向是', N'阳虚质', N'121', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1107', N'1', N'是', N'气虚质', N'66', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1108', N'2', N'倾向是', N'气虚质', N'66', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1109', N'1', N'是', N'平和质', N'62', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1110', N'2', N'基本是', N'平和质', N'62', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1111', N'1', N'正常', N'宫颈涂片', N'29', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1112', N'2', N'异常', N'宫颈涂片', N'29', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1113', N'1', N'正常', N'B超', N'1', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1114', N'2', N'异常', N'B超', N'1', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1115', N'1', N'正常', N'胸部X线片', N'112', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1116', N'2', N'异常', N'胸部X线片', N'112', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1117', N'1', N'正常', N'心电图', N'102', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1118', N'2', N'异常', N'心电图', N'102', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1119', N'1', N'正常', N'眼底', N'120', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1120', N'2', N'异常', N'眼底', N'120', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1121', N'1', N'阴性', N'乙型肝炎表面抗原', N'125', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1122', N'2', N'阳性', N'乙型肝炎表面抗原', N'125', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1123', N'2', N'青霉素', N'', N'34', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1124', N'3', N'磺胺', N'', N'34', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1125', N'4', N'链霉素', N'', N'34', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1126', N'5', N'其它', N'', N'34', N'0', N'0', N'1', N'1', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1127', N'1', N'无', N'', N'151', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1128', N'2', N'有', N'', N'151', N'0', N'0', N'1', N'1', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1129', N'1', N'书面材料', N'', N'152', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1130', N'2', N'图片材料', N'', N'152', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1131', N'3', N'印刷材料', N'', N'152', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1132', N'4', N'影音材料', N'', N'152', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1133', N'5', N'居民签到表', N'', N'152', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1134', N'6', N'其它材料', N'', N'152', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1135', N'1', N'喂养指导', N'', N'156', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1136', N'2', N'母乳喂养', N'', N'156', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1137', N'3', N'疾病预防', N'', N'156', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1138', N'1', N'个人卫生', N'', N'160', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1139', N'2', N'心理', N'', N'160', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1140', N'3', N'营养', N'', N'160', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1141', N'4', N'母乳喂养', N'', N'160', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1142', N'5', N'新生儿护理与喂养', N'', N'160', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1143', N'1', N'已恢复', N'', N'161', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1144', N'2', N'未恢复', N'', N'161', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1145', N'1', N'结案', N'', N'162', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1146', N'2', N'转诊', N'', N'162', N'0', N'0', N'1', N'1', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1147', N'1', N'无症状', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1148', N'2', N'多饮', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1149', N'3', N'多食', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1150', N'4', N'多尿', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1151', N'5', N'视力模糊', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1152', N'6', N'感染', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1153', N'7', N'手脚麻木', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1154', N'8', N'下肢浮肿', N'', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1155', N'1', N'未触及', N'', N'165', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1156', N'2', N'触及', N'', N'165', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1157', N'1', N'乙肝疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1158', N'2', N'卡介苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1159', N'0', N'上臂三角肌', N'', N'168', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1160', N'0', N'上臂三角肌中部略下处', N'', N'168', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1161', N'0', N'肌内注射', N'', N'169', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1162', N'0', N'皮内注射', N'', N'169', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1163', N'1', N'是', N'', N'171', N'0', N'0', N'1', N'1', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1164', N'2', N'否', N'', N'171', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1165', N'1', N'上', N'1', N'172', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1166', N'5', N'中下', N'2', N'172', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1167', N'6', N'下', N'3', N'172', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1168', N'1', N'1月龄', N'1', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1169', N'2', N'2月龄', N'2', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1170', N'3', N'3月龄', N'3', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1171', N'4', N'4月龄', N'4', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1172', N'5', N'5月龄', N'5', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1173', N'6', N'6月龄', N'6', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1174', N'7', N'7月龄', N'7', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1175', N'8', N'8月龄', N'8', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1176', N'9', N'9月龄', N'9', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1177', N'10', N'10月龄', N'10', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1178', N'11', N'11月龄', N'11', N'173', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1179', N'1', N'12月龄', N'12', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1180', N'2', N'13月龄', N'1', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1181', N'3', N'14月龄', N'2', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1182', N'4', N'15月龄', N'3', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1183', N'5', N'16月龄', N'4', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1184', N'6', N'17月龄', N'5', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1185', N'7', N'18月龄', N'6', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1186', N'8', N'19月龄', N'7', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1187', N'9', N'20月龄', N'8', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1188', N'10', N'21月龄', N'9', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1189', N'11', N'22月龄', N'10', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1190', N'12', N'23月龄', N'11', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1191', N'13', N'24月龄', N'12', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1192', N'14', N'25月龄', N'1', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1193', N'15', N'26月龄', N'2', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1194', N'16', N'27月龄', N'3', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1195', N'17', N'28月龄', N'4', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1196', N'18', N'29月龄', N'5', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1197', N'19', N'30月龄', N'6', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1198', N'20', N'31月龄', N'7', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1199', N'21', N'32月龄', N'8', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1200', N'22', N'33月龄', N'9', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1201', N'23', N'34月龄', N'10', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1202', N'24', N'35月龄', N'11', N'174', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1203', N'0', N'36月龄', N'12', N'175', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1204', N'0', N'25月龄', N'1', N'176', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1205', N'0', N'26月龄', N'2', N'176', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1206', N'1', N'岁', N'1', N'180', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1207', N'2', N'月', N'2', N'180', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1208', N'3', N'天', N'3', N'180', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1209', N'1', N'初次报告', N'1', N'170', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1210', N'2', N'订正报告', N'2', N'170', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1211', N'1', N'本县区', N'1', N'181', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1212', N'2', N'本市其它县区', N'2', N'181', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1213', N'1', N'幼托儿童', N'1', N'182', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1214', N'2', N'散居儿童', N'2', N'182', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1215', N'1', N'疑似病例', N'1', N'183', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1216', N'2', N'临床诊断病例', N'2', N'183', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1217', N'1', N'鼠疫', N'1', N'184', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1218', N'2', N'霍乱', N'2', N'184', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1219', N'1', N'传染性非典型性肺炎', N'1', N'185', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1220', N'2', N'艾滋病', N'2', N'185', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1221', N'1', N'流线性感冒', N'1', N'186', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1222', N'2', N'流线性腮腺炎', N'2', N'186', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1223', N'1', N'住院史', N'1', N'187', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1224', N'2', N'家庭病床史', N'2', N'187', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1225', N'1', N'通过', N'1', N'188', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1226', N'2', N'未通过', N'2', N'188', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1227', N'1', N'未患病', N'1', N'189', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1228', N'2', N'患病', N'2', N'189', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1229', N'1', N'3岁', N'3', N'190', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1230', N'2', N'4岁', N'4', N'190', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1231', N'3', N'5岁', N'5', N'190', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1232', N'4', N'6岁', N'6', N'190', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1233', N'2', N'生长发育', N'指导', N'157', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1234', N'5', N'口腔保健', N'指导', N'157', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1235', N'1', N'无', N'两次随访间患病情况', N'191', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1236', N'2', N'肺炎', N'两次随访间患病情况', N'191', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1237', N'3', N'腹泻', N'两次随访间患病情况', N'191', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1238', N'4', N'外伤', N'两次随访间患病情况', N'191', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1239', N'5', N'其它', N'两次随访间患病情况', N'191', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1240', N'1', N'无', N'暴露史', N'192', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1241', N'2', N'化学品', N'暴露史', N'192', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1242', N'3', N'毒物', N'暴露史', N'192', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1243', N'4', N'射线', N'暴露史', N'192', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1244', N'12', N'职业病', N'疾病', N'38', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1245', N'0', N'厨房排风设施', N'', N'1245', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1246', N'1', N'无', N'厨房排风设施', N'1245', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1247', N'2', N'油烟机', N'厨房排风设施', N'1245', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1248', N'3', N'换气扇', N'厨房排风设施', N'1245', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1249', N'4', N'烟囱', N'厨房排风设施', N'1245', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1250', N'0', N'燃料类型', N'', N'1250', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1251', N'1', N'液化气', N'燃料类型', N'1250', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1252', N'2', N'煤', N'燃料类型', N'1250', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1253', N'3', N'天然气', N'燃料类型', N'1250', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1254', N'4', N'沼气', N'燃料类型', N'1250', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1255', N'5', N'柴火', N'燃料类型', N'1250', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1256', N'6', N'其他', N'燃料类型', N'1250', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1257', N'0', N'饮水', N'', N'1257', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1258', N'1', N'自来水', N'饮水', N'1257', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1259', N'2', N'经净化过滤的水', N'饮水', N'1257', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1260', N'3', N'井水', N'饮水', N'1257', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1261', N'4', N'河湖水', N'饮水', N'1257', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1262', N'5', N'塘水', N'饮水', N'1257', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1263', N'6', N'其他', N'饮水', N'1257', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1264', N'0', N'厕所', N'', N'1264', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1265', N'1', N'卫生厕所', N'厕所', N'1264', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1266', N'2', N'一格或二格粪池式', N'厕所', N'1264', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1267', N'3', N'马桶', N'厕所', N'1264', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1268', N'4', N'露天粪坑', N'厕所', N'1264', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1269', N'5', N'简易棚厕', N'厕所', N'1264', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1270', N'0', N'禽畜栏', N'', N'1270', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1271', N'1', N'单设', N'禽畜栏', N'1270', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1272', N'2', N'室内', N'禽畜栏', N'1270', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1273', N'3', N'室外', N'禽畜栏', N'1270', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1274', N'0', N'老年人健康状态自我评估', N'', N'1274', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1275', N'1', N'满意', N'老年人健康状态自我评估', N'1274', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1276', N'2', N'基本满意', N'老年人健康状态自我评估', N'1274', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1277', N'3', N'说不清楚', N'老年人健康状态自我评估', N'1274', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1278', N'4', N'不太满意', N'老年人健康状态自我评估', N'1274', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1279', N'5', N'不满意', N'老年人健康状态自我评估', N'1274', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1280', N'0', N'老年人生活自理能力自我评估', N'', N'1280', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1281', N'1', N'可自理（0～3分）', N'老年人生活自理能力自我评估', N'1280', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1282', N'2', N'轻度依赖（4～8分）', N'老年人生活自理能力自我评估', N'1280', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1283', N'3', N'中度依赖（9～18分）', N'老年人生活自理能力自我评估', N'1280', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1284', N'4', N'不能自理（≥19分）', N'老年人生活自理能力自我评估', N'1280', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1285', N'4', N'不详', N'新生儿听力筛查', N'108', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1286', N'0', N'新生儿疾病筛查', N'', N'1286', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1287', N'1', N'甲低', N'新生儿疾病筛查', N'1286', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1288', N'2', N'苯丙酮尿症', N'新生儿疾病筛查', N'1286', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1289', N'3', N'其他遗传代谢病', N'新生儿疾病筛查', N'1286', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1290', N'0', N'大便', N'', N'1290', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1291', N'1', N'糊状', N'大便', N'1290', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1292', N'2', N'稀', N'大便', N'1290', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1293', N'0', N'黄疸部位', N'', N'1293', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1294', N'1', N'面部', N'黄疸部位', N'1293', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1295', N'2', N'躯干', N'黄疸部位', N'1293', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1296', N'3', N'四肢', N'黄疸部位', N'1293', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1297', N'4', N'手足', N'黄疸部位', N'1293', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1298', N'5', N'口腔保健指导', N'指导', N'155', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1299', N'0', N'1~2岁儿童可疑佝偻病体征', N'', N'1299', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1300', N'0', N'个人史', N'', N'1300', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1301', N'2', N'吸烟', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1302', N'3', N'饮酒', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1303', N'4', N'服用药物', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1304', N'5', N'接触有毒有害物质', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1305', N'6', N'接触放射线', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1306', N'7', N'其他', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1307', N'0', N'阴道清洁度', N'', N'1307', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1308', N'1', N'Ⅰ度', N'阴道清洁度', N'1307', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1309', N'2', N'Ⅱ度', N'阴道清洁度', N'1307', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1310', N'3', N'Ⅲ度', N'阴道清洁度', N'1307', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1311', N'4', N'Ⅳ度', N'阴道清洁度', N'1307', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1312', N'6', N'其它', N'产后随访指导', N'160', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1313', N'0', N'第2~5次产前随访项目', N'', N'1313', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1314', N'1', N'第2次', N'阴道清洁度', N'1313', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1315', N'2', N'第3次', N'阴道清洁度', N'1313', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1316', N'3', N'第4次', N'阴道清洁度', N'1313', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1317', N'4', N'第5次', N'阴道清洁度', N'1313', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1318', N'6', N'分娩准备', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1319', N'7', N'母乳喂养', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1320', N'8', N'其他', N'指导', N'159', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1321', N'10', N'其他', N'症状', N'136', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1322', N'10', N'其他', N'症状', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1323', N'9', N'体重明显下降', N'症状', N'164', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1324', N'0', N'知情同意', N'', N'1324', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1325', N'1', N'同意参加管理', N'知情同意', N'1324', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1326', N'2', N'不同意参加管理', N'知情同意', N'1324', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1327', N'12', N'其他', N'症状', N'42', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1328', N'0', N'经济状况', N'', N'1328', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1329', N'1', N'贫困，在当地贫困线标准以下', N'经济状况', N'1328', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1330', N'2', N'非贫困', N'经济状况', N'1328', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1331', N'2', N'不详', N'经济状况', N'1328', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1332', N'0', N'危险性', N'', N'1332', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1333', N'0', N'（0级）', N'危险性', N'1332', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1334', N'1', N'（1级）', N'危险性', N'1332', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1335', N'2', N'（2级）', N'危险性', N'1332', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1336', N'3', N'（3级）', N'危险性', N'1332', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1337', N'4', N'（4级）', N'危险性', N'1332', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1338', N'5', N'（5级）', N'危险性', N'1332', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1339', N'0', N'住院情况', N'', N'1339', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1340', N'0', N'从未住院', N'住院情况', N'1339', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1341', N'1', N'目前正在住院', N'住院情况', N'1339', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1342', N'2', N'既往住院，现未住院', N'住院情况', N'1339', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1343', N'0', N'摄盐情况', N'', N'1343', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1344', N'1', N'轻', N'摄盐情况', N'1343', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1345', N'2', N'中', N'摄盐情况', N'1343', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1346', N'3', N'重', N'摄盐情况', N'1343', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1347', N'0', N'产前随访保健指导', N'', N'1347', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1348', N'1', N'个人卫生', N'产前随访保健指导', N'1347', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1349', N'2', N'心理', N'产前随访保健指导', N'1347', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1350', N'3', N'营养', N'产前随访保健指导', N'1347', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1351', N'4', N'避免致畸因素和疾病对胚胎的不良影响', N'产前随访保健指导', N'1347', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1352', N'5', N'产前筛查宣传告知', N'产前随访保健指导', N'1347', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1353', N'6', N'其他', N'产前随访保健指导', N'1347', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1354', N'1', N'无', N'家族史', N'44', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1355', N'1', N'无', N'个人史', N'1300', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1356', N'3', N'脊灰疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1357', N'4', N'百白破疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1358', N'5', N'白破疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1359', N'6', N'麻风疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1360', N'7', N'麻腮风疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1361', N'8', N'乙脑(减毒)', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1362', N'9', N'流脑A', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1363', N'10', N'流脑A+C', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1364', N'11', N'甲肝(减毒)', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1365', N'12', N'出血热疫苗(双价)', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1366', N'13', N'炭疽疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1367', N'14', N'钩体疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1368', N'15', N'乙脑灭活疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1369', N'16', N'甲肝灭活疫苗', N'', N'167', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1370', N'0', N'分娩地点', N'', N'1370', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1371', N'1', N'县级以上医院', N'分娩地点', N'1370', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1372', N'2', N'乡卫生院', N'分娩地点', N'1370', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1373', N'3', N'村卫生所', N'分娩地点', N'1370', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1374', N'4', N'家中', N'分娩地点', N'1370', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1375', N'5', N'途中', N'分娩地点', N'1370', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1376', N'0', N'分娩方式', N'', N'1376', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1377', N'1', N'顺产', N'分娩方式', N'1376', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1378', N'2', N'臀产', N'分娩方式', N'1376', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1379', N'3', N'胎吸', N'分娩方式', N'1376', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1380', N'4', N'产钳', N'分娩方式', N'1376', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1381', N'5', N'剖宫产', N'分娩方式', N'1376', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1382', N'0', N'接生方式', N'', N'1382', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1383', N'1', N'新法接生', N'接生方式', N'1382', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1384', N'2', N'旧法', N'接生方式', N'1382', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1385', N'3', N'脐带包', N'接生方式', N'1382', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1386', N'4', N'科学接生', N'接生方式', N'1382', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1387', N'0', N'会阴撕裂', N'', N'1387', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1388', N'1', N'无', N'会阴撕裂', N'1387', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1389', N'2', N'Ⅰ', N'会阴撕裂', N'1387', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1390', N'3', N'Ⅱ', N'会阴撕裂', N'1387', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1391', N'4', N'Ⅲ', N'会阴撕裂', N'1387', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1392', N'5', N'切开', N'会阴撕裂', N'1387', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1393', N'0', N'产后处理', N'', N'1393', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1394', N'1', N'指搔宫腔', N'产后处理', N'1393', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1395', N'2', N'人工剥离胎盘', N'产后处理', N'1393', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1396', N'3', N'宫颈缝合术', N'产后处理', N'1393', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1397', N'4', N'外阴缝合术', N'产后处理', N'1393', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1398', N'5', N'无', N'产后处理', N'1393', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1399', N'0', N'产时合并症', N'', N'1399', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1400', N'1', N'胎儿窘迫', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1401', N'2', N'胎膜早破', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1402', N'3', N'滞产', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1403', N'4', N'脐带脱垂', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1404', N'5', N'子宫破裂', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1405', N'6', N'羊水栓塞', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1406', N'7', N'其它', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1407', N'8', N'无', N'产时合并症', N'1399', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1408', N'0', N'危急孕产妇', N'', N'1408', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1409', N'1', N'是', N'危急孕产妇', N'1408', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1410', N'2', N'否', N'危急孕产妇', N'1408', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1411', N'0', N'新生儿', N'', N'1411', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1412', N'1', N'男', N'新生儿', N'1411', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1413', N'2', N'女', N'新生儿', N'1411', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1414', N'0', N'新生儿存活情况', N'', N'1414', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1415', N'1', N'活产', N'新生儿存活情况', N'1414', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1416', N'2', N'死亡', N'新生儿存活情况', N'1414', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1417', N'0', N'新生儿出生情况', N'', N'1417', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1418', N'1', N'正常', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1419', N'2', N'窒息', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1420', N'3', N'畸形', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1421', N'4', N'产伤', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1422', N'5', N'死胎', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1423', N'6', N'死产', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1424', N'7', N'其它', N'新生儿出生情况', N'1417', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1425', N'0', N'新生儿并发症', N'', N'1425', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1426', N'1', N'发热', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1427', N'2', N'肺炎', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1428', N'3', N'产伤', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1429', N'4', N'病理性黄疸', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1430', N'5', N'呼吸窘迫综合症', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1431', N'6', N'其它', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1432', N'7', N'无', N'新生儿并发症', N'1425', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1433', N'0', N'开奶时间', N'', N'1433', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1434', N'1', N'断脐后立即', N'开奶时间', N'1433', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1435', N'2', N'三小时内', N'开奶时间', N'1433', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1436', N'3', N'六小时内', N'开奶时间', N'1433', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1437', N'4', N'六小时以上', N'开奶时间', N'1433', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1438', N'0', N'健康状况', N'', N'1438', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1439', N'1', N'良好', N'健康状况', N'1438', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1440', N'2', N'一般', N'健康状况', N'1438', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1441', N'3', N'差', N'健康状况', N'1438', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1442', N'0', N'出生地分类', N'', N'1442', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1443', N'1', N'医院', N'出生地分类', N'1442', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1444', N'2', N'妇幼保健院', N'出生地分类', N'1442', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1445', N'3', N'家庭', N'出生地分类', N'1442', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1446', N'4', N'其它', N'出生地分类', N'1442', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1447', N'0', N'出生证明作废原因', N'', N'1447', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1448', N'1', N'因打印或填写错误', N'', N'1447', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1449', N'2', N'遗失', N'', N'1447', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1450', N'3', N'其它', N'', N'1447', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1451', N'6', N'难产', N'分娩方式', N'1376', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1452', N'0', N'咽扁', N'', N'1452', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1453', N'1', N'无充血肿大', N'', N'1452', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1454', N'2', N'咽充血', N'', N'1452', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1455', N'3', N'扁桃体肿大', N'', N'1452', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1456', N'4', N'其它', N'', N'1452', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1457', N'0', N'全身浅表淋巴结', N'', N'1457', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1458', N'1', N'无肿大', N'', N'1457', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1459', N'2', N'肿大', N'', N'1457', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1460', N'0', N'胸廓', N'', N'1460', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1461', N'1', N'对称', N'', N'1460', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1462', N'2', N'鸡胸', N'', N'1460', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1463', N'3', N'漏斗胸', N'', N'1460', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1464', N'4', N'肋串珠', N'', N'1460', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1465', N'5', N'郝氏沟（肋外翻）', N'', N'1460', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1466', N'6', N'其它', N'', N'1460', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1467', N'0', N'肝脾', N'', N'1467', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1468', N'1', N'未触及肿大', N'', N'1467', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1469', N'2', N'肿大', N'', N'1467', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1470', N'3', N'其它', N'', N'1467', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1471', N'3', N'中+', N'', N'172', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1472', N'4', N'中-', N'', N'172', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1473', N'2', N'中上', N'', N'172', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1478', N'0', N'产后访视项目', N'', N'1478', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1479', N'1', N'3~7天', N'', N'1478', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1480', N'2', N'10~14天', N'', N'1478', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1481', N'3', N'28天', N'', N'1478', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1482', N'0', N'', N'', N'1482', N'0', N'1', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1483', N'1', N'胎位不清', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1484', N'2', N'左枕前（LOA）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1485', N'3', N'右枕前（ROA）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1486', N'4', N'左枕后（LOP）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1487', N'5', N'右枕后（ROP）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1488', N'6', N'左枕横（LOT）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1489', N'7', N'右枕横（ROT）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1490', N'8', N'面先露', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1491', N'9', N'肩先露', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1492', N'10', N'臀先露', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1493', N'11', N'足先露', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1494', N'12', N'横位（手先露）', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO
INSERT INTO [dbo].[cod_basecode] ([ID], [Number], [Name], [Name_Png], [Type], [State], [IsMain], [IsBeforehand], [IsInputValue], [PrintPage]) VALUES (N'1495', N'13', N'其它', N'', N'1482', N'0', N'0', N'1', N'0', null)
GO
GO

-- ----------------------------
-- Table structure for file_base
-- ----------------------------
DROP TABLE [dbo].[file_base]
GO
CREATE TABLE [dbo].[file_base] (
[fileno] varchar(36) NOT NULL ,
[name] varchar(50) NOT NULL ,
[builddate] datetime NULL ,
[buildpersion] varchar(30) NULL ,
[manageorgid] int NULL ,
[lastmodifydate] datetime NULL ,
[modifyperson] varchar(30) NULL ,
[modifyorg] int NULL ,
[inputdate] datetime NULL ,
[address] varchar(100) NULL ,
[residenceaddress] varchar(100) NULL ,
[tel] varchar(50) NULL ,
[township] varchar(100) NULL ,
[village] varchar(100) NULL ,
[buildunit] varchar(100) NULL ,
[buildperson] varchar(30) NULL ,
[doctor] varchar(10) NULL ,
[districtnumber] char(20) NULL ,
[name_png] varchar(50) NULL ,
[barcode] varchar(20) NULL ,
[isovercount] smallint NULL DEFAULT ((0)) ,
[ismodifyornew] smallint NULL DEFAULT ((0)) ,
[paperfileno] varchar(20) NULL ,
[status] int NOT NULL DEFAULT ((0)) ,
[nation] varchar(50) NULL ,
[filenosub] varchar(20) NOT NULL ,
[sex] varchar(10) NOT NULL ,
[birthday] datetime NULL ,
[idnumber] varchar(30) NULL ,
[workunit] varchar(50) NULL ,
[linkman] varchar(20) NULL ,
[linkmantel] varchar(30) NULL ,
[residetype] varchar(10) NULL ,
[folk] varchar(10) NULL ,
[folkother] varchar(30) NULL ,
[bloodtypeabo] varchar(10) NULL ,
[bloodtyperh] varchar(10) NULL ,
[education] varchar(30) NULL ,
[occupation] varchar(50) NULL ,
[maritalstatus] varchar(30) NULL ,
[paymentmodeother] varchar(50) NULL ,
[allergiesother] varchar(50) NULL ,
[fhistoryother] varchar(50) NULL ,
[mhistoryother] varchar(50) NULL ,
[bhistoryother] varchar(50) NULL ,
[fmhistoryother] varchar(50) NULL ,
[genetichistory] varchar(20) NULL ,
[genetichistoryother] varchar(50) NULL ,
[disabilitystatusother] varchar(50) NULL ,
[farmstatus] varchar(50) NULL ,
[homeid] varchar(32) NULL ,
[kitchen] varchar(20) NULL ,
[bunkers] varchar(20) NULL ,
[drinkingwater] varchar(50) NULL ,
[toilet] varchar(50) NULL ,
[poultry] varchar(20) NULL ,
[townstatus] varchar(50) NULL ,
[bornstatus] varchar(30) NULL 
)


GO

-- ----------------------------
-- Records of file_base
-- ----------------------------

-- ----------------------------
-- Table structure for menu_category
-- ----------------------------
DROP TABLE [dbo].[menu_category]
GO
CREATE TABLE [dbo].[menu_category] (
[id] varchar(32) NOT NULL ,
[name] varchar(100) NOT NULL ,
[ordinal] int NOT NULL ,
[img] varchar(50) NULL ,
[parentid] varchar(36) NULL ,
[level] int NULL ,
[backgroundimg] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of menu_category
-- ----------------------------
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881473ac0f6ab013ac168edaf0002', N'出生医学证明服务管理', N'5', N'folder_wrench.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881473ac0f6ab013ac16a50e40003', N'慢性病管理', N'7', N'folder_wrench.png', N'', N'1', N'fun_mxb_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881473ac0f6ab013ac16a8e020004', N'重性精神疾病管理', N'8', N'folder_wrench.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881473ac0f6ab013ac16b561b0005', N'短信服务管理', N'9', N'folder_wrench.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881473ac0f6ab013ac17466d60006', N'重性精神疾病管理', N'1', N'21.png', N'402881473ac0f6ab013ac16a8e020004', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881473ac0f6ab013ac1b109a00008', N'短信业务', N'1', N'20.png', N'402881473ac0f6ab013ac16b561b0005', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881823712ffa1013713066d010001', N'母婴阻断项目统计', N'54', null, N'402881a32a9e622d012a9e7427cf0003', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881863626433001362646ed690001', N'业务工作汇总统计', N'1', N'4.png', N'402881e43a7ec325013a7ec548340005', N'2', N'fun_statistic_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'40288186362643300136264785440002', N'个人记录查询', N'2', N'1.png', N'402881e43a7ec325013a7ec548340005', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881a32a9e622d012a9e702d8f0001', N'汇总查询', N'2', N'5.png', N'402881e43a7ec325013a7ec548340005', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881a32a9e622d012a9e7189d30002', N'儿保业务工作', N'1', N'14.png', N'402881e43a7ec325013a7ec4c9f80003', N'2', N'fun_child_business_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881a32a9e622d012a9e7427cf0003', N'妇保业务工作', N'1', N'18.png', N'402881e43a7ec325013a7ec490190002', N'2', N'fun_child_business_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881a32a9e622d012a9e7603260005', N'老年人健康服务管理', N'5', N'old_man_manage', null, N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881a32a9e622d012a9e77e5b10007', N'预防接种服务管理', N'1', N'12.png', N'402881e43a7ec325013a7ec511180004', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881a32aa70594012aa706c4830001', N'基础数据管理', N'0', null, null, N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43418c0c7013418d6c6830001', N'出生医学证明', N'3', N'3.png', N'402881473ac0f6ab013ac168edaf0002', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a589720013a5898132e0001', N'系统管理', N'1', N'system_setup01_16_16.png', N'', N'1', N'fun_mod_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec417a40001', N'公卫服务管理', N'2', N'health_file_manage_16_16.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec490190002', N'妇保服务管理', N'3', N'pregnant_woman_16_16.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec4c9f80003', N'儿保服务管理', N'4', N'detail_health_file.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec511180004', N'疾病控制管理', N'6', N'diabetes_manage_16_16.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec548340005', N'综合统计查询', N'99', N'statistic_report_16_16.png', N'', N'1', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec8bbe90006', N'健康教育及体检', N'2', N'19.png', N'402881e43a7ec325013a7ec417a40001', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ec96f610007', N'诊疗记录', N'3', N'9.png', N'402881e43a7ec325013a7ec417a40001', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ecaab610008', N'转档管理', N'3', N'16.png', N'402881e43a7ec325013a7ec417a40001', N'2', N'fun_transfer_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ecd48d40009', N'妇保管理工作', N'2', N'13.png', N'402881e43a7ec325013a7ec490190002', N'2', N'fun_female_manage_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ecf8d98000a', N'儿保管理工作', N'2', N'6.png', N'402881e43a7ec325013a7ec4c9f80003', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ed15824000b', N'慢性病管理', N'2', N'10.png', N'402881473ac0f6ab013ac16a50e40003', N'2', N'fun_mxb_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'402881e43a7ec325013a7ed20a3d000c', N'传染病管理', N'3', N'11.png', N'402881e43a7ec325013a7ec511180004', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'c_sys_admin', N'系统管理', N'-1', N'7.png', N'402881e43a589720013a5898132e0001', N'2', N'fun_mod_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'ff8081812a3b6573012a3b668c430001', N'居民健康档案管理', N'1', N'17.png', N'402881e43a7ec325013a7ec417a40001', N'2', N'fun_female_manage_bg.png')
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'marrycheck', N'婚前检查', N'3', N'13.png', N'婚前检查', N'2', null)
GO
GO
INSERT INTO [dbo].[menu_category] ([id], [name], [ordinal], [img], [parentid], [level], [backgroundimg]) VALUES (N'婚前检查', N'婚前检查', N'3', N'pregnant_woman_16_16.png', N'', N'1', null)
GO
GO

-- ----------------------------
-- Table structure for menu_module
-- ----------------------------
DROP TABLE [dbo].[menu_module]
GO
CREATE TABLE [dbo].[menu_module] (
[id] varchar(32) NOT NULL ,
[name] varchar(100) NOT NULL ,
[category_id] varchar(32) NOT NULL ,
[url] varchar(100) NOT NULL ,
[ordinal] int NOT NULL ,
[IsNavigate] bit NOT NULL DEFAULT ((0)) ,
[InputPage] nvarchar(40) NULL ,
[Type] int NULL DEFAULT ((-1)) ,
[img] varchar(50) NULL ,
[css] varchar(255) NULL ,
[class] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of menu_module
-- ----------------------------
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a80a72c013a80e889840004', N'孕产妇档案查询', N'402881e43a7ec325013a7ecd48d40009', N'/js/app/healthfile_already_build.js', N'1', N'0', null, null, N'female_manage_01.gif', N'left:60px;top:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a80a72c013a80e8efd20005', N'孕产妇档案', N'402881a32a9e622d012a9e7427cf0003', N'/js/app/woman_birth_build.js', N'1', N'0', null, N'-1', N'female_business_01.gif', N'left:335px;top:60px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a80a72c013a80e9b0880006', N'终止妊娠', N'402881e43a7ec325013a7ecd48d40009', N'/js/app/healthfile_finish_gestation.js', N'4', N'0', null, null, N'female_manage_04.gif', N'left:200px;top:330px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a80a72c013a80ea28300007', N'特殊情况记录', N'402881e43a7ec325013a7ecd48d40009', N'/js/app/healthfile_pregnancy_record.js', N'5', N'0', null, null, N'female_manage_05.gif', N'left:500px;top:330px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a80a72c013a80f03c060009', N'高危儿童档案查询', N'402881a32a9e622d012a9e702d8f0001', N'/js/app/childHighRisk.js', N'2', N'0', null, N'-1', N'complex_02.gif', N'left:200px;top:20px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a80a72c013a80f35304000b', N'儿童档案查询', N'402881e43a7ec325013a7ecf8d98000a', N'/js/app/childfile.js', N'1', N'0', null, N'-1', N'child_manage_01.gif', N'left:20px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a827e22013a82814dc70001', N'2型糖尿病患者档案', N'ff8081812a3b6573012a3b668c430001', N'/js/app/t2dm_file.js', N'5', N'0', null, null, N'mxb_02.gif', N'left:340px;top:350px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a827e22013a8281c0650002', N'高血压患者档案', N'ff8081812a3b6573012a3b668c430001', N'/js/app/hyp_file.js', N'6', N'0', null, null, N'mxb_01.gif', N'left:70px;top:310px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473a827e22013a8285a8680003', N'重性精神病患者档案', N'ff8081812a3b6573012a3b668c430001', N'/js/app/furious_file.js', N'7', N'0', null, null, N'mxb_03.gif', N'left:630px;top:310px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881473ac0f6ab013ac1b2c9310009', N'短信发布', N'402881473ac0f6ab013ac1b109a00008', N'/js/app/sms/MsgSender.js', N'1', N'0', null, N'-1', N'20.png', N'left:20px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881823655ac97013655b0530e0001', N'出生医学证明查询', N'402881a32a9e622d012a9e702d8f0001', N'/js/app/birthCertifiQuery.js', N'1', N'0', null, null, N'complex_01.gif', N'left:20px;top:20px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881823655ac97013655b0530e0011', N'出生医学证明查询', N'402881e43418c0c7013418d6c6830001', N'/js/app/birthCertifiQuery.js', N'2', N'0', null, null, N'child_birth_02.gif', N'left:190px;top:20px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'40288182366e47bd01366e49bd1e0001', N'高危孕产妇信息', N'402881a32a9e622d012a9e702d8f0001', N'/js/app/womanHighRisk.js', N'4', N'0', null, null, N'complex_03.gif', N'left:560px;top:20px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'40288182366e47bd01366e49bd1e0011', N'高危孕产妇信息', N'402881e43a7ec325013a7ecd48d40009', N'/js/app/womanHighRisk.js', N'2', N'0', null, null, N'female_manage_02.gif', N'left:330px;top:40px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881823712ffa1013713070e320002', N'HIV和梅毒', N'402881a32a9e622d012a9e702d8f0001', N'/js/app/hivAndSyphilisStatistic.js', N'3', N'0', null, null, N'complex_04.gif', N'left:380px;top:20px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881853102a260013102a53e160002', N'一户式查询', N'402881853102a260013102a45bd50001', N'/js/app/queryHome.js', N'1', N'0', null, N'-1', N'personInfo_01.gif', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'4028818635ced3b90135ced576f20001', N'孕产妇档案管理', N'ff8081812a3b6573012a3b668c430001', N'/js/app/healthfile_already_build.js', N'3', N'0', null, null, N'health_03.gif', N'left:340px;top:40px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'4028818635ced3b90135ced5cd3f0002', N'分娩记录', N'402881e43a7ec325013a7ecd48d40009', N'/js/app/childBirthRecord.js', N'3', N'0', null, null, N'female_manage_03.gif', N'left:630px;top:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'4028818636264330013626488ee40003', N'个人健康记录索引', N'40288186362643300136264785440002', N'/js/app/BusinessDataForPerson.js', N'1', N'0', null, null, N'personInfo_01.gif', N'left:20px;top:20px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'4028818636264330013626498ab90004', N'医疗机构汇总统计', N'402881863626433001362646ed690001', N'/js/app/summaryOrg.js', N'1', N'0', null, null, N'statistic_02.gif', N'left:330px;top:60px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881863626433001362649ce2b0005', N'操作人员汇总统计', N'402881863626433001362646ed690001', N'/js/app/summaryOptPerson.js', N'2', N'0', null, null, N'statistic_01.gif', N'left:120px;top:60px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'40288186362643300136264a1dd10006', N'按年汇总统计', N'402881863626433001362646ed690001', N'/js/app/summaryByYear.js', N'3', N'0', null, null, N'statistic_04.gif', N'left:120px;top:260px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'40288186362643300136264a6c010007', N'按月汇总统计', N'402881863626433001362646ed690001', N'/js/app/summaryByMonth.js', N'4', N'0', null, null, N'statistic_05.gif', N'left:330px;top:260px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'40288186362643300136264ab6580008', N'按日汇总统计', N'402881863626433001362646ed690001', N'/js/app/summaryByDay.js', N'5', N'0', null, null, N'statistic_06.gif', N'left:530px;top:260px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'40288186362643300136264afc0c0009', N'高级查询汇总统计', N'402881863626433001362646ed690001', N'/js/app/summaryStatistic01.js', N'99', N'0', null, null, N'statistic_03.gif', N'left:530px;top:60px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881863a879508013a87a65a81000', N'儿童建册', N'402881a32a9e622d012a9e7189d30002', N'/js/app/child_healthfile_enble.js', N'0', N'0', null, N'-1', N'child_business_01.gif', N'left:335px;top:60px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9ea53c91000d', N'健康体检记录', N'402881e43a7ec325013a7ec8bbe90006', N'/js/app/medicalexam.js', N'2', N'0', N'/medicalExam.html', N'-1', N'exam_01.gif', N'left:20px;top:20px', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eaacb4c000e', N'接诊记录', N'402881e43a7ec325013a7ec96f610007', N'/js/app/reception.js', N'1', N'0', null, N'-1', N'clinics_01.gif', N'left:20px;top:20px', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eab8749000f', N'会诊记录', N'402881e43a7ec325013a7ec96f610007', N'/js/app/consultation.js', N'2', N'0', null, N'-1', N'clinics_02.gif', N'left:170px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eac7c760010', N'双向转诊记录', N'402881e43a7ec325013a7ec96f610007', N'/js/app/cureswitch.js', N'3', N'0', null, N'-1', N'clinics_03.gif', N'left:320px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9ead1a9b0011', N'双向转诊回转记录', N'402881e43a7ec325013a7ec96f610007', N'/js/app/cureback.js', N'4', N'0', null, N'-1', N'clinics_04.gif', N'left:470px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eaed1050012', N'健康教育活动记录', N'402881e43a7ec325013a7ec8bbe90006', N'/js/app/healtheducat.js', N'0', N'0', null, N'-1', N'exam_03.gif', N'left:320px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eb046400013', N'新生儿家庭访视记录', N'402881a32a9e622d012a9e7189d30002', N'/js/app/babyvisit.js', N'1', N'0', N'/babyvisit.html', N'0', N'child_business_02.gif', N'left:40px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eb1ab5e0014', N'1岁以内儿童体检记录', N'402881a32a9e622d012a9e7189d30002', N'/js/app/childexam1.js', N'2', N'0', N'/childexam1.html', N'0', N'child_business_03.gif', N'left:230px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9eb2be930015', N'1至2岁儿童体检记录', N'402881a32a9e622d012a9e7189d30002', N'/js/app/childexam2.js', N'3', N'0', N'/childexam2.html', N'0', N'child_business_04.gif', N'left:415px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32a9e622d012a9ecdae240017', N'儿童健康档案管理', N'ff8081812a3b6573012a3b668c430001', N'/js/app/childfile.js', N'2', N'0', null, null, N'health_02.gif', N'left:70px;top:90px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa19c361d0001', N'第一次产前随访记录', N'402881a32a9e622d012a9e7427cf0003', N'/js/app/firstvisit.js', N'0', N'0', N'/firstvisit.html', N'1', N'female_business_02.gif', N'left:40px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa19d3be40002', N'第2至5次产前随访记录', N'402881a32a9e622d012a9e7427cf0003', N'/js/app/VisitBeforeBorn.js', N'1', N'0', N'/VisitBeforeBorn.html', N'1', N'female_business_03.gif', N'left:230px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa19df0400003', N'产后访视记录', N'402881a32a9e622d012a9e7427cf0003', N'/js/app/VisitAfterBorn.js', N'2', N'0', N'/visitAfterBorn.html', N'1', N'female_business_04.gif', N'left:415px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa19f486e0004', N'产后42天健康检查记录', N'402881a32a9e622d012a9e7427cf0003', N'/js/app/VisitAfterBorn42.js', N'3', N'0', N'/visitAfterBorn42.html', N'1', N'female_business_05.gif', N'left:610px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1a0dfd60006', N'预防接种卡', N'402881a32a9e622d012a9e77e5b10007', N'/js/app/vaccineImmune.js', N'1', N'0', null, null, N'child_ill_01.gif', N'left:20px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1c822ed0007', N'传染病报告卡', N'402881e43a7ec325013a7ed20a3d000c', N'/js/app/InfectionReport.js', N'0', N'0', null, N'-1', N'crb_01.gif', N'left:20px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1c9b2660008', N'高血压患者档案', N'402881e43a7ec325013a7ed15824000b', N'/js/app/hyp_file.js', N'1', N'0', null, N'-1', N'mxb_01.gif', N'left:40px;top:30px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1ce60950009', N'高血压患者随访', N'402881e43a7ec325013a7ed15824000b', N'/js/app/hyp_visit.js', N'0', N'0', N'/hyp_visit.html', N'-1', N'mxb_04.gif', N'left:40px;top:230px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1d94b81000a', N'2型糖尿病患者档案', N'402881e43a7ec325013a7ed15824000b', N'/js/app/t2dm_file.js', N'2', N'0', null, N'-1', N'mxb_02.gif', N'left:210px;top:30px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1db4712000b', N'2型糖尿病患者随访', N'402881e43a7ec325013a7ed15824000b', N'/js/app/t2dm_visit.js', N'1', N'0', N'/t2dm_visit.html', N'-1', N'mxb_05.gif', N'left:210px;top:230px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1e2a3d6000c', N'重性精神疾病患者档案', N'402881473ac0f6ab013ac17466d60006', N'/js/app/furious_file.js', N'3', N'0', null, N'-1', N'mxb_03.gif', N'left:20px;top:20px;width:190px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1e46d6b000d', N'重性精神疾病个人信息补充', N'402881473ac0f6ab013ac17466d60006', N'/js/app/furious_info.js', N'7', N'0', null, N'-1', N'mxb_07.gif', N'left:20px;top:170px;width:190px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa197cd012aa1e52a23000e', N'重性精神疾病患者随访', N'402881473ac0f6ab013ac17466d60006', N'/js/app/furious_visit.js', N'2', N'0', N'/furious_visit.html', N'-1', N'mxb_06.gif', N'left:240px;top:20px;width:190px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881a32aa9289e012aa93c71bf0001', N'行政区域维护', N'c_sys_admin', N'/js/app/district.js', N'30', N'0', null, N'-1', N'2.gif', N'left:235px;top:335px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e3322d2ee901322d3131a10002', N'老年人档案', N'ff8081812a3b6573012a3b668c430001', N'/js/app/oldMan_file.js', N'4', N'0', null, null, N'health_04.gif', N'left:630px;top:80px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e3322d2ee901322d42ff300003', N'老年人健康体检', N'402881e43a7ec325013a7ec8bbe90006', N'/js/app/oldMan_exam.js', N'2', N'0', null, N'-1', N'exam_02.gif', N'left:170px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e3323326ea0132337c1d810001', N'3~6岁儿童体检记录', N'402881a32a9e622d012a9e7189d30002', N'/js/app/childexam36.js', N'6', N'0', N'/childexam3_6.html', N'0', N'child_business_05.gif', N'left:610px;top:265px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e433fc71ae0133fc74c0480003', N'乡镇汇总统计', N'ff8081812af0b66f012af0b74b160001', N'/statisticByTownship.html', N'30', N'0', null, N'-1', N'statistic_twonship publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e433fc8fba0133fc9301660006', N'高危汇总统计', N'ff8081812af0b66f012af0b74b160001', N'/statisticByHighRisk.html', N'31', N'0', null, N'-1', N'statistic_highrisk publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e43418c0c7013418d74c1e0002', N'出生医学证明初始化', N'c_sys_admin', N'/birthCertificate.html', N'1', N'0', null, N'-1', N'45.gif', N'left:423px;top:335px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e43418c0c7013418d7a2e80003', N'出生医学证明分配', N'c_sys_admin', N'/distributeCertificate.html', N'2', N'0', null, N'-1', N'60.gif', N'left:615px;top:335px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e43418c0c7013418d7fb490004', N'出生医学证明使用', N'402881e43418c0c7013418d6c6830001', N'/js/app/useCertificate.js', N'3', N'0', null, null, N'child_birth_01.gif', N'left:20px;top:20px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'402881e4348ddad601348ddc65f30001', N'条形码初始化', N'402881e43418c0c7013418d6c6830001', N'/barCodeInit.html', N'4', N'0', null, N'-1', N'barcode_init publicSettingMod', N'left:360px;top:20px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'5c250f83333a85f001333a895c640001', N'各卫生院汇总统计', N'ff8081812af0b66f012af0b74b160001', N'/statisticByHospital.html', N'11', N'0', null, N'-1', N'statistic_hospital publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'5c250f83333fae8b01333fb44e090001', N'日统计报表', N'ff8081812af0b66f012af0b74b160001', N'/statisticByDay.html', N'20', N'0', null, N'-1', N'statistic_day_report publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'5c250f83333fae8b01333fb4baad0002', N'月报表统计（表一）', N'ff8081812af0b66f012af0b74b160001', N'/statisticByMonth01.html', N'13', N'0', null, N'-1', N'statistic_month_report_01 publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'5c250f83333fae8b01333fb515310003', N'月报表统计（表二）', N'ff8081812af0b66f012af0b74b160001', N'/statisticByMonth02.html', N'14', N'0', null, N'-1', N'statistic_month_report_02 publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'5c250f83333fae8b01333fb570de0004', N'月报表统计（表三）', N'ff8081812af0b66f012af0b74b160001', N'/statisticByMonth03.html', N'15', N'0', null, N'-1', N'statistic_month_report_03 publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'8a8116823895ba8c013895c17bb80009', N'高危儿童档案', N'402881e43a7ec325013a7ecf8d98000a', N'/js/app/childHighRisk.js', N'2', N'0', null, null, N'child_manage_02.gif', N'left:170px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'8a81168239cf9ff50139cfa21c9b0001', N'档案提交申请查询', N'402881e43a7ec325013a7ecaab610008', N'/js/app/healthfileTransferQry.js', N'1', N'0', null, null, N'transfer_02.gif', N'left:150px;top:300px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'8a81168239cf9ff50139cfa2913f0002', N'档案转移审核及查询', N'402881e43a7ec325013a7ecaab610008', N'/js/app/healthfileTransfer.js', N'2', N'0', null, null, N'transfer_01.gif', N'left:325px;top:30px;width:160px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'8a81168239cf9ff50139cfa2f1be0003', N'档案注销查询', N'402881e43a7ec325013a7ecaab610008', N'/js/app/healthfileLoginoff.js', N'3', N'0', null, null, N'transfer_03.gif', N'left:500px;top:300px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'cache', N'缓存管理', N'c_sys_admin', N'/js/app/cache/cache.js', N'100', N'0', null, N'-1', N'cache.png', N'left:1025px;top:335px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'ff8081812a6a002b012a6a00e2cb0002', N'居民健康档案', N'ff8081812a3b6573012a3b668c430001', N'/js/app/resident.js', N'0', N'0', null, N'-1', N'health_01.gif', N'left:340px;top:190px;width:140px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'ff8081812a83d873012a83dd758e0001', N'组织机构维护', N'c_sys_admin', N'/js/app/org.js', N'100', N'0', null, N'-1', N'1.gif', N'left:45px;top:335px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'ff8081812aef9554012af09b6b130001', N'疫苗免疫程序', N'402881a32a9e622d012a9e77e5b10007', N'/info.html', N'2', N'0', null, N'-1', N'child_ill_02.gif', N'left:170px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'ff8081812b2de099012b2de3445d0001', N'乡镇汇总按建档人统计', N'ff8081812af0b66f012af0b74b160001', N'/js/app/report03.js', N'30', N'0', null, N'-1', N'statistic_man publicSettingMod', null, null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'importmodifyfile', N'导入修改档案', N'402881e43a7ec325013a7ec8bbe90006', N'easyui/templates/query/query.html?exportid=11', N'5', N'0', null, N'-1', N'exam_05.gif', N'left:620px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'm_mod', N'模块管理', N'c_sys_admin', N'/js/app/mod.js', N'1', N'0', null, N'-1', N'4.gif', N'left:135px;top:40px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'm_mod_cat_mgr', N'模块目录管理', N'c_sys_admin', N'/js/app/modCat.js', N'2', N'0', null, N'-1', N'8.gif', N'left:535px;top:40px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'm_role', N'角色管理', N'c_sys_admin', N'/js/app/role.js', N'3', N'0', null, N'-1', N'42.gif', N'left:135px;top:180px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'm_user_mgr', N'用户管理', N'c_sys_admin', N'/js/app/userMgr.js', N'4', N'0', null, N'-1', N'43.gif', N'left:535px;top:180px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'marry_check', N'婚前检查', N'marrycheck', N'easyui/templates/marry_check/marry_check.html', N'0', N'0', null, N'-1', N'5.png', N'left:20px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'repeatfile', N'重复档案管理', N'402881e43a7ec325013a7ec8bbe90006', N'/js/app/repeatFiles.js', N'0', N'0', null, N'-1', N'exam_04.gif', N'left:470px;top:20px;', null)
GO
GO
INSERT INTO [dbo].[menu_module] ([id], [name], [category_id], [url], [ordinal], [IsNavigate], [InputPage], [Type], [img], [css], [class]) VALUES (N'Score', N'考试打分', N'c_sys_admin', N'/js/app/score/score.js', N'100', N'0', null, N'-1', N'score.png', N'left:825px;top:335px;', null)
GO
GO

-- ----------------------------
-- Indexes structure for table auth_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_role
-- ----------------------------
ALTER TABLE [dbo].[auth_role] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table auth_role_module
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_role_module
-- ----------------------------
ALTER TABLE [dbo].[auth_role_module] ADD PRIMARY KEY ([module_id], [role_id])
GO

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE [dbo].[auth_user] ADD PRIMARY KEY ([user_id])
GO

-- ----------------------------
-- Indexes structure for table cod_basecode
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cod_basecode
-- ----------------------------
ALTER TABLE [dbo].[cod_basecode] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table file_base
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table file_base
-- ----------------------------
ALTER TABLE [dbo].[file_base] ADD PRIMARY KEY ([fileno])
GO

-- ----------------------------
-- Indexes structure for table menu_category
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table menu_category
-- ----------------------------
ALTER TABLE [dbo].[menu_category] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table menu_module
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table menu_module
-- ----------------------------
ALTER TABLE [dbo].[menu_module] ADD PRIMARY KEY ([id])
GO
