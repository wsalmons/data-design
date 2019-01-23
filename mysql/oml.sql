-- Inserts row into `user` table
INSERT INTO `user` (userId, userIdName, userIdEmail, userIdPassword)
VALUES (UNHEX("e06598fa990f4a808c0c03b78c1683af"), "wyguy", "Wyatt@email.com", "nananananananananananananananana");
-- Inserts row into `user` table
INSERT INTO `user` (userId, userIdName, userIdEmail, userIdPassword)
VALUES (UNHEX("774180d668144030b5cfdce0338f55ca"), "GreatGuyGary", "Gary@email.com", "rararararararararararararararara");
-- Inserts row into `user` table
INSERT INTO `user` (userId, userIdName, userIdEmail, userIdPassword)
VALUES (UNHEX("dde7b16e1d7f49f3b3b561a45e004626"), "DecentDudeDudley", "Dudley@email.com", "gagagagagagagagagagagagagagagaga");
-- Inserts row into photo table
INSERT INTO photo (photoId, photoIdUserId, photoIdGroupId, photoIdUrl, photoIdMetadata)
VALUES (UNHEX("530f173a037a4d01930086b35a72f982"), UNHEX("e06598fa990f4a808c0c03b78c1683af"), NULL, "www.flickr.com/photo", "jpeg, Wyatt Salmons");
-- Inserts row into photo table
INSERT INTO photo (photoId, photoIdUserId, photoIdGroupId, photoIdUrl, photoIdMetadata)
VALUES (UNHEX("90eb0db01bfb4324ad9c6c377da5b650"), UNHEX("774180d668144030b5cfdce0338f55ca"), NULL, "www.flickr.com/photo2", "jpeg, Gary Galmons");
-- Inserts row into photo table
INSERT INTO photo (photoId, photoIdUserId, photoIdGroupId, photoIdUrl, photoIdMetadata)
VALUES (UNHEX("7a73342d56534d378ad53129d22c5602"), UNHEX("dde7b16e1d7f49f3b3b561a45e004626"), NULL, "www.flickr.com/photo3", "jpeg, Dudley Dalmons");
-- Inserts row into `group` table
INSERT INTO `group` (groupId, groupIdUserId, groupIdName)
VALUES (UNHEX("6ea849260463457ab2bed7e9de29fa53"), UNHEX("e06598fa990f4a808c0c03b78c1683af"), "Pretty Neat Photos for Cool Cats");
-- Updates photoIdGroup in photo
UPDATE photo SET photoIdGroupId = UNHEX("6ea849260463457ab2bed7e9de29fa53")
WHERE photoId = UNHEX("530f173a037a4d01930086b35a72f982");
-- Updates photoIdGroup in photo
UPDATE photo SET photoIdGroupId = UNHEX("6ea849260463457ab2bed7e9de29fa53")
WHERE photoId = UNHEX("90eb0db01bfb4324ad9c6c377da5b650");
-- Updates a photoIdGroup in photo
UPDATE photo SET photoIdGroupId = UNHEX("6ea849260463457ab2bed7e9de29fa53")
WHERE photoId = UNHEX("7a73342d56534d378ad53129d22c5602");
-- Deletes photoId from photo
DELETE FROM photo WHERE photoId= UNHEX("7a73342d56534d378ad53129d22c5602");
-- Selects a photo from user wyguy
SELECT photoId FROM photo WHERE photoIdUserId = UNHEX("e06598fa990f4a808c0c03b78c1683af");
-- selects photos that are in Pretty Neat Photos for Cool Cats
SELECT photo.photoId, `group`.groupIdName FROM  `group` INNER JOIN `photo` on `group`.groupId = photo.photoIdGroupId WHERE `group`.groupIdName = "Pretty Neat Photos for Cool Cats";
-- selects users who have photos in Pretty Neat Photos for Cool Cats
SELECT user.userId, user.userIdName FROM user INNER JOIN photo on user.userId = photo.photoIdUserId WHERE photo.photoIdGroupId = UNHEX("6ea849260463457ab2bed7e9de29fa53");
-- selects user who created Pretty Neat Photos for Cool Cats
SELECT user.userId, user.userIdName FROM user INNER JOIN `group` on user.userId = `group`.groupIdUserId WHERE groupIdName =  "Pretty Neat Photos for Cool Cats";
-- SELECT tableA.column1, tableA.column2 FROM tableA INNER JOIN tableB on tableA.primaryKeyA = tableB.foreignKeyA WHERE tableA.column = true.

-- Counts photos that have photoIdGroupId 6ea849260463457ab2bed7e9de29fa53
SELECT photoIdGroupId, COUNT(*) FROM photo WHERE photoIdGroupId = UNHEX("6ea849260463457ab2bed7e9de29fa53") GROUP BY photoIdGroupId;












