DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-05-04 16:42:42.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-05-30 17:35:13.0');
DROP TABLE IF EXISTS `student_users`;
CREATE TABLE `student_users`(student_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '学生用户ID',
`student_name` varchar(64) comment '学生姓名',
`student_id` varchar(64) NOT NULL UNIQUE comment '学生学号',
`student_gender` varchar(64) comment '学生性别',
`class_name` varchar(64) comment '班级名称',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (student_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学生用户';

DROP TABLE IF EXISTS `teacher_users`;
CREATE TABLE `teacher_users`(teacher_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '教师用户ID',
`teachers_name` varchar(64) comment '教师姓名',
`teacher_id` varchar(64) NOT NULL UNIQUE comment '教师工号',
`gender_of_teacher` varchar(64) comment '教师性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (teacher_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '教师用户';

DROP TABLE IF EXISTS `teaching_evaluation_methods`;
CREATE TABLE `teaching_evaluation_methods`(teaching_evaluation_methods_id int(11) NOT NULL AUTO_INCREMENT COMMENT '评教办法ID',
`course_type` varchar(64) comment '课程类型',
`evaluation_sample_table` varchar(255) comment '评价样表',
`evaluation_method` longtext comment '评价办法',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (teaching_evaluation_methods_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '评教办法';
insert into `teaching_evaluation_methods` values (1,'课程类型1','','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (2,'课程类型2','','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (3,'课程类型3','','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (4,'课程类型4','','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (5,'课程类型5','','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (6,'课程类型6','','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (7,'课程类型7','','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teaching_evaluation_methods` values (8,'课程类型8','','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');

DROP TABLE IF EXISTS `course_information`;
CREATE TABLE `course_information`(course_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '课程信息ID',
`student_account` int(11) DEFAULT 0 comment '学生账号',
`student_name` varchar(64) comment '学生姓名',
`student_id` varchar(64) comment '学生学号',
`teacher_account` int(11) DEFAULT 0 comment '教师账号',
`teachers_name` varchar(64) comment '教师姓名',
`teacher_id` varchar(64) comment '教师工号',
`semester_name` varchar(64) comment '学期名称',
`class_name` varchar(64) comment '班级名称',
`course_name` varchar(64) comment '课程名称',
`class_time` text comment '上课时间',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (course_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '课程信息';
insert into `course_information` values (1,0,'学生姓名1','学生学号1',0,'教师姓名1','教师工号1','学期名称1','班级名称1','课程名称1','上课时间1',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (2,0,'学生姓名2','学生学号2',0,'教师姓名2','教师工号2','学期名称2','班级名称2','课程名称2','上课时间2',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (3,0,'学生姓名3','学生学号3',0,'教师姓名3','教师工号3','学期名称3','班级名称3','课程名称3','上课时间3',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (4,0,'学生姓名4','学生学号4',0,'教师姓名4','教师工号4','学期名称4','班级名称4','课程名称4','上课时间4',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (5,0,'学生姓名5','学生学号5',0,'教师姓名5','教师工号5','学期名称5','班级名称5','课程名称5','上课时间5',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (6,0,'学生姓名6','学生学号6',0,'教师姓名6','教师工号6','学期名称6','班级名称6','课程名称6','上课时间6',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (7,0,'学生姓名7','学生学号7',0,'教师姓名7','教师工号7','学期名称7','班级名称7','课程名称7','上课时间7',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_information` values (8,0,'学生姓名8','学生学号8',0,'教师姓名8','教师工号8','学期名称8','班级名称8','课程名称8','上课时间8',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');

DROP TABLE IF EXISTS `course_evaluation`;
CREATE TABLE `course_evaluation`(course_evaluation_id int(11) NOT NULL AUTO_INCREMENT COMMENT '课程评价ID',
`student_account` int(11) DEFAULT 0 comment '学生账号',
`student_name` varchar(64) comment '学生姓名',
`student_id` varchar(64) comment '学生学号',
`teacher_account` int(11) DEFAULT 0 comment '教师账号',
`teachers_name` varchar(64) comment '教师姓名',
`teacher_id` varchar(64) comment '教师工号',
`semester_name` varchar(64) comment '学期名称',
`course_name` varchar(64) comment '课程名称',
`class_name` varchar(64) comment '班级名称',
`evaluation_time` datetime comment '评价时间',
`overall_evaluation` varchar(64) comment '整体评价',
`evaluate_courses` text comment '评价课程',
`evaluate_teachers` text comment '评价教师',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (course_evaluation_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '课程评价';
insert into `course_evaluation` values (1,0,'学生姓名1','学生学号1',0,'教师姓名1','教师工号1','学期名称1','课程名称1','班级名称1','2023-05-09 11:13:55','整体评价1','评价课程1','评价教师1',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (2,0,'学生姓名2','学生学号2',0,'教师姓名2','教师工号2','学期名称2','课程名称2','班级名称2','2023-05-09 11:13:55','整体评价2','评价课程2','评价教师2',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (3,0,'学生姓名3','学生学号3',0,'教师姓名3','教师工号3','学期名称3','课程名称3','班级名称3','2023-05-09 11:13:55','整体评价3','评价课程3','评价教师3',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (4,0,'学生姓名4','学生学号4',0,'教师姓名4','教师工号4','学期名称4','课程名称4','班级名称4','2023-05-09 11:13:55','整体评价4','评价课程4','评价教师4',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (5,0,'学生姓名5','学生学号5',0,'教师姓名5','教师工号5','学期名称5','课程名称5','班级名称5','2023-05-09 11:13:55','整体评价5','评价课程5','评价教师5',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (6,0,'学生姓名6','学生学号6',0,'教师姓名6','教师工号6','学期名称6','课程名称6','班级名称6','2023-05-09 11:13:55','整体评价6','评价课程6','评价教师6',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (7,0,'学生姓名7','学生学号7',0,'教师姓名7','教师工号7','学期名称7','课程名称7','班级名称7','2023-05-09 11:13:55','整体评价7','评价课程7','评价教师7',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `course_evaluation` values (8,0,'学生姓名8','学生学号8',0,'教师姓名8','教师工号8','学期名称8','课程名称8','班级名称8','2023-05-09 11:13:55','整体评价8','评价课程8','评价教师8',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');

DROP TABLE IF EXISTS `teacher_feedback`;
CREATE TABLE `teacher_feedback`(teacher_feedback_id int(11) NOT NULL AUTO_INCREMENT COMMENT '教师反馈ID',
`teacher_account` int(11) DEFAULT 0 comment '教师账号',
`teachers_name` varchar(64) comment '教师姓名',
`teacher_id` varchar(64) comment '教师工号',
`student_account` int(11) DEFAULT 0 comment '学生账号',
`student_name` varchar(64) comment '学生姓名',
`student_id` varchar(64) comment '学生学号',
`semester_name` varchar(64) comment '学期名称',
`course_name` varchar(64) comment '课程名称',
`class_name` varchar(64) comment '班级名称',
`overall_evaluation` varchar(64) comment '整体评价',
`evaluate_courses` text comment '评价课程',
`evaluate_teachers` text comment '评价教师',
`teacher_response` text comment '教师回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (teacher_feedback_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '教师反馈';
insert into `teacher_feedback` values (1,0,'教师姓名1','教师工号1',0,'学生姓名1','学生学号1','学期名称1','课程名称1','班级名称1','整体评价1','评价课程1','评价教师1','教师回复1',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (2,0,'教师姓名2','教师工号2',0,'学生姓名2','学生学号2','学期名称2','课程名称2','班级名称2','整体评价2','评价课程2','评价教师2','教师回复2',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (3,0,'教师姓名3','教师工号3',0,'学生姓名3','学生学号3','学期名称3','课程名称3','班级名称3','整体评价3','评价课程3','评价教师3','教师回复3',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (4,0,'教师姓名4','教师工号4',0,'学生姓名4','学生学号4','学期名称4','课程名称4','班级名称4','整体评价4','评价课程4','评价教师4','教师回复4',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (5,0,'教师姓名5','教师工号5',0,'学生姓名5','学生学号5','学期名称5','课程名称5','班级名称5','整体评价5','评价课程5','评价教师5','教师回复5',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (6,0,'教师姓名6','教师工号6',0,'学生姓名6','学生学号6','学期名称6','课程名称6','班级名称6','整体评价6','评价课程6','评价教师6','教师回复6',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (7,0,'教师姓名7','教师工号7',0,'学生姓名7','学生学号7','学期名称7','课程名称7','班级名称7','整体评价7','评价课程7','评价教师7','教师回复7',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `teacher_feedback` values (8,0,'教师姓名8','教师工号8',0,'学生姓名8','学生学号8','学期名称8','课程名称8','班级名称8','整体评价8','评价课程8','评价教师8','教师回复8',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');

DROP TABLE IF EXISTS `semester_management`;
CREATE TABLE `semester_management`(semester_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '学期管理ID',
`semester_name` varchar(64) comment '学期名称',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (semester_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学期管理';
insert into `semester_management` values (1,'学期名称1',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (2,'学期名称2',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (3,'学期名称3',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (4,'学期名称4',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (5,'学期名称5',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (6,'学期名称6',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (7,'学期名称7',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `semester_management` values (8,'学期名称8',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');

DROP TABLE IF EXISTS `class_management`;
CREATE TABLE `class_management`(class_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '班级管理ID',
`class_name` varchar(64) comment '班级名称',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (class_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '班级管理';
insert into `class_management` values (1,'班级名称1',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (2,'班级名称2',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (3,'班级名称3',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (4,'班级名称4',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (5,'班级名称5',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (6,'班级名称6',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (7,'班级名称7',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');
insert into `class_management` values (8,'班级名称8',0,'2023-05-09 11:13:55','2023-05-09 11:13:55');

insert into `auth` values ('1','管理员','学生用户','student_users','学生用户','/student_users/table','','_blank','1','1','1','1','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('2','管理员','学生用户','student_users','学生用户详情','/student_users/view','','_blank','1','1','1','1','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('3','管理员','教师用户','teacher_users','教师用户','/teacher_users/table','','_blank','1','1','1','1','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('4','管理员','教师用户','teacher_users','教师用户详情','/teacher_users/view','','_blank','1','1','1','1','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('5','管理员','评教办法','teaching_evaluation_methods','评教办法','/teaching_evaluation_methods/table','','_blank','1','1','1','1','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('6','管理员','评教办法','teaching_evaluation_methods','评教办法详情','/teaching_evaluation_methods/view','','_blank','1','1','1','1','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('7','管理员','课程信息','course_information','课程信息','/course_information/table','','_blank','1','1','1','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('8','管理员','课程信息','course_information','课程信息详情','/course_information/view','','_blank','1','1','1','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('9','管理员','课程评价','course_evaluation','课程评教','/course_evaluation/table','','_blank','1','1','1','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{"figure":true}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('10','管理员','课程评价','course_evaluation','课程评教详情','/course_evaluation/view','','_blank','1','1','1','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('11','管理员','教师反馈','teacher_feedback','教师反馈','/teacher_feedback/table','','_blank','1','1','1','1','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('12','管理员','教师反馈','teacher_feedback','教师反馈详情','/teacher_feedback/view','','_blank','1','1','1','1','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('13','管理员','学期管理','semester_management','学期管理','/semester_management/table','','_blank','1','1','1','1','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('14','管理员','学期管理','semester_management','学期管理详情','/semester_management/view','','_blank','1','1','1','1','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('15','管理员','班级管理','class_management','班级管理','/class_management/table','','_blank','1','1','1','1','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('16','管理员','班级管理','class_management','班级管理详情','/class_management/view','','_blank','1','1','1','1','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('17','管理员','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('18','管理员','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('19','管理员','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('20','管理员','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('21','游客','学生用户','student_users','学生用户','/student_users/table','','_blank','0','0','0','0','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('22','游客','学生用户','student_users','学生用户详情','/student_users/view','','_blank','0','0','0','0','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('23','游客','教师用户','teacher_users','教师用户','/teacher_users/table','','_blank','0','0','0','0','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('24','游客','教师用户','teacher_users','教师用户详情','/teacher_users/view','','_blank','0','0','0','0','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('25','游客','评教办法','teaching_evaluation_methods','评教办法','/teaching_evaluation_methods/table','','_blank','0','0','0','0','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('26','游客','评教办法','teaching_evaluation_methods','评教办法详情','/teaching_evaluation_methods/view','','_blank','0','0','0','0','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('27','游客','课程信息','course_information','课程信息','/course_information/table','','_blank','0','0','0','0','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('28','游客','课程信息','course_information','课程信息详情','/course_information/view','','_blank','0','0','0','0','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('29','游客','课程评价','course_evaluation','课程评教','/course_evaluation/table','','_blank','0','0','0','0','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{"figure":false}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('30','游客','课程评价','course_evaluation','课程评教详情','/course_evaluation/view','','_blank','0','0','0','0','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('31','游客','教师反馈','teacher_feedback','教师反馈','/teacher_feedback/table','','_blank','0','0','0','0','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('32','游客','教师反馈','teacher_feedback','教师反馈详情','/teacher_feedback/view','','_blank','0','0','0','0','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('33','游客','学期管理','semester_management','学期管理','/semester_management/table','','_blank','0','0','0','0','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('34','游客','学期管理','semester_management','学期管理详情','/semester_management/view','','_blank','0','0','0','0','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('35','游客','班级管理','class_management','班级管理','/class_management/table','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('36','游客','班级管理','class_management','班级管理详情','/class_management/view','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('37','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('38','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('39','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('40','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('41','学生用户','学生用户','student_users','学生用户','/student_users/table','','_blank','0','0','0','0','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('42','学生用户','学生用户','student_users','学生用户详情','/student_users/view','','_blank','0','0','0','0','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('43','学生用户','教师用户','teacher_users','教师用户','/teacher_users/table','','_blank','0','0','0','0','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('44','学生用户','教师用户','teacher_users','教师用户详情','/teacher_users/view','','_blank','0','0','0','0','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('45','学生用户','评教办法','teaching_evaluation_methods','评教办法','/teaching_evaluation_methods/table','','_blank','0','0','0','1','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('46','学生用户','评教办法','teaching_evaluation_methods','评教办法详情','/teaching_evaluation_methods/view','','_blank','0','0','0','1','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('47','学生用户','课程信息','course_information','课程信息','/course_information/table','','_blank','0','0','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('48','学生用户','课程信息','course_information','课程信息详情','/course_information/view','','_blank','0','0','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('49','学生用户','课程评价','course_evaluation','课程评教','/course_evaluation/table','','_blank','1','1','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{"figure":false}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('50','学生用户','课程评价','course_evaluation','课程评教详情','/course_evaluation/view','','_blank','1','1','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('51','学生用户','教师反馈','teacher_feedback','教师反馈','/teacher_feedback/table','','_blank','0','0','0','1','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('52','学生用户','教师反馈','teacher_feedback','教师反馈详情','/teacher_feedback/view','','_blank','0','0','0','1','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('53','学生用户','学期管理','semester_management','学期管理','/semester_management/table','','_blank','0','0','0','0','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('54','学生用户','学期管理','semester_management','学期管理详情','/semester_management/view','','_blank','0','0','0','0','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('55','学生用户','班级管理','class_management','班级管理','/class_management/table','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('56','学生用户','班级管理','class_management','班级管理详情','/class_management/view','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('57','学生用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('58','学生用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('59','学生用户','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('60','学生用户','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('61','教师用户','学生用户','student_users','学生用户','/student_users/table','','_blank','0','0','0','0','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('62','教师用户','学生用户','student_users','学生用户详情','/student_users/view','','_blank','0','0','0','0','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name','student_name,student_id,student_gender,class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('63','教师用户','教师用户','teacher_users','教师用户','/teacher_users/table','','_blank','0','0','0','0','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('64','教师用户','教师用户','teacher_users','教师用户详情','/teacher_users/view','','_blank','0','0','0','0','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher','teachers_name,teacher_id,gender_of_teacher',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('65','教师用户','评教办法','teaching_evaluation_methods','评教办法','/teaching_evaluation_methods/table','','_blank','0','0','0','0','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('66','教师用户','评教办法','teaching_evaluation_methods','评教办法详情','/teaching_evaluation_methods/view','','_blank','0','0','0','0','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method','course_type,evaluation_sample_table,evaluation_method',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('67','教师用户','课程信息','course_information','课程信息','/course_information/table','','_blank','0','0','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('68','教师用户','课程信息','course_information','课程信息详情','/course_information/view','','_blank','0','0','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,class_name,course_name,class_time',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('69','教师用户','课程评价','course_evaluation','课程评教','/course_evaluation/table','','_blank','0','0','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{"figure":true}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('70','教师用户','课程评价','course_evaluation','课程评教详情','/course_evaluation/view','','_blank','0','0','0','1','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers','student_account,student_name,student_id,teacher_account,teachers_name,teacher_id,semester_name,course_name,class_name,evaluation_time,overall_evaluation,evaluate_courses,evaluate_teachers',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('71','教师用户','教师反馈','teacher_feedback','教师反馈','/teacher_feedback/table','','_blank','1','1','0','1','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('72','教师用户','教师反馈','teacher_feedback','教师反馈详情','/teacher_feedback/view','','_blank','1','1','0','1','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response','teacher_account,teachers_name,teacher_id,student_account,student_name,student_id,semester_name,course_name,class_name,overall_evaluation,evaluate_courses,evaluate_teachers,teacher_response',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('73','教师用户','学期管理','semester_management','学期管理','/semester_management/table','','_blank','0','0','0','0','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('74','教师用户','学期管理','semester_management','学期管理详情','/semester_management/view','','_blank','0','0','0','0','semester_name','semester_name','semester_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('75','教师用户','班级管理','class_management','班级管理','/class_management/table','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('76','教师用户','班级管理','class_management','班级管理详情','/class_management/view','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('77','教师用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('78','教师用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('79','教师用户','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `auth` values ('80','教师用户','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `user_group` values ('3','100','学生用户',null,'student_users','student_users_id','0','0','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
insert into `user_group` values ('4','100','教师用户',null,'teacher_users','teacher_users_id','0','0','2023-05-09 11:13:55.0','2023-05-09 11:13:55.0');
