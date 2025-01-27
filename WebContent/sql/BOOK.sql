DROP TABLE BOOK;
drop sequence book_seq;

CREATE TABLE BOOK(
	BOOK_ID			NUMBER,
	CONCERT_ID		NUMBER	NOT NULL,
	MEMBER_ID		VARCHAR2(50)	NOT NULL,
	BOOK_ETICKET	VARCHAR2(20)	NOT NULL,
	BOOK_AMOUNT		NUMBER			NOT NULL,
	CARD_ID		VARCHAR2(20)	NOT NULL,
	BOOK_DATE		DATE			NOT NULL,
	BOOK_PAYMENT	NUMBER	not null,
	PRIMARY KEY(BOOK_ID),
	FOREIGN KEY(CONCERT_ID) REFERENCES CONCERT on delete cascade,
	FOREIGN KEY(MEMBER_ID) REFERENCES MEMBER on delete cascade,
	FOREIGN KEY(CARD_ID) REFERENCES CARD on delete cascade
);
create sequence book_seq;

SELECT * FROM BOOK;
DELETE FROM BOOK;

