BEGIN TRANSACTION;
INSERT INTO "patient" VALUES (00000001, '김가나', 'w','1949-01-11',101);
INSERT INTO "patient" VALUES (00000002, '김홍길', 'm','1939-02-11',102);
INSERT INTO "patient" VALUES (00000003, '이나가', 'w','1959-11-21',101);
INSERT INTO "patient" VALUES (00000004, '이진주', 'w','1947-07-17',101);
INSERT INTO "patient" VALUES (00000005, '이홍길', 'm','1944-08-19',103);
INSERT INTO "patient" VALUES (00000006, '박수다', 'm','1933-05-16',102);
INSERT INTO "patient" VALUES (00000007, '박진짜', 'm','1940-11-04',103);
INSERT INTO "patient" VALUES (00000008, '장가짜', 'w','1935-12-01',101);
INSERT INTO "patient" VALUES (00000009, '하하진', 'm','1937-05-16',102);
INSERT INTO "patient" VALUES (00000010, '하홍진', 'w','1935-04-20',101);

INSERT INTO "Medical_staff" VALUES ('a','김딸기', '이진형', '이긱미');
INSERT INTO "Medical_staff" VALUES ('b','김바나', '김혜주', '한지');
INSERT INTO "Medical_staff" VALUES ('c','김오이', '김규원', '한제목');
INSERT INTO "Medical_staff" VALUES ('d','오하나', '김기우', '이항');
INSERT INTO "Medical_staff" VALUES ('e','박둘', '장지우', '한나라');




INSERT INTO "care" VALUES (00000001,'a','2020-12-12','o','o','o','10:10:00',90,90,'o','2020-12-12');
INSERT INTO "care" VALUES (00000002,'b','2020-12-12','o','o','o','10:10:00',90,90,'o','2020-12-12');

INSERT INTO "Major_disease" VALUES (00000001,'고혈압');
INSERT INTO "Major_disease" VALUES (00000002,'고혈압');
INSERT INTO "Major_disease" VALUES (00000003,'당뇨');
INSERT INTO "Major_disease" VALUES (00000004,'당뇨');
INSERT INTO "Major_disease" VALUES (00000005,'고혈압');
INSERT INTO "Major_disease" VALUES (00000006,'당뇨');
INSERT INTO "Major_disease" VALUES (00000007,'저혈압');
INSERT INTO "Major_disease" VALUES (00000008,'저혈압');
INSERT INTO "Major_disease" VALUES (00000009,'당뇨');
INSERT INTO "Major_disease" VALUES (00000010,'욕창');

INSERT INTO "family" VALUES ('010-1234-5678','자녀','김희진');
INSERT INTO "family" VALUES ('010-1234-7894','자녀','이진');
INSERT INTO "family" VALUES ('010-9834-5678','자녀','이하나');
INSERT INTO "family" VALUES ('010-5464-5678','자녀','이태진');
INSERT INTO "family" VALUES ('010-1234-7861','자녀','이태정');
INSERT INTO "family" VALUES ('010-2752-7878','배우자','유재석');
INSERT INTO "family" VALUES ('010-1212-3434','자녀','홍길동');
INSERT INTO "family" VALUES ('010-3434-5678','자녀','김여나');
INSERT INTO "family" VALUES ('010-7865-5767','배우자','신지원');
INSERT INTO "family" VALUES ('010-5554-4552','자녀','신한주');

INSERT INTO "enrollment" VALUES (00000001,'010-1234-5678');
INSERT INTO "enrollment" VALUES (00000002,'010-1234-7894');
INSERT INTO "enrollment" VALUES (00000003,'010-9834-5678');
INSERT INTO "enrollment" VALUES (00000004,'010-5464-5678');
INSERT INTO "enrollment" VALUES (00000005,'010-1234-7861');
INSERT INTO "enrollment" VALUES (00000006,'010-2752-7878');
INSERT INTO "enrollment" VALUES (00000007,'010-1212-3434');
INSERT INTO "enrollment" VALUES (00000008,'010-3434-5678');
INSERT INTO "enrollment" VALUES (00000009,'010-7865-5767');
INSERT INTO "enrollment" VALUES (00000010,'010-5554-4552');
COMMIT;
