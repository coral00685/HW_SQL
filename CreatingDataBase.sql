/*
�سy�ۤ���Ʈw
*/
create database �ۤ�
go

/*
�ϥΰۤ���Ʈw
*/
use �ۤ�
go

/*
�إ߰ۤ���ƪ�B�s�@�o��Ӹ�ƪ�B�Ȥ��ƪ�B�ۤ��q���ƪ�ëإߦU��ƪ�PK(�������)
*/
create table �ۤ���ƪ�
(
	�ۤ��s�� char(5) primary key,
	�ۤ��W�� nvarchar(20),
	�q�� nvarchar(10),
	�s�@�o��ӽs�� char(5),
	�������� nvarchar(10),
	�o���� date
)
go

create table �s�@�o��Ӹ�ƪ�
(
	�s�@�o��ӽs�� char(5) primary key,
	�s�@�o��ӦW�� nvarchar(20),
	�q�� varchar(15) ,
	��} nvarchar(30),
	[E-mail] varchar(30)
)
go

create table �Ȥ��ƪ�
(
	�Ȥ�s�� char(5) primary key,
	�Ȥ�m�W nvarchar(10),
	�q�� varchar(15) ,
	��} nvarchar(30),
	[E-mail] varchar(30)
)
go

create table �ۤ��q���ƪ�
(
	�q��s�� char(5) primary key,
	�ۤ��s�� char(5),
	�Ȥ�s�� char(5),
	��� date,
	�ۤ���� int,
	�ۤ��ƶq int
)
go

/*
�������:check
*/
alter table �ۤ��q���ƪ�
	add constraint chk_�ۤ����
		check (�ۤ���� >= 0)

alter table �ۤ��q���ƪ�
	add constraint chk_�ۤ��ƶq
		check (�ۤ��ƶq >= 0)

alter table �ۤ��q���ƪ�
	add constraint chk_�ۤ��ΫȤ�s��
		check  (�ۤ��s�� is not Null and �Ȥ�s�� is not Null)

alter table �Ȥ��ƪ�
	add constraint chk_�Ȥ�m�W�ιq��
		check  (�Ȥ�m�W is not Null and �q�� is not Null)

alter table �s�@�o��Ӹ�ƪ�
	add constraint chk_�s�@�o��ӦW�٤ιq��
		check  (�s�@�o��ӦW�� is not Null and �q�� is not Null)

alter table �ۤ���ƪ�
	add constraint chk_�ۤ���ƪ�
		check  ( �ۤ��W�� is not Null and  �s�@�o��ӽs�� is not Null)
go

/*
�s�W�ۤ���ƪ���Ƥ��e
*/
insert  �ۤ���ƪ�
	(�ۤ��s��,�ۤ��W��,�q��,�s�@�o��ӽs��,��������,�o����)
values
	('A0-01','�R�S�R','By2','B0-01','CD�ػy��y','2017-03-03')

insert  �ۤ���ƪ�
	(�ۤ��s��,�ۤ��W��,�q��,�s�@�o��ӽs��,��������,�o����)
values
	('A0-02','�E�~','��Τ�','B0-01','CD�ػy��yEP','2017-03-21')

insert  �ۤ���ƪ�
	(�ۤ��s��,�ۤ��W��,�q��,�s�@�o��ӽs��,��������,�o����)
values
	('A0-03','�A���W�r','������','B0-01','CD�ػy��y','2017-02-24')

