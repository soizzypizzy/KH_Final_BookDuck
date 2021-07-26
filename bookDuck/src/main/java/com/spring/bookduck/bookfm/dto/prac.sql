------------------------------------------------
/*	별점 테이블 */
CREATE TABLE BOOKSTAR;
SELECT * FROM BOOKSTAR;

ALTER TABLE BOOKSTAR ADD CONSTRAINT ZERO DEFAULT 3 FOR BOOKSTAR_STAR

DROP SEQUENCE BOOKSTAR_SEQ;
CREATE SEQUENCE BOOKSTAR_SEQ;
DROP TABLE BOOKSTAR;

CREATE TABLE BOOKSTAR(
	BOOKSTAR_SEQ INT NOT NULL,	
	BOOKSTAR_ID VARCHAR2(100),
	BOOKSTAR_ISBN VARCHAR2(100),
	BOOKSTAR_TITLE VARCHAR2(500),
	BOOKSTAR_STAR INT DEFAULT 0
);

CREATE TABLE BOOKSTAR(
	BOOKSTAR_ID VARCHAR2(100),
	BOOKSTAR_ISBN VARCHAR2(100),
	BOOKSTAR_TITLE VARCHAR2(500),
	BOOKSTAR_STAR INT DEFAULT 0
);

ALTER TABLE BOOKSTAR ADD UNIQUE (BOOKSTAR_ISBN);
----------------------------------------------------

/*	평균 구하는 중 */

SELECT * FROM BOOKSTAR;

SELECT AVG(BOOKSTAR_STAR)/COUNT(*)
FROM BOOKSTAR
WHERE BOOKSTAR_ISBN = '9788960536036';

SELECT AVG(BOOKSTAR_STAR)
FROM BOOKSTAR
WHERE BOOKSTAR_ISBN = '8809482280502';

----------------------------------------------------

/*	한 줄 낭독 테이블 */
DROP TABLE BOOKFM;
DROP SEQUENCE BOOKFM_SEQ;
CREATE SEQUENCE BOOKFM_SEQ;

SELECT * FROM BOOKFM;

CREATE TABLE BOOKFM(
	BOOKFM_SEQ INT NOT NULL,
	BOOKFM_ISBN VARCHAR2(100),
	BOOKFM_TITLE VARCHAR2(500),
	BOOKFM_AUTHOR VARCHAR2(500),
	BOOKFM_FM VARCHAR2(1000)
);