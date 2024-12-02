use db_api;
-- 接口信息表
create table if not exists db_api.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '接口名称',
    `description` varchar(256) null comment '接口描述',
    `url` varchar(256) not null comment '接口地址',
    `request_params` text null comment '请求参数',
    `request_header` text null comment '请求头',
    `response_header` text null comment '响应头',
    `status` int default 0 not null comment '接口状态(0-关闭 1-开启 )',
    `method` varchar(256) not null comment '请求类型',
    `user_id` bigint not null comment '创建人',
    `create_time` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `update_time` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `is_deleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '接口信息表';

insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('阎钰轩', '郭驰', 'www.tamera-smith.co', '陶雨泽', '孔博文', 0, '赵鸿煊', 242);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('薛立果', '江志强', 'www.eliseo-schoen.name', '万立诚', '石煜祺', 0, '姚鹏飞', 67);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('林烨伟', '吕哲瀚', 'www.jefferey-crooks.name', '赵峻熙', '周昊焱', 0, '万思源', 97);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('高思聪', '钱金鑫', 'www.milton-franecki.info', '周擎宇', '张晋鹏', 0, '姜鹏飞', 32286946);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('卢明杰', '高嘉熙', 'www.ronnie-kuhn.com', '郑弘文', '何鸿煊', 0, '龙潇然', 345430012);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('黄伟宸', '张弘文', 'www.chelsea-dubuque.net', '卢远航', '韩熠彤', 0, '刘炫明', 3717151);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('宋鸿煊', '何鑫鹏', 'www.amelia-zulauf.net', '雷健雄', '范晓啸', 0, '薛弘文', 5);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('赖鹏', '魏振家', 'www.stacey-dubuque.org', '董炫明', '洪明杰', 0, '邱正豪', 8623);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('覃远航', '杜梓晨', 'www.isabel-gottlieb.com', '吕瑞霖', '夏弘文', 0, '黄博涛', 872183);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('钱明', '吴旭尧', 'www.joetta-oreilly.biz', '侯健雄', '蒋鹏煊', 0, '徐立轩', 305771);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('金健柏', '林志强', 'www.angla-ruecker.name', '崔立诚', '赵明', 0, '石文昊', 7308590);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('彭梓晨', '崔子轩', 'www.cyril-prohaska.org', '龚思', '范思', 0, '邹凯瑞', 25);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('唐航', '任鸿煊', 'www.omar-mclaughlin.org', '曾晓啸', '陶擎宇', 0, '范越彬', 745);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('沈擎宇', '李志泽', 'www.theron-purdy.co', '万弘文', '陆皓轩', 0, '侯驰', 83);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('朱煜城', '汪致远', 'www.nu-ortiz.io', '龚健雄', '毛烨伟', 0, '龚鹏', 2282462);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('苏志泽', '许子默', 'www.damien-langosh.org', '黄耀杰', '郑苑博', 0, '魏绍辉', 638);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('陆越彬', '潘振家', 'www.shena-stanton.biz', '蒋越彬', '梁嘉懿', 0, '宋绍辉', 2941);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('苏文轩', '胡明哲', 'www.gillian-luettgen.org', '吕振家', '蒋嘉熙', 0, '谭立诚', 4945610);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('赖鸿涛', '钟立诚', 'www.lacy-grant.co', '侯志泽', '钱健柏', 0, '洪驰', 48);
insert into db_api.`interface_info` (`name`, `description`, `url`, `request_header`, `response_header`, `status`, `method`, `user_id`) values ('廖风华', '朱荣轩', 'www.delila-prohaska.co', '谭航', '冯文轩', 0, '石越泽', 902933);