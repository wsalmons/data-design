INSERT INTO user (userId, userIdName, userIdEmail, userIdPassword) VALUES (UNHEX("3be684fca1ae44b1a0720273c69c1c01"),
"wyguyy", "email@email.com", "ahahahahahahahahahahahahahahahah");

INSERT INTO photo (photoId, photoIdUserId, photoIdUrl, photoIdFileType, photoIdMetadata) VALUES (UNHEX("de78e2818aaa45c48905a3e52db1d95e"),
UNHEX("3be684fca1ae44b1a0720273c69c1c01"), "website.com/photo/photoId", "jpeg", "Wyatt Salmons");

INSERT INTO `group` (groupId, groupIdPhotoId, groupIdUserId, groupIdName) VALUES (UNHEX("2b4c17b94ecc46309383491997d849d1"), UNHEX("de78e2818aaa45c48905a3e52db1d95e"),
UNHEX("3be684fca1ae44b1a0720273c69c1c01"), "Cool Photo Group!");

UPDATE `group`
	SET groupIdName ="Ultimate Photo Group!!"
	WHERE groupId = UNHEX("2b4c17b94ecc46309383491997d849d1");
