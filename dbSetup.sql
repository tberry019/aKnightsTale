CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE IF NOT EXISTS knights(
  id INT NOT NULL AUTO_INCREMENT primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'Knight Name',
  weapon varchar(255) COMMENT 'Knight Weapon',
  imgUrl TEXT COMMENT 'User Picture',
  creatorId VARCHAR(255) NOT NULL COMMENT 'Creator Id from Creators Table',
  castleId VARCHAR(255) NOT NULL COMMENT 'Castle Id from Table',

  FOREIGN KEY (creatorId)
    REFERENCES accounts(id)
    ON DELETE CASCADE,
  FOREIGN KEY (castleId)
    REFERENCES accounts(id)
    ON DELETE CASCADE
) default charset utf8 COMMENT '';

INSERT INTO knights(name, weapon, imgUrl, creatorId)
VALUES("Sir Mix Alot", "Pet Anaconda","https://thiscatdoesnotexist.com", "");
-- INSERT INTO knights(name, weapon, imgUrl, creatorId)
-- VALUES("The Mountain", "Longsword", "https://thiscatdoesnotexist.com", "");
-- INSERT INTO knights(name, weapon, imgUrl, creatorId)
-- VALUES("The Black Knight", "Fear", "https://thiscatdoesnotexist.com", "");

CREATE TABLE IF NOT EXISTS castles(
  id INT NOT NULL AUTO_INCREMENT primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'Castle Name',
  location varchar(255) COMMENT 'Castle Location',
  creatorId VARCHAR(255) NOT NULL COMMENT 'Creator Id from Creators Table',


  FOREIGN KEY (creatorId)
    REFERENCES accounts(id)
    ON DELETE CASCADE
) default charset utf8 COMMENT '';

INSERT INTO castles(name, location, creatorId)
VALUES("WinterFell", "The North Westeros","");

DROP TABLE knights