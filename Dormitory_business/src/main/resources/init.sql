/*
Navicat Premium Dump SQL

Source Server : localhost
Source Server Type : MySQL
Source Server Version : 90200 (9.2.0)
Source Host : localhost:3306
Source Schema : dormitory_business

Target Server Type : MySQL
Target Server Version : 90200 (9.2.0)
File Encoding : 65001

Date: 17/03/2025 10:09:07
*/
-- 创建数据库
create schema dormitory_db collate utf8mb4_general_ci;


-- 创建表和初始化数据
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- Table structure for adjust_room

DROP TABLE IF EXISTS adjust_room;
CREATE TABLE adjust_room (
                             id int NOT NULL AUTO_INCREMENT,
                             username varchar(255) DEFAULT NULL,
                             name varchar(255) DEFAULT NULL,
                             currentroom_id int DEFAULT NULL,
                             currentbed_id int DEFAULT NULL,
                             towardsroom_id int DEFAULT NULL,
                             towardsbed_id int DEFAULT NULL,
                             state varchar(255) DEFAULT NULL,
                             apply_time varchar(255) DEFAULT NULL,
                             finish_time varchar(255) DEFAULT NULL,
                             PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of adjust_room

BEGIN;
INSERT INTO adjust_room (id, username, name, currentroom_id, currentbed_id, towardsroom_id, towardsbed_id, state, apply_time, finish_time) VALUES (1, 'student5', '香晖一号学生', 1004, 1, 2101, 1, '通过', '2025-03-17 09:58:18', '2025-03-17 10:00:38');
COMMIT;

-- Table structure for admin

DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
                       username varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                       password varchar(255) DEFAULT NULL,
                       name varchar(255) DEFAULT NULL,
                       gender varchar(255) DEFAULT NULL,
                       age int DEFAULT NULL,
                       phone_num varchar(255) DEFAULT NULL,
                       email varchar(255) DEFAULT NULL,
                       avatar varchar(255) DEFAULT NULL,
                       PRIMARY KEY (username) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of admin

BEGIN;
INSERT INTO admin (username, password, name, gender, age, phone_num, email, avatar) VALUES ('admin', 'admin', '后勤管理人员', '男', 35, '18815633970', '3569856245@qq.com', NULL);
COMMIT;

-- Table structure for dorm_build

DROP TABLE IF EXISTS dorm_build;
CREATE TABLE dorm_build (
                            id int NOT NULL AUTO_INCREMENT,
                            dormbuild_id int DEFAULT NULL,
                            dormbuild_name varchar(255) DEFAULT NULL,
                            dormbuild_detail varchar(255) DEFAULT NULL,
                            PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of dorm_build

BEGIN;
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (1, 1, '岐头16栋', '男生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (2, 2, '岐头17栋', '男生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (3, 3, '岐头18栋', '男生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (4, 4, '岐头19栋', '男生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (5, 5, '香晖1号楼', '女生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (6, 6, '香晖2号楼', '女生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (7, 7, '香晖3号楼', '女生宿舍');
INSERT INTO dorm_build (id, dormbuild_id, dormbuild_name, dormbuild_detail) VALUES (8, 8, '香晖4号楼', '女生宿舍');
COMMIT;

-- Table structure for dorm_manager

DROP TABLE IF EXISTS dorm_manager;
CREATE TABLE dorm_manager (
                              username varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                              password varchar(255) DEFAULT NULL,
                              dormbuild_id int DEFAULT NULL,
                              name varchar(255) DEFAULT NULL,
                              gender varchar(255) DEFAULT NULL,
                              age int DEFAULT NULL,
                              phone_num varchar(255) DEFAULT NULL,
                              email varchar(255) DEFAULT NULL,
                              avatar varchar(255) DEFAULT NULL,
                              PRIMARY KEY (username) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of dorm_manager

BEGIN;
INSERT INTO dorm_manager (username, password, dormbuild_id, name, gender, age, phone_num, email, avatar) VALUES ('manger', 'manger', 1, '岐头宿管', '男', 22, '18814288191', '1648259525@qq.com', NULL);
COMMIT;

-- Table structure for dorm_room

DROP TABLE IF EXISTS dorm_room;
CREATE TABLE dorm_room (
                           dormroom_id int NOT NULL,
                           dormbuild_id int DEFAULT NULL,
                           floor_num int DEFAULT NULL,
                           max_capacity int DEFAULT NULL,
                           current_capacity int DEFAULT NULL,
                           first_bed varchar(255) DEFAULT NULL,
                           second_bed varchar(255) DEFAULT NULL,
                           third_bed varchar(255) DEFAULT NULL,
                           fourth_bed varchar(255) DEFAULT NULL,
                           PRIMARY KEY (dormroom_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of dorm_room

BEGIN;
INSERT INTO dorm_room (dormroom_id, dormbuild_id, floor_num, max_capacity, current_capacity, first_bed, second_bed, third_bed, fourth_bed) VALUES (1001, 1, 1, 4, 2, 'student', 'student2', NULL, NULL);
INSERT INTO dorm_room (dormroom_id, dormbuild_id, floor_num, max_capacity, current_capacity, first_bed, second_bed, third_bed, fourth_bed) VALUES (1002, 1, 1, 4, 1, NULL, NULL, NULL, 'student3');
INSERT INTO dorm_room (dormroom_id, dormbuild_id, floor_num, max_capacity, current_capacity, first_bed, second_bed, third_bed, fourth_bed) VALUES (1003, 1, 1, 4, 1, NULL, 'student4', NULL, NULL);
INSERT INTO dorm_room (dormroom_id, dormbuild_id, floor_num, max_capacity, current_capacity, first_bed, second_bed, third_bed, fourth_bed) VALUES (1004, 1, 1, 4, 0, NULL, NULL, NULL, NULL);
INSERT INTO dorm_room (dormroom_id, dormbuild_id, floor_num, max_capacity, current_capacity, first_bed, second_bed, third_bed, fourth_bed) VALUES (2101, 4, 1, 3, 1, 'student5', NULL, NULL, NULL);
INSERT INTO dorm_room (dormroom_id, dormbuild_id, floor_num, max_capacity, current_capacity, first_bed, second_bed, third_bed, fourth_bed) VALUES (2103, 3, 1, 4, 0, NULL, NULL, NULL, NULL);
COMMIT;

-- Table structure for notice

DROP TABLE IF EXISTS notice;
CREATE TABLE notice (
                        id int NOT NULL AUTO_INCREMENT,
                        title varchar(255) DEFAULT NULL,
                        content varchar(255) DEFAULT NULL,
                        author varchar(255) DEFAULT NULL,
                        release_time varchar(255) DEFAULT NULL,
                        PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of notice

BEGIN;
INSERT INTO notice (id, title, content, author, release_time) VALUES (1, '广告测试', '

广告测试<span style="font-size: var(--font-size); color: var(--el-text-color-regular);">😛<span style="font-size: var(--font-size); color: var(--el-text-color-regular);">😘

', '后勤管理人员', '2025-03-17 09:30:11');
INSERT INTO notice (id, title, content, author, release_time) VALUES (2, '测试测试', '
测试测试

', '后勤管理人员', '2025-03-17 10:03:28');
COMMIT;
-- Table structure for repair

DROP TABLE IF EXISTS repair;
CREATE TABLE repair (
                        id int NOT NULL AUTO_INCREMENT,
                        repairer varchar(255) DEFAULT NULL,
                        dormbuild_id int NOT NULL,
                        dormroom_id int NOT NULL,
                        title varchar(255) DEFAULT NULL,
                        content varchar(255) DEFAULT NULL,
                        state varchar(255) DEFAULT NULL,
                        order_buildtime datetime DEFAULT NULL,
                        order_finishtime datetime DEFAULT NULL,
                        PRIMARY KEY (id,dormbuild_id,dormroom_id)
) ENGINE=InnoDB AUTO_INCREMENT=1258344450 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of repair

BEGIN;
INSERT INTO repair (id, repairer, dormbuild_id, dormroom_id, title, content, state, order_buildtime, order_finishtime) VALUES (1258344449, '香晖一号学生', 1, 1004, '测试单', '测试单', '完成', '2025-03-17 09:57:00', '2025-03-17 09:57:28');
COMMIT;

-- Table structure for student

DROP TABLE IF EXISTS student;
CREATE TABLE student (
                         id int NOT NULL AUTO_INCREMENT,
                         username varchar(255) DEFAULT NULL,
                         password varchar(255) DEFAULT NULL,
                         name varchar(255) DEFAULT NULL,
                         age int DEFAULT NULL,
                         gender varchar(255) DEFAULT NULL,
                         phone_num varchar(255) DEFAULT NULL,
                         email varchar(255) DEFAULT NULL,
                         avatar varchar(255) DEFAULT NULL,
                         PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of student

BEGIN;
INSERT INTO student (id, username, password, name, age, gender, phone_num, email, avatar) VALUES (1, 'student', 'student', '岐头十六栋二号学生', 18, '男', '18814288199', '1669826325@qq.com', NULL);
INSERT INTO student (id, username, password, name, age, gender, phone_num, email, avatar) VALUES (2, 'student2', 'student2', '岐头十六栋一号学生', 18, '男', '13365896532', '1689562352@qq.com', NULL);
INSERT INTO student (id, username, password, name, age, gender, phone_num, email, avatar) VALUES (3, 'student3', 'student3', '岐头十六栋三号学生', 18, '男', '13365255632', '1565265252@qq.com', NULL);
INSERT INTO student (id, username, password, name, age, gender, phone_num, email, avatar) VALUES (4, 'student4', 'student4', '岐头十六栋四号学生', 18, '男', '18895635458', '1649825637@qq.com', NULL);
INSERT INTO student (id, username, password, name, age, gender, phone_num, email, avatar) VALUES (5, 'student5', 'student5', '香晖一号学生', 18, '女', '18845698521', '1648795236@qq.com', NULL);
COMMIT;

-- Table structure for user

DROP TABLE IF EXISTS user;
CREATE TABLE user (
                      id int NOT NULL AUTO_INCREMENT,
                      username varchar(255) DEFAULT NULL,
                      password varchar(255) DEFAULT NULL,
                      identity varchar(255) DEFAULT NULL,
                      avatar varchar(255) DEFAULT NULL,
                      PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of user

BEGIN;
COMMIT;

-- Table structure for visitor

DROP TABLE IF EXISTS visitor;
CREATE TABLE visitor (
                         id int NOT NULL AUTO_INCREMENT,
                         name varchar(255) DEFAULT NULL,
                         gender varchar(255) DEFAULT NULL,
                         phone_num varchar(255) DEFAULT NULL,
                         origin_city varchar(255) DEFAULT NULL,
                         visit_time varchar(255) DEFAULT NULL,
                         content varchar(255) DEFAULT NULL,
                         PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Records of visitor

BEGIN;
INSERT INTO visitor (id, name, gender, phone_num, origin_city, visit_time, content) VALUES (1, '访客设置', '女', '18856226562', NULL, '2025-03-17 10:01:43', '访客test');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;