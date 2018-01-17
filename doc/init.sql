DROP TABLE IF EXISTS permission;
CREATE TABLE permission (
  permission_id   INT(11)      NOT NULL AUTO_INCREMENT,
  permission_name VARCHAR(255) NOT NULL DEFAULT '',
  url             VARCHAR(255)          DEFAULT '',
  PRIMARY KEY (permission_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO permission VALUES (1, 'add', '');
INSERT INTO permission VALUES (2, 'delete', '');
INSERT INTO permission VALUES (3, 'edit', '');
INSERT INTO permission VALUES (4, 'query', '');


DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user_id   INT(11)      NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(255) NOT NULL DEFAULT '',
  password  VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (user_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO user VALUES (1, 'admin', '123');
INSERT INTO user VALUES (2, 'demo', '123');


DROP TABLE IF EXISTS role;
CREATE TABLE role (
  role_id   INT(11)      NOT NULL AUTO_INCREMENT,
  role_name VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (role_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO role VALUES (1, 'admin');
INSERT INTO role VALUES (2, 'customer');


DROP TABLE IF EXISTS role_permission;
CREATE TABLE role_permission (
  role_id       INT(11) NOT NULL,
  permission_id INT(11) NOT NULL,
  INDEX idx_role_id(role_id),
  INDEX idx_permission_id(permission_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO role_permission VALUES (1, 1);
INSERT INTO role_permission VALUES (1, 2);
INSERT INTO role_permission VALUES (1, 3);
INSERT INTO role_permission VALUES (1, 4);
INSERT INTO role_permission VALUES (2, 1);
INSERT INTO role_permission VALUES (2, 4);


DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  user_id INT(11) NOT NULL,
  role_id INT(11) NOT NULL,
  INDEX idx_user_id(user_id),
  INDEX idx_role_id(role_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO user_role VALUES (1, 1);
INSERT INTO user_role VALUES (2, 2);
