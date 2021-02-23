CREATE TABLE `deathvalley`.`user` (
                                      `userId` INTEGER NOT NULL AUTO_INCREMENT,
                                      `name` VARCHAR(45) NULL,
                                      `sureName` VARCHAR(45) NULL,
                                      constraint user_pk
                                          primary key (userId)
);
CREATE TABLE `deathvalley`.`account` (
                                         `accountId` INTEGER NOT NULL AUTO_INCREMENT,
                                         `account` INT NULL,
                                         `userId` INT NOT NULL,
                                         constraint account_pk
                                             primary key (accountId),
                                         constraint account_user_id_fk
                                             foreign key (userId) references user (userId)
                                                 on update cascade on delete cascade
);



INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Vasiliy', 'Pupkin');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Genadiy', 'Vasilkov');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Valera', 'Kipelov');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Imbalance', 'Ballance');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Petr', 'Volos');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Matvey', 'Shevchov');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Lena', 'Ivanovna');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Lera', 'Kudravceva');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Tanya', 'Gaponova');

INSERT INTO `deathvalley`.`user` (`name`, `sureName`) VALUES ('Slava', 'Sholomitskiy');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('345', '1');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('6456', '2');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('6456', '3');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('3432', '4');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('123', '5');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('212212', '6');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('5646', '7');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('576756', '8');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('7567', '9');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('765799', '10');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('7657567', '1');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('64355', '2');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('6234', '3');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('3678', '4');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('109890', '5');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('21890', '6');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('50890', '7');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('579879', '8');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('79789787', '9');

INSERT INTO `deathvalley`.`account` (`account`, `userId`) VALUES ('799', '10');