insert  �ۤ���ƪ�
	values('A0-04','���G�ƪ��H�`�����\','������','B0-02','CD�ػy��y','2017-04-07')

insert  �ۤ���ƪ�
	values('A0-05','�٬O�Q��','�a�a','B0-03','CD�ػy��y','2017-02-22')

insert  �ۤ���ƪ�
	values('A0-06','���d�ػ�','�d�ػ�','B0-04','CD�ػy��y','2017-02-24')

insert  �ۤ���ƪ�
	values('A0-07','�i�H��','����','B0-03','CD�ػy��y','2016-12-03')

insert  �ۤ���ƪ�
	values('A0-08','20�ʤO�����s�qDUET���','�ʤO����','B0-05','CD�ػy��y','2016-12-09')

insert  �ۤ���ƪ�
	values('A0-09','ť���ŤS��','�ŤS��','B0-06','CD�ػy��y','2016-12-06')

insert  �ۤ���ƪ�
	values('A0-10','�i�ɼ٤Q�~�������','�i�ɼ�','B0-07','CD�ػy��y','2016-11-18')

insert  �ۤ���ƪ�
	values('A0-11','Mr.Lucy(��â������)','����â','B0-08','CD�ػy��y','2016-10-21')

insert  �ۤ���ƪ�
	values('A0-12','�˷R�������g','���զw','B0-07','CD�ػy��y','2016-10-14')

insert  �ۤ���ƪ�
	values('A0-13','�~����(���������q�o��)','����Y','B0-09','CD�ػy��y','2016-10-04')

insert  �ۤ���ƪ�
	values('A0-14','�@�~9��USB��(������)','�����','B0-03','CD�ػy��y','2016-08-26')

insert  �ۤ���ƪ�
	values('A0-15','���ͪ�','���m','B0-10','CD�ػy�x�y','2016-12-30')

insert  �ۤ���ƪ�
	values('A0-16','���U�h','��E��','B0-11','CD�ػy�x�y','2016-04-14')

insert  �ۤ���ƪ�
	values('A0-17','��~���A�۳{','�ⶮ��','B0-12','CD�ػy�x�y','2016-08-12')
go

/*
�s�W�Ȥ��ƪ���Ƥ��e
*/
insert  �Ȥ��ƪ�
	values('C0-01','�����P','0978-556-321','�s�˿��s�׶m�s����289-1��','ticuo1123@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-02','�G���v','0945-556-456','�x�n�����w�m���w�|��11-2��','free1002@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-03','�I�ܤ�','0956-785-123','�y�������s��83��','goessew1125@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-04','�����','0965-452-345','�s�˿��s�˥����ڸ�2��11��','sadasd4568@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-05','�I�_��','0974-781-415','�򶩥��R�T��48��2��','dasdasd7895@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-06','���i�Y','0942-156-781','�Ÿq�����_��123��','fsdwtjh123@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-07','�L����','0954-645-789','�x�����s���ϰ�ڵ�124��','jhgjgh5631@hotmail.com')

insert  �Ȥ��ƪ�
	values('C0-08','�L���p','0931-451-322','�x�F���T����3�q110��','sdfdsfs4111@hotmail.com')

insert  �Ȥ��ƪ�
	(�Ȥ�s��,�Ȥ�m�W,�q��)
	values('C0-09','�L�H�^','0961-415-334')
go

/*
�s�W�s�@�o��Ӹ�ƪ���Ƥ��e
*/
insert  �s�@�o��Ӹ�ƪ�
	values('B0-01','��������','02-2987651','���ƿ����ƥ��M����43~45��','ddsaagh7777@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-02','�ؤl����','02-2923451','�x�_�����q��2�q507��','mmmvcbv789@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-03','�۫H����','02-7654221','�x�_�����s��564��','ooodede895@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-04','SONY MUSIC','03-1278943','�x�����F���Ϥ��s��78��','ggdsdsk74111@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-05','�ج㭵��','05-8763456','�s�_���g���Ϥ�����18��','sedwae5656@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-06','�w�խ���','03-4367890','�y����Ĭ�D���Z��78��','gdfgdfg111@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-07','�دǭ���','09-3456231','�s�_���O���ϥ��F��74��','lkjhh235@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-08','���N����','02-3456987','�x�_����߫n���@�q34��','fdsfdsf8988@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-09','EMI','03-4317894','��饫������853��','4342343@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-10','�̼֤h','05-4544899','�x�����R�w���T�q45��','dfsad1111@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-11','���֫�','04-7788906','���ƿ���¶m�s�}��23��','99955643@hotmail.com')

insert  �s�@�o��Ӹ�ƪ�
	values('B0-12','�֭Z','07-8856744','�x�_����Ƹ�18��','aaaa89065@hotmail.com')
go

/*
�s�W�ۤ��q���ƪ���Ƥ��e
*/
insert  �ۤ��q���ƪ�
	values('D0-01','A0-01','C0-06','2017-03-12','428','70')

insert  �ۤ��q���ƪ�
	values('D0-02','A0-03','C0-03','2017-03-01','428','50')

insert  �ۤ��q���ƪ�
	values('D0-03','A0-02','C0-05','2017-03-25','328','45')

insert  �ۤ��q���ƪ�
	values('D0-04','A0-04','C0-01','2017-04-08','398','32')

insert  �ۤ��q���ƪ�
	values('D0-05','A0-09','C0-04','2016-12-25','468','26')

insert  �ۤ��q���ƪ�
	values('D0-06','A0-06','C0-05','2017-03-25','428','90')

insert  �ۤ��q���ƪ�
	values('D0-07','A0-08','C0-07','2016-12-10','538','48')

insert  �ۤ��q���ƪ�
	values('D0-08','A0-07','C0-07','2016-12-03','448','89')

insert  �ۤ��q���ƪ�
	values('D0-09','A0-05','C0-06','2017-02-25','448','38')

insert  �ۤ��q���ƪ�
	values('D0-10','A0-10','C0-07','2016-11-30','448','77')

insert  �ۤ��q���ƪ�
	values('D0-11','A0-11','C0-02','2016-10-27','428','85')

insert  �ۤ��q���ƪ�
	values('D0-12','A0-12','C0-02','2016-12-25','428','100')

insert  �ۤ��q���ƪ�
	values('D0-13','A0-13','C0-05','2016-11-08','428','120')

insert  �ۤ��q���ƪ�
	values('D0-14','A0-14','C0-01','2016-09-16','1028','500')

insert  �ۤ��q���ƪ�
	values('D0-15','A0-15','C0-06','2017-01-15','358','340')

insert  �ۤ��q���ƪ�
	values('D0-16','A0-16','C0-06','2016-05-28','298','46')

insert  �ۤ��q���ƪ�
	values('D0-17','A0-17','C0-08','2016-10-19','318','90')

insert  �ۤ��q���ƪ�
	values('D0-18','A0-01','C0-05','2017-04-19','428','50')

insert  �ۤ��q���ƪ�
	values('D0-19','A0-01','C0-06','2017-04-25','428','79')

insert  �ۤ��q���ƪ�
	values('D0-20','A0-03','C0-03','2017-03-28','428','22')
go

/*
�������:�U��ƪ�إ����p�A�إߨ�FK
*/
alter  table �ۤ��q���ƪ�
	add constraint FK_�ۤ�_�q���ƪ�
		foreign key (�ۤ��s��) references �ۤ���ƪ�(�ۤ��s��)
		on update cascade
		on delete cascade

alter  table �ۤ���ƪ�
	add constraint FK_�s�@�o���_�ۤ���ƪ�
		foreign key (�s�@�o��ӽs��) references �s�@�o��Ӹ�ƪ�(�s�@�o��ӽs��)
		on update cascade
		on delete cascade

alter  table �ۤ��q���ƪ�
	add constraint FK_�Ȥ�_�ۤ��q���ƪ�
		foreign key (�Ȥ�s��) references �Ȥ��ƪ�(�Ȥ�s��)
		on update cascade
		on delete cascade
go

/*
�ק�ۤ���ƪ�B�s�@�o��Ӹ�ƪ�B�Ȥ��ƪ�B�ۤ��q���ƪ���Ƥ��e
*/
update �Ȥ��ƪ�
	Set �q�� ='0985-272-789'
	where �Ȥ�m�W = '���i�Y'

update �Ȥ��ƪ�
	Set �q�� = '0934-234-765'
	where �q�� = '0931-451-322'

update �s�@�o��Ӹ�ƪ�
	Set �s�@�o��ӦW�� = '�֭Z�ۤ�'
	where �s�@�o��ӽs�� = 'B0-12'

update �ۤ��q���ƪ�
	Set �ۤ��s�� = 'A0-15'
	where �q��s�� = 'D0-16'

update �ۤ��q���ƪ�
	Set �ۤ��s�� = 'A0-16'
	where �q��s�� = 'D0-15'

update �ۤ���ƪ�
	Set �ۤ��W�� = '�~����'
	where �q�� = '����Y'
go

/*
select���O(�]�tjoin)
*/

/*
110 �d�߭q����(�Ѧ����߱Ƨ�)
*/
select �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,�ۤ����,�ۤ��ƶq
	from �ۤ��q���ƪ�
	order by ��� asc
go

/*
120 �d�߰ۤ�����b300~500����
*/
select �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,�ۤ����,�ۤ��ƶq
	from �ۤ��q���ƪ�
	where �ۤ���� between 300 and 500
go

/*
130 �d�߰ۤ�����̰��e5�W�A����ۦP�i�W�B����
*/
select  Top 5 with ties �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,�ۤ����,�ۤ��ƶq
	from �ۤ��q���ƪ�
	order by �ۤ���� desc
go

/*
140 �d�߰ۤ��C���q���`���O�h�֡A���`�������C�Ƨ�
*/
select �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,(�ۤ����*�ۤ��ƶq)as �`��
	from �ۤ��q���ƪ�
	order by (�ۤ����*�ۤ��ƶq) desc
go

/*
150 �d�߰ۤ��C���q���`�����`���C�����i��ƦW
*/
select �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,(�ۤ����*�ۤ��ƶq)as �`��,
	rank() over (order by (�ۤ����*�ۤ��ƶq)) as OrderNo
	from �ۤ��q���ƪ�
	order by (�ۤ����*�ۤ��ƶq) 
go

/*
160 �d�߰ۤ��q���`�����`���C�����i����ձƦW(��4��)
*/
select �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,(�ۤ����*�ۤ��ƶq)as �`��,
	ntile(4) over (order by (�ۤ����*�ۤ��ƶq)) as OrderNo
	from �ۤ��q���ƪ�
	order by (�ۤ����*�ۤ��ƶq) 
go

/*
170 �d�߰ۤ��q���`���̰����e5�W
*/
select Top 5 �q��s��,�ۤ��s��,�Ȥ�s��,��� as �q����,(�ۤ����*�ۤ��ƶq)as �`��
	from �ۤ��q���ƪ�
	order by (�ۤ����*�ۤ��ƶq) desc
go

/*
210 �d�߰ۤ��s��:A0-01���~�q���`��
*/
select sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	from �ۤ��q���ƪ�
	where �ۤ��s�� ='A0-01' 
go

/*
220 �d�ߨC�i�ۤ����~�q���`��
*/
select �ۤ��s��,sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	from �ۤ��q���ƪ�
	group by �ۤ��s��
go

/*
230 �d�ߨC�i�ۤ����~�q���`���A�æC�X�ۤ�����ΰۤ��ƶq
*/
select �ۤ��s��,�ۤ����,�ۤ��ƶq, sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	from �ۤ��q���ƪ�
	group by �ۤ��s��,�ۤ����,�ۤ��ƶq with rollup 
go

/*
240 �d�߰ۤ����~�q���`���̰����e5�W
*/
select Top 5 �ۤ��s��, sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	from �ۤ��q���ƪ�
	group by �ۤ��s��
	order by sum(�ۤ����*�ۤ��ƶq) desc
go

/*
250 �d�߰ۤ����~�q���`���W�L100,000��
*/
select �ۤ��s��, sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	from �ۤ��q���ƪ�
	group by �ۤ��s�� having sum(�ۤ����*�ۤ��ƶq) > 100000

/*
310 �ۤ���ƪ�P�s�@�o��Ӹ�ƪ����p�i��d��(�̻s�@�o��ӽs���Ƨ�)
*/
select �ۤ��s��,�ۤ��W��,�q��,�o����,A.�s�@�o��ӽs��,�s�@�o��ӦW��,�q�� as �s�@�o��ӹq��
	from �ۤ���ƪ� A join �s�@�o��Ӹ�ƪ� B on B.�s�@�o��ӽs�� = A.�s�@�o��ӽs��
	order by A.�s�@�o��ӽs��
go

/*
320 �ۤ���ƪ�B�ۤ��q���ƪ�B�Ȥ��ƪ����p�i��d��(�̭q��s���Ƨ�)
*/
select �q��s��,A.�ۤ��s��,�ۤ��W��,�q��,��� as �q����,�ۤ����,�ۤ��ƶq,D.�Ȥ�s��,�Ȥ�m�W,�q�� as �Ȥ�q��
	from �ۤ���ƪ� A 
	join �ۤ��q���ƪ� D on D.�ۤ��s�� = A.�ۤ��s��
	join �Ȥ��ƪ� C on  C.�Ȥ�s�� = D.�Ȥ�s��
	order by �q��s��
go

/*
330 �ۤ���ƪ�B�ۤ��q���ƪ�B�Ȥ��ƪ����p�i��d��(�̫Ȥ�s���Ƨ�,�A�̧ǭq��s���Ƨ�)
*/
select D.�Ȥ�s��,�Ȥ�m�W,�q�� as �Ȥ�q��,�q��s��,A.�ۤ��s��,�ۤ��W��,�q��,��� as �q����,�ۤ����,�ۤ��ƶq
	from �ۤ���ƪ� A 
	join �ۤ��q���ƪ� D on D.�ۤ��s�� = A.�ۤ��s��
	join �Ȥ��ƪ� C on  C.�Ȥ�s�� = D.�Ȥ�s��
	order by �Ȥ�s��,�q��s��
go

/*
340 �ۤ���ƪ�B�ۤ��q���ƪ�B�Ȥ��ƪ�B�s�@�o��Ӹ�ƪ����p�i��d��(�̭q��s���Ƨ�)
*/
select �q��s��,��� as �q����,D.�Ȥ�s��,�Ȥ�m�W,A.�ۤ��s��,�ۤ��W��,�q��,A.�s�@�o��ӽs��,�s�@�o��ӦW��,�ۤ����,�ۤ��ƶq
	from �ۤ���ƪ� A 
	join �ۤ��q���ƪ� D on D.�ۤ��s�� = A.�ۤ��s��
	join �Ȥ��ƪ� C on  C.�Ȥ�s�� = D.�Ȥ�s��
	join �s�@�o��Ӹ�ƪ� B on B.�s�@�o��ӽs�� = A.�s�@�o��ӽs��
	order by �q��s��
go

/*
350 �d�߫Ȥ��ƪ��Ҧ��Ȥ�A�w�U�q���ǭq��A�q�椺�e�O����H�å]�t�S���q�ʲ��~���Ȥ�
*/
select  C.�Ȥ�s��,�Ȥ�m�W,�q�� as �Ȥ�q��,�q��s��,�ۤ��s��,��� as �q����,�ۤ����,�ۤ��ƶq
	from �Ȥ��ƪ� C
	left join �ۤ��q���ƪ� D on D.�Ȥ�s�� = C.�Ȥ�s��
	order by �Ȥ�s��,�q��s��
go

/*
410 �g�ѥثe��ƪ�d�ߨC�i�ۤ�������B���~�q��ƶq�B�ۤ����~�q���`��(�ݥ]�t�ۤ��s���B�ۤ��W�١B�q��)

410-1 �ۤ���ƪ�P�ۤ��q���ƪ����p�i��d��(�̰ۤ��s���Ƨ�)�ú�X���`����A
      �Ȧs��temp1��ƪ�A�çQ�μȦstemp1��ƪ��X�C�i�ۤ����~�q���`���A�æs����ƪ�"�ۤ����~�q���`����"
*/
select A.�ۤ��s��,�q��s��,�ۤ��W��,���,�ۤ����,�ۤ��ƶq,(�ۤ����*�ۤ��ƶq) as �`��
	into #temp1
	from �ۤ���ƪ� A join �ۤ��q���ƪ� D on D.�ۤ��s�� = A.�ۤ��s��
	order by A.�ۤ��s��
	 
select �ۤ��s��,sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	into �ۤ����~�q���`����
	from #temp1
	group by  �ۤ��s��
go

/*
410-2 �ۤ����~�q���`����]�w�ۤ��s����primary key�A�ḛ̀ۤ��s���P�ۤ���ƪ�i�����p
*/
alter table �ۤ����~�q���`����
	add primary key(�ۤ��s��)

alter  table �ۤ����~�q���`����
	add constraint FK_�ۤ�_�ۤ����~�q���`����
		foreign key (�ۤ��s��) references �ۤ���ƪ�(�ۤ��s��)
		on update cascade
		on delete cascade
go

/*
410-3 �ۤ����~�q���`����P�ۤ���ƪ����p�i��d�ߡA�æs�ܼȦs��ƪ�temp2
*/
select P.�ۤ��s��,�ۤ��W��,�q��,�ۤ����~�q���`��
	into #temp2
	from �ۤ����~�q���`���� P
	join �ۤ���ƪ� A on A.�ۤ��s�� = P.�ۤ��s��
go

/*
410-4 �ۤ��q���ƪ�P�ۤ���ƪ����p�i��d�ߡA�æs�ܼȦs��ƪ�temp3�A
      �i�o�C�i�ۤ�������A�B��distinct�N�����ۦP���O���R���A�u�d�@���O��
*/
select distinct D.�ۤ��s��,�ۤ��W��,�ۤ����
	into #temp3
	from �ۤ��q���ƪ� D
	join �ۤ���ƪ� A on A.�ۤ��s�� = D.�ۤ��s��
	order by �ۤ��s��
go

/*
410-5 �Ȧs��ƪ�temp2��temp3�i�����p�d�ߡA�Ǧ��o�X�C�i�ۤ�������B���~�q��ƶq�B�ۤ����~�q���`��
*/
select T2.�ۤ��s��,T2.�ۤ��W��,�q��,�ۤ����,(�ۤ����~�q���`��/�ۤ����) as �ۤ����~�q��ƶq,�ۤ����~�q���`��
	from #temp2 T2
	left join #temp3 T3 on T3.�ۤ��s�� = T2.�ۤ��s�� 
	order by �ۤ��s��
go

/*
420 �ЦC�X�q�椤���ۤ��s���B�q��s���B����B�ۤ�����B�ۤ��ƶq�B(�ۤ����*�ۤ��ƶq)�B
    �ۤ��s�������~�q���`��
*/
select �ۤ��s��,sum(�ۤ����*�ۤ��ƶq) as �ۤ����~�q���`��
	from �ۤ��q���ƪ�
	group by �ۤ��s��
	 
select �ۤ��s��,�q��s��,��� as �q����,�ۤ����,�ۤ��ƶq,(�ۤ����*�ۤ��ƶq) as �`��,
	(select sum(�ۤ����*�ۤ��ƶq) from �ۤ��q���ƪ� where �ۤ��s�� = D.�ۤ��s��) as �ۤ����~�q���`��
	from �ۤ��q���ƪ� D
	order by �ۤ��s��

/*
430 �C�X�s�@�o���:�۫H���ֵo�椧�ۤ�
*/
select �s�@�o��ӽs��
	from �s�@�o��Ӹ�ƪ�
	where �s�@�o��ӦW�� = '�۫H����'

select *
	from �ۤ���ƪ� 
	where �s�@�o��ӽs�� = (select �s�@�o��ӽs�� from �s�@�o��Ӹ�ƪ� where �s�@�o��ӦW�� = '�۫H����')

/*
440 �C�X�s�@�o���:�������ֵo�椧�ۤ����q��
*/
select * from �ۤ��q���ƪ�

select �s�@�o��ӽs��
	from �s�@�o��Ӹ�ƪ�
	where �s�@�o��ӦW�� = '��������'

select �ۤ��s��
	from �ۤ���ƪ�
	where �s�@�o��ӽs�� = (select �s�@�o��ӽs�� from �s�@�o��Ӹ�ƪ� where �s�@�o��ӦW�� = '��������')

select *
	from �ۤ��q���ƪ�
	where �ۤ��s�� in (select �ۤ��s�� from �ۤ���ƪ� where �s�@�o��ӽs�� = (select �s�@�o��ӽs�� from �s�@�o��Ӹ�ƪ� where �s�@�o��ӦW�� = '��������'))

/*
450 �ЦC�X��o�̦n�e3�W�ۤ��C
*/
select * from �ۤ��q���ƪ�

select �ۤ��s��, sum(�ۤ��ƶq)
	from �ۤ��q���ƪ�
	group by �ۤ��s��

select �ۤ��s��, sum(�ۤ��ƶq) as �ۤ��`�q
	from �ۤ��q���ƪ�
	group by �ۤ��s��
	order by sum(�ۤ��ƶq) desc

select top 3 �ۤ��s��, sum(�ۤ��ƶq) as �ۤ��`�q
	from �ۤ��q���ƪ�
	group by �ۤ��s��
	order by sum(�ۤ��ƶq) desc

select top 3 �ۤ��s��
	from �ۤ��q���ƪ�
	group by �ۤ��s��
	order by sum(�ۤ��ƶq) desc

select * 
	from �ۤ���ƪ�
	where �ۤ��s�� in 
	(select top 3 �ۤ��s�� from �ۤ��q���ƪ� group by �ۤ��s�� order by sum(�ۤ��ƶq) desc)

/*
�������:�U��ƪ�������p
*/
alter  table �ۤ���ƪ�
	drop constraint FK_�s�@�o���_�ۤ���ƪ�

alter  table �ۤ��q���ƪ�
	drop constraint FK_�ۤ�_�q���ƪ�

alter  table �ۤ��q���ƪ�
	drop constraint FK_�Ȥ�_�ۤ��q���ƪ�

alter  table �ۤ����~�q���`����
	drop constraint FK_�ۤ�_�ۤ����~�q���`����
go

/*
�������:nocheck
*/
alter table �ۤ��q���ƪ�
	nocheck  constraint  chk_�ۤ����

alter table �ۤ��q���ƪ�
	nocheck  constraint  chk_�ۤ��ƶq

alter table �ۤ��q���ƪ�
	nocheck constraint chk_�ۤ��ΫȤ�s��		

alter table �Ȥ��ƪ�
	nocheck constraint chk_�Ȥ�m�W�ιq��

alter table �s�@�o��Ӹ�ƪ�
	nocheck constraint chk_�s�@�o��ӦW�٤ιq��

alter table �ۤ���ƪ�
	nocheck constraint chk_�ۤ���ƪ�
go

/*
�R���ۤ���ƪ�B�Ȥ��ƪ�B�ۤ��q���ƪ�������Ƥ��e
*/
delete �ۤ���ƪ�
	where �ۤ��s�� = 'A0-17' 

delete �ۤ��q���ƪ�
	where  �ۤ��ƶq < 30

delete �Ȥ��ƪ�
	where �Ȥ�m�W like '%��'

delete �ۤ���ƪ�
	where �ۤ��s�� in ('A0-08','A0-10')
go

/*
�R���ۤ���ƪ�B�s�@�o��Ӹ�ƪ�B�Ȥ��ƪ�B�ۤ��q���ƪ�B�ۤ����~�q���`����������Ƥ��e
*/
truncate table �ۤ���ƪ�
truncate table �s�@�o��Ӹ�ƪ�
truncate table �Ȥ��ƪ�
truncate table �ۤ��q���ƪ�
truncate table �ۤ����~�q���`����
go

/*
�R���ۤ���ƪ�B�s�@�o��Ӹ�ƪ�B�Ȥ��ƪ�B�ۤ��q���ƪ�B�ۤ����~�q���`����
*/
drop table �ۤ���ƪ�
drop table �s�@�o��Ӹ�ƪ�
drop table �Ȥ��ƪ�
drop table �ۤ��q���ƪ�
drop table �ۤ����~�q���`����
go

/*
�ϥ�master��Ʈw
*/
use master
go

/*
�R���ۤ���Ʈw
*/
drop database �ۤ�
go