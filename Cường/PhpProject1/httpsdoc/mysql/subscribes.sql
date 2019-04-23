CREATE TABLE `comment`.`comment_box` ( 
`userID` INT(11) NOT NULL AUTO_INCREMENT ,
 `userName` VARCHAR(255) NOT NULL ,
 `profile_img` VARCHAR(255) NOT NULL , 
PRIMARY KEY (`userID`)) ENGINE = InnoDB;


CREATE TABLE `comment`.`comments` ( 
`comment_id` INT NOT NULL AUTO_INCREMENT , 
`comment` TEXT NOT NULL , 
`userID` INT(11) NOT NULL ,
 PRIMARY KEY (`comment_id`)) ENGINE = InnoDB;