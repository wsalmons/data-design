INSERT INTO `user` (userId, userIdName, userIdEmail, userIdPassword)
VALUES (UNHEX("e06598fa990f4a808c0c03b78c1683af"), "wyguy", "Wyatt@email.com", "nananananananananananananananana");

INSERT INTO `user` (userId, userIdName, userIdEmail, userIdPassword)
VALUES (UNHEX("774180d668144030b5cfdce0338f55ca"), "GreatGuyGary", "Gary@email.com", "rararararararararararararararara");

INSERT INTO `user` (userId, userIdName, userIdEmail, userIdPassword)
VALUES (UNHEX("dde7b16e1d7f49f3b3b561a45e004626"), "DecentDudeDudley", "Dudley@email.com", "gagagagagagagagagagagagagagagaga");

INSERT INTO photo (photoId, photoIdUserId, photoIdGroupId, photoIdUrl, photoIdMetadata)
VALUES (UNHEX("530f173a037a4d01930086b35a72f982"), UNHEX("e06598fa990f4a808c0c03b78c1683af"), NULL, "www.flickr.com/photo", "jpeg, Wyatt Salmons");

INSERT INTO photo (photoId, photoIdUserId, photoIdGroupId, photoIdUrl, photoIdMetadata)
VALUES (UNHEX("90eb0db01bfb4324ad9c6c377da5b650"), UNHEX("774180d668144030b5cfdce0338f55ca"), NULL, "www.flickr.com/photo2", "jpeg, Gary Galmons");

INSERT INTO photo (photoId, photoIdUserId, photoIdGroupId, photoIdUrl, photoIdMetadata)
VALUES (UNHEX("7a73342d56534d378ad53129d22c5602"), UNHEX("dde7b16e1d7f49f3b3b561a45e004626"), NULL, "www.flickr.com/photo3", "jpeg, Dudley Dalmons");

INSERT INTO `group` (groupId, groupIdUserId, groupIdName)
VALUES (UNHEX("6ea849260463457ab2bed7e9de29fa53"), UNHEX("e06598fa990f4a808c0c03b78c1683af"), "Pretty Neat Photos for Cool Cats");

UPDATE photo SET photoIdGroupId = UNHEX("6ea849260463457ab2bed7e9de29fa53")
WHERE photoId = UNHEX("530f173a037a4d01930086b35a72f982");





