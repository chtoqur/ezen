
 select * from USER_TBL;
 select * from BBS_TBL;
 
 select rownum RN, BBS_TBL.* FROM BBS_TBL;
 -- RN : �ʵ� ��Ī

 INSERT into BBS_TBL (SEQ, TITLE, CONTENT, REGDATE, DIVI, USERID)
 SELECT 3, '�׽�Ʈ ����3', '�׽�Ʈ ������3', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 4, '�׽�Ʈ ����4', '�׽�Ʈ ������4', '2023-07-09', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 5, '�׽�Ʈ ����5', '�׽�Ʈ ������5', '2023-07-10', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 2, '��ȫ�� �׽�Ʈ ����2', '��ȫ�� �׽�Ʈ ������2', '2023-07-10', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 6, '�׽�Ʈ ����6', '�׽�Ʈ ������6', '2023-07-11', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 7, '�׽�Ʈ ����7', '�׽�Ʈ ������7', '2023-07-12', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 3, '��ȫ�� �׽�Ʈ ����3', '��ȫ�� �׽�Ʈ ������3', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 4, '��ȫ�� �׽�Ʈ ����4', '��ȫ�� �׽�Ʈ ������4', '2023-07-13', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 5, '��ȫ�� �׽�Ʈ ����5', '��ȫ�� �׽�Ʈ ������5', '2023-07-14', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 8, '�׽�Ʈ ����8', '�׽�Ʈ ������8', '2023-07-14', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 9, '�׽�Ʈ ����9', '�׽�Ʈ ������9', '2023-07-15', 'C', 'cis' FROM DUAL;

 INSERT into BBS_TBL (SEQ, TITLE, CONTENT, REGDATE, DIVI, USERID)
 SELECT 10, '�׽�Ʈ ����10', '�׽�Ʈ ������10', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 11, '�׽�Ʈ ����11', '�׽�Ʈ ������11', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 12, '�׽�Ʈ ����12', '�׽�Ʈ ������12', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 6, '��ȫ�� �׽�Ʈ ����6', '��ȫ�� �׽�Ʈ ������6', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 7, '��ȫ�� �׽�Ʈ ����7', '��ȫ�� �׽�Ʈ ������7', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 8, '��ȫ�� �׽�Ʈ ����8', '��ȫ�� �׽�Ʈ ������8', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 9, '��ȫ�� �׽�Ʈ ����9', '��ȫ�� �׽�Ʈ ������9', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 10, '��ȫ�� �׽�Ʈ ����10', '��ȫ�� �׽�Ʈ ������10', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 13, '�׽�Ʈ ����13', '�׽�Ʈ ������13', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 11, '��ȫ�� �׽�Ʈ ����11', '��ȫ�� �׽�Ʈ ������11', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 14, '�׽�Ʈ ����14', '�׽�Ʈ ������14', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 12, '��ȫ�� �׽�Ʈ ����12', '��ȫ�� �׽�Ʈ ������12', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 15, '�׽�Ʈ ����15', '�׽�Ʈ ������15', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 16, '�׽�Ʈ ����16', '�׽�Ʈ ������16', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 17, '�׽�Ʈ ����17', '�׽�Ʈ ������17', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 18, '�׽�Ʈ ����18', '�׽�Ʈ ������18', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 13, '��ȫ�� �׽�Ʈ ����13', '��ȫ�� �׽�Ʈ ������13', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 14, '��ȫ�� �׽�Ʈ ����14', '��ȫ�� �׽�Ʈ ������14', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 15, '��ȫ�� �׽�Ʈ ����15', '��ȫ�� �׽�Ʈ ������15', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 19, '�׽�Ʈ ����19', '�׽�Ʈ ������19', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 20, '�׽�Ʈ ����20', '�׽�Ʈ ������20', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 21, '�׽�Ʈ ����21', '�׽�Ʈ ������21', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 22, '�׽�Ʈ ����22', '�׽�Ʈ ������22', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 23, '�׽�Ʈ ����23', '�׽�Ʈ ������23', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 16, '��ȫ�� �׽�Ʈ ����16', '��ȫ�� �׽�Ʈ ������16', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 17, '��ȫ�� �׽�Ʈ ����17', '��ȫ�� �׽�Ʈ ������17', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 24, '�׽�Ʈ ����24', '�׽�Ʈ ������24', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 25, '�׽�Ʈ ����25', '�׽�Ʈ ������25', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 26, '�׽�Ʈ ����26', '�׽�Ʈ ������26', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 27, '�׽�Ʈ ����27', '�׽�Ʈ ������27', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 28, '�׽�Ʈ ����28', '�׽�Ʈ ������28', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 18, '��ȫ�� �׽�Ʈ ����18', '��ȫ�� �׽�Ʈ ������18', '2023-07-12', 'C', 'yhs' FROM DUAL UNION ALL
 SELECT 29, '�׽�Ʈ ����29', '�׽�Ʈ ������29', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 30, '�׽�Ʈ ����30', '�׽�Ʈ ������30', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 31, '�׽�Ʈ ����31', '�׽�Ʈ ������31', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 32, '�׽�Ʈ ����32', '�׽�Ʈ ������32', '2023-07-08', 'C', 'cis' FROM DUAL;
 
 INSERT into BBS_TBL (SEQ, TITLE, CONTENT, REGDATE, DIVI, USERID)
 SELECT 33, '�׽�Ʈ ����33', '�׽�Ʈ ������33', '2023-07-08', 'C', 'cis' FROM DUAL UNION ALL
 SELECT 34, '�׽�Ʈ ����34', '�׽�Ʈ ������34', '2023-07-08', 'C', 'cis' FROM DUAL;

 
 select rownum RN, BBS_TBL.* FROM BBS_TBL
 WHERE RN >= 1 AND RN <= 5;
 -- ERROR
 -- ���� : WHERE ������ ���̺��� ����, �� Ʃ���� �������� ��
 --       ������ ���� RN�� BBS_TBL�� �������� ���� ������
 -- ���� : WHERE ������ BBS_TBL�� �ƴ�
 --       RN + BBS_TBL�� ������ ���̺� ������ ������ ��
 
 -- ����
 select * FROM
 (select rownum RN, BBS_TBL.* FROM BBS_TBL)
 WHERE RN >= 1 AND RN <= 5;
 
 select * from BBS_TBL;
 
 commit;
 
 
 select * from user_tbl;
 drop table user_tbl;
 
 CREATE TABLE user_tbl
 (
 USERID     VARCHAR2(50)    NOT NULL,   PRIMARY KEY(USERID),
 USERPW     VARCHAR2(50)    NOT NULL,
 EMAIL      VARCHAR2(100),
 NAME       VARCHAR2(50)
 );
 
 CREATE TABLE bbs_tbl
 (
 SEQ            NUMBER           NOT NULL, PRIMARY KEY(SEQ, USERID),
 TITLE          VARCHAR2(500)    NOT NULL,
 CONTENT        VARCHAR2(3000),
 REGDATE        DATE,
 DIVI           VARCHAR2(10),   -- N(Notice) : ����, C(Common) : �Ϲ�, R(Required) : �ʵ�
 USERID         VARCHAR2(50)     NOT NULL,
 FOREIGN KEY(USERID) REFERENCES user_tbl(USERID)
 );
 
 select * from user_tbl;
 select * from bbs_tbl;
 
 INSERT INTO user_tbl VALUES
 ('cis', '1111', 'cis@gmail.com', '���̼�');
 INSERT INTO user_tbl VALUES
 ('yhs', '2222', 'yhs@gmail.com', '��ȫ��');
 
 -- N(Notice) : ����, C(Common) : �Ϲ�, R(Required) : �ʵ�
 INSERT INTO bbs_tbl VALUES
 (1, '�׽�Ʈ ����1', '�׽�Ʈ ������1', sysdate, 'C', 'cis');
 INSERT INTO bbs_tbl VALUES
 (2, '�׽�Ʈ ����2', '�׽�Ʈ ������2', sysdate, 'C', 'cis');
 INSERT INTO bbs_tbl VALUES
 (1, '��ȫ�� �׽�Ʈ ����1', '��ȫ�� �׽�Ʈ ������1', sysdate, 'C', 'yhs');
 
 commit;
 
 
