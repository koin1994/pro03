CREATE TABLE test(NAME VARCHAR(50), POINT INT);
INSERT INTO test VALUES("김태엽",100);
INSERT INTO test VALUES("김기태",100);

SELECT * FROM test;

CREATE TABLE notice(
	NO INT PRIMARY KEY auto_increment,
	title VARCHAR(200),
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);

DESC notice;

INSERT INTO notice(title, content) values

COMMIT;

CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

DROP TABLE USER;
DESC USER;

SELECT * FROM USER;
UPDATE user SET grade="A" WHERE id="admin";
COMMIT;


SELECT * FROM test;


CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150)
);
ALTER TABLE pic ADD COLUMN pos INT default 1; 
DESC pic;
SELECT * FROM pic;tour
DELETE FROM pic;
COMMIT;
CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);
ALTER TABLE tour ADD COLUMN addr VARCHAR(200);
DESC tour;
SELECT * FROM tour;
SELECT COMMENT2 FROM tour;
select * from tour where place like CONCAT('%','고양','%');
update tour set addr="경기도 고양시 일산동구 태극로 20" WHERE tourno="E0018";
update tour set addr="경기도 고양시 일산서구 킨텍스로 217-60" WHERE tourno="A0002";
update tour set addr="" WHERE tourno="B003";
update tour set addr="" WHERE tourno="A004";
update tour set addr="" WHERE tourno="A005";
COMMIT;

SELECT * FROM tour;
COMMIT;

CREATE TABLE impress(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	cate VARCHAR(20),
	tourno VARCHAR(20),
	id VARCHAR(30),
	content VARCHAR(1000),
	title VARCHAR(100),
	imgSrc VARCHAR(150),
	regdate DATETIME DEFAULT NOW()
);
SELECT * FROM impress;



CREATE TABLE qna(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	author VARCHAR(20) NOT NULL,
	regdate DATETIME DEFAULT NOW(),
	lev INT DEFAULT 0,
	parno INT,
	sec CHAR(1),
	visited INT DEFAULT 0
);

SELECT * FROM qna;