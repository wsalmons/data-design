-- The statement below sets the collation of the database to utf8
ALTER DATABASE wsalmons CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- this is a comment in SQL (yes, the space is needed!)
-- these statements will drop the tables and re-add them
-- this is akin to reformatting and reinstalling Windows (OS X never needs a reinstall...) ;)
-- never ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever
-- do this on live data!!!!
DROP TABLE IF EXISTS photo;
DROP TABLE IF EXISTS  `group`;
DROP TABLE IF EXISTS `user`;

-- the CREATE TABLE function is a function that takes tons of arguments to layout the table's schema
CREATE TABLE `user` (
	-- this creates the attribute for the primary key
	-- not null means the attribute is required!
	userId BINARY(16) NOT NULL,
	userIdName VARCHAR(32) NOT NULL,
	userIdEmail VARCHAR(128) NOT NULL,
	-- to make something optional, exclude the not null
	userIdPassword CHAR(97) NOT NULL,
	-- to make sure duplicate data cannot exist, create a unique index
	UNIQUE(userIdName),
	UNIQUE(userIdEmail),
	-- this officiates the primary key for the entity
	PRIMARY KEY(userId)
);

-- create the group entity
CREATE TABLE 	`group` (
	-- this is for yet another primary key...
	groupId BINARY(16) NOT NULL,
	-- this is for a foreign key
	groupIdUserId BINARY(16) NOT NULL,
	groupIdName VARCHAR(32) NOT NULL,
		-- this creates an index before making a foreign key
	INDEX(groupIdUserId),
	-- this creates the actual foreign key relation
	FOREIGN KEY(groupIdUserId) REFERENCES `user`(userId),
	-- and finally create the primary key
	PRIMARY KEY(groupId)
);

-- create the photo entity
CREATE TABLE photo (
	-- this is for yet another primary key...
	photoId BINARY(16) NOT NULL,
	-- this is for a foreign key
	photoIdUserId BINARY(16) NOT NULL,
	photoIdGroupId BINARY(16),
	photoIdUrl VARCHAR(140) NOT NULL,
	photoIdMetadata VARCHAR(510) NOT NULL,
	-- this creates an index before making a foreign key
	INDEX(photoIdUserId),
	-- this creates the actual foreign key relation
	FOREIGN KEY(photoIdUserId) REFERENCES `user`(userId),
	-- this creates an index before making a foreign key
	INDEX(photoIdGroupId),
	-- this creates the actual foreign key relation
	FOREIGN KEY(photoIdGroupId) REFERENCES `group`(groupId),
	-- and finally create the primary key
	PRIMARY KEY(photoId)
);

