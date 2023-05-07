CREATE TABLE "LIST" (
    "NO" NUMBER NOT NULL,
    "ID" VARCHAR2(100) NOT NULL,
    "TITLE" VARCHAR2(100) NOT NULL,
    "CONTENT" VARCHAR2(4000) NOT NULL,
    "ENROLLDATE" TIMESTAMP DEFAULT SYSDATE
    
);

CREATE SEQUENCE SEQ_LIST_NO NOCACHE NOCYCLE;

CREATE TABLE "MEMBER" (
    
    "ID" VARCHAR2(100) NOT NULL,
    "PWD" VARCHAR2(100) NOT NULL,
    "ENROLLDATE" TIMESTAMP DEFAULT SYSDATE
    
);



--------------------------------------------------------------------------------
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick02','���',
'�ȳ��ϼ���. �ڹٸ� �����ϰ� �ֽ��ϴ�. �ڹ� �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick03','����',
'�ȳ��ϼ���. ���̽��� �����ϰ� �ֽ��ϴ�. ���̽� �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick04','����',
'�ȳ��ϼ���. ���� �ڹٸ� �����ϰ� �ֽ��ϴ�. ���� �����ؿ�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick05','�Ϳ�',
'�ȳ��ϼ���. �������� �����ϰ� �ֽ��ϴ�. ������ �ʹ� ��Ƴ׿�. �������� ���� �� �ƽô� �� ��Ű���.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick06','���',
'�ȳ��ϼ���. �ڹٽ�ũ��Ʈ�� �����ϰ� �ֽ��ϴ�. �ڹٽ�ũ��Ʈ �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick07','���',
'�ȳ��ϼ���. �ڹٸ� �����ϰ� �ֽ��ϴ�. �ڹ� �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick08','����',
'�ȳ��ϼ���. ���̽��� �����ϰ� �ֽ��ϴ�. ���̽� �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick09','����',
'�ȳ��ϼ���. ���� �ڹٸ� �����ϰ� �ֽ��ϴ�. ���� �����ؿ�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick10','�Ϳ�',
'�ȳ��ϼ���. �������� �����ϰ� �ֽ��ϴ�. ������ �ʹ� ��Ƴ׿�. �������� ���� �� �ƽô� �� ��Ű���.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick11','���',
'�ȳ��ϼ���. �ڹٽ�ũ��Ʈ�� �����ϰ� �ֽ��ϴ�. �ڹٽ�ũ��Ʈ �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick02','���',
'�ȳ��ϼ���. ���� ���������� �Խ����� ��������ϴ�. ������ �� ���� �׷��׿�.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick03','����',
'�ȳ��ϼ���. ���̽��� �Ϸ� ���� �����ؼ� ������, �ӽŷ��� �̷� �͵鵵 ������ϴµ�..', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick04','����',
'�ȳ��ϼ���. ���� �Խ��� �� ���ڰ� ����� ������ ���̵� �����ϳ׿�.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick05','�Ϳ�',
'�ȳ��ϼ���. �������� �����ϰ� �ֽ��ϴ�. ������ �ʹ� ��Ƴ׿�. �������� ���� �� �ƽô� �� ��Ű���.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick06','���',
'�ȳ��ϼ���. �ڹٽ�ũ��Ʈ�� �����ϰ� �ֽ��ϴ�. �ڹٽ�ũ��Ʈ�� �̰����� ����� ���߰ڴµ�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick07','���',
'�ȳ��ϼ���. �ڹٸ� �����ϰ� �ִµ� ���� ��� ���� ��Ʊ���.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick08','����',
'�ȳ��ϼ���. ���̽��� �����ϰ� �ֽ��ϴ�. ���̽� �ʹ� ��Ƴ׿�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick09','����',
'�ȳ��ϼ���. ���� �ڹٸ� �����ϰ� �ֽ��ϴ�. ���� �����ؿ�', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick10','�Ϳ�',
'�ȳ��ϼ���. �������� �����ϰ� �ֽ��ϴ�. ������ �ʹ� ��Ƴ׿�. �������� ���� �� �ƽô� �� ��Ű���.', SYSDATE);
INSERT INTO LIST (NO,ID,TITLE,CONTENT,ENROLLDATE) 
VALUES(SEQ_LIST_NO.NEXTVAL,'nick11','���',
'�ȳ��ϼ���. �ڹٽ�ũ��Ʈ�� �����ϰ� �ֽ��ϴ�. �ڹٽ�ũ��Ʈ �ʹ� ��Ƴ׿�', SYSDATE);
-----------------------------------------------------------------------------------

INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick02','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick03','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick04','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick05','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick06','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick07','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick08','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick09','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick10','1234', SYSDATE);
INSERT INTO MEMBER(ID, PWD, ENROLLDATE) VALUES('nick11','1234', SYSDATE);

commit;