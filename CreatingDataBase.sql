/*
建造唱片資料庫
*/
create database 唱片
go

/*
使用唱片資料庫
*/
use 唱片
go

/*
建立唱片資料表、製作發行商資料表、客戶資料表、唱片訂單資料表並建立各資料表PK(條件約束)
*/
create table 唱片資料表
(
	唱片編號 char(5) primary key,
	唱片名稱 nvarchar(20),
	歌手 nvarchar(10),
	製作發行商編號 char(5),
	音樂類型 nvarchar(10),
	發行日期 date
)
go

create table 製作發行商資料表
(
	製作發行商編號 char(5) primary key,
	製作發行商名稱 nvarchar(20),
	電話 varchar(15) ,
	住址 nvarchar(30),
	[E-mail] varchar(30)
)
go

create table 客戶資料表
(
	客戶編號 char(5) primary key,
	客戶姓名 nvarchar(10),
	電話 varchar(15) ,
	住址 nvarchar(30),
	[E-mail] varchar(30)
)
go

create table 唱片訂單資料表
(
	訂單編號 char(5) primary key,
	唱片編號 char(5),
	客戶編號 char(5),
	日期 date,
	唱片單價 int,
	唱片數量 int
)
go

/*
條件約束:check
*/
alter table 唱片訂單資料表
	add constraint chk_唱片單價
		check (唱片單價 >= 0)

alter table 唱片訂單資料表
	add constraint chk_唱片數量
		check (唱片數量 >= 0)

alter table 唱片訂單資料表
	add constraint chk_唱片及客戶編號
		check  (唱片編號 is not Null and 客戶編號 is not Null)

alter table 客戶資料表
	add constraint chk_客戶姓名及電話
		check  (客戶姓名 is not Null and 電話 is not Null)

alter table 製作發行商資料表
	add constraint chk_製作發行商名稱及電話
		check  (製作發行商名稱 is not Null and 電話 is not Null)

alter table 唱片資料表
	add constraint chk_唱片資料表
		check  ( 唱片名稱 is not Null and  製作發行商編號 is not Null)
go

/*
新增唱片資料表的資料內容
*/
insert  唱片資料表
	(唱片編號,唱片名稱,歌手,製作發行商編號,音樂類型,發行日期)
values
	('A0-01','愛又愛','By2','B0-01','CD華語國語','2017-03-03')

insert  唱片資料表
	(唱片編號,唱片名稱,歌手,製作發行商編號,音樂類型,發行日期)
values
	('A0-02','九年','潘裕文','B0-01','CD華語國語EP','2017-03-21')

insert  唱片資料表
	(唱片編號,唱片名稱,歌手,製作發行商編號,音樂類型,發行日期)
values
	('A0-03','你的名字','郭美美','B0-01','CD華語國語','2017-02-24')

insert  唱片資料表
	values('A0-04','說故事的人總掉眼淚','黃雅莉','B0-02','CD華語國語','2017-04-07')

insert  唱片資料表
	values('A0-05','還是想念','家家','B0-03','CD華語國語','2017-02-22')

insert  唱片資料表
	values('A0-06','精選吳建豪','吳建豪','B0-04','CD華語國語','2017-02-24')

insert  唱片資料表
	values('A0-07','可以唷','鼓鼓','B0-03','CD華語國語','2016-12-03')

insert  唱片資料表
	values('A0-08','20動力火車新歌DUET精選','動力火車','B0-05','CD華語國語','2016-12-09')

insert  唱片資料表
	values('A0-09','聽說藍又時','藍又時','B0-06','CD華語國語','2016-12-06')

insert  唱片資料表
	values('A0-10','張棟樑十年有成精選','張棟樑','B0-07','CD華語國語','2016-11-18')

insert  唱片資料表
	values('A0-11','Mr.Lucy(玉璽正式版)','李玉璽','B0-08','CD華語國語','2016-10-21')

insert  唱片資料表
	values('A0-12','親愛的偏執狂','陳勢安','B0-07','CD華語國語','2016-10-14')

insert  唱片資料表
	values('A0-13','年輪說(正式版限量發行)','楊丞琳','B0-09','CD華語國語','2016-10-04')

insert  唱片資料表
	values('A0-14','作品9號USB版(正式版)','五月天','B0-03','CD華語國語','2016-08-26')

insert  唱片資料表
	values('A0-15','雙生花','黃妃','B0-10','CD華語台語','2016-12-30')

insert  唱片資料表
	values('A0-16','走下去','伍浩哲','B0-11','CD華語台語','2016-04-14')

insert  唱片資料表
	values('A0-17','何年何月再相逢','詹雅雯','B0-12','CD華語台語','2016-08-12')
go

/*
新增客戶資料表的資料內容
*/
insert  客戶資料表
	values('C0-01','童昕致','0978-556-321','新竹縣新豐鄉新興路289-1號','ticuo1123@hotmail.com')

insert  客戶資料表
	values('C0-02','鄭佑鈞','0945-556-456','台南縣仁德鄉仁德四街11-2號','free1002@hotmail.com')

insert  客戶資料表
	values('C0-03','施至引','0956-785-123','宜蘭縣中山路83號','goessew1125@hotmail.com')

insert  客戶資料表
	values('C0-04','李攻至','0965-452-345','新竹縣新竹市民族路2號11樓','sadasd4568@hotmail.com')

insert  客戶資料表
	values('C0-05','施奇媺','0974-781-415','基隆市愛三路48號2樓','dasdasd7895@hotmail.com')

insert  客戶資料表
	values('C0-06','李可欣','0942-156-781','嘉義縣光復路123號','fsdwtjh123@hotmail.com')

insert  客戶資料表
	values('C0-07','林風祐','0954-645-789','台中市龍井區國際街124號','jhgjgh5631@hotmail.com')

insert  客戶資料表
	values('C0-08','林輝峰','0931-451-322','台東縣三民路3段110號','sdfdsfs4111@hotmail.com')

insert  客戶資料表
	(客戶編號,客戶姓名,電話)
	values('C0-09','林信回','0961-415-334')
go

/*
新增製作發行商資料表的資料內容
*/
insert  製作發行商資料表
	values('B0-01','海蝶音樂','02-2987651','彰化縣彰化市和平路43~45號','ddsaagh7777@hotmail.com')

insert  製作發行商資料表
	values('B0-02','種子音樂','02-2923451','台北市公益路2段507號','mmmvcbv789@hotmail.com')

insert  製作發行商資料表
	values('B0-03','相信音樂','02-7654221','台北市中山路564號','ooodede895@hotmail.com')

insert  製作發行商資料表
	values('B0-04','SONY MUSIC','03-1278943','台中市沙鹿區中山路78號','ggdsdsk74111@hotmail.com')

insert  製作發行商資料表
	values('B0-05','華研音樂','05-8763456','新北市土城區中正路18號','sedwae5656@hotmail.com')

insert  製作發行商資料表
	values('B0-06','泡耳音樂','03-4367890','宜蘭縣蘇澳鎮精武路78號','gdfgdfg111@hotmail.com')

insert  製作發行商資料表
	values('B0-07','華納音樂','09-3456231','新北市板橋區市政路74號','lkjhh235@hotmail.com')

insert  製作發行商資料表
	values('B0-08','老鷹音樂','02-3456987','台北市文心南路一段34號','fdsfdsf8988@hotmail.com')

insert  製作發行商資料表
	values('B0-09','EMI','03-4317894','桃園市市府路853號','4342343@hotmail.com')

insert  製作發行商資料表
	values('B0-10','米樂士','05-4544899','台中市崇德路三段45號','dfsad1111@hotmail.com')

insert  製作發行商資料表
	values('B0-11','美樂帝','04-7788906','彰化縣花壇鄉山腳路23號','99955643@hotmail.com')

insert  製作發行商資料表
	values('B0-12','福茂','07-8856744','台北市文化路18號','aaaa89065@hotmail.com')
go

/*
新增唱片訂單資料表的資料內容
*/
insert  唱片訂單資料表
	values('D0-01','A0-01','C0-06','2017-03-12','428','70')

insert  唱片訂單資料表
	values('D0-02','A0-03','C0-03','2017-03-01','428','50')

insert  唱片訂單資料表
	values('D0-03','A0-02','C0-05','2017-03-25','328','45')

insert  唱片訂單資料表
	values('D0-04','A0-04','C0-01','2017-04-08','398','32')

insert  唱片訂單資料表
	values('D0-05','A0-09','C0-04','2016-12-25','468','26')

insert  唱片訂單資料表
	values('D0-06','A0-06','C0-05','2017-03-25','428','90')

insert  唱片訂單資料表
	values('D0-07','A0-08','C0-07','2016-12-10','538','48')

insert  唱片訂單資料表
	values('D0-08','A0-07','C0-07','2016-12-03','448','89')

insert  唱片訂單資料表
	values('D0-09','A0-05','C0-06','2017-02-25','448','38')

insert  唱片訂單資料表
	values('D0-10','A0-10','C0-07','2016-11-30','448','77')

insert  唱片訂單資料表
	values('D0-11','A0-11','C0-02','2016-10-27','428','85')

insert  唱片訂單資料表
	values('D0-12','A0-12','C0-02','2016-12-25','428','100')

insert  唱片訂單資料表
	values('D0-13','A0-13','C0-05','2016-11-08','428','120')

insert  唱片訂單資料表
	values('D0-14','A0-14','C0-01','2016-09-16','1028','500')

insert  唱片訂單資料表
	values('D0-15','A0-15','C0-06','2017-01-15','358','340')

insert  唱片訂單資料表
	values('D0-16','A0-16','C0-06','2016-05-28','298','46')

insert  唱片訂單資料表
	values('D0-17','A0-17','C0-08','2016-10-19','318','90')

insert  唱片訂單資料表
	values('D0-18','A0-01','C0-05','2017-04-19','428','50')

insert  唱片訂單資料表
	values('D0-19','A0-01','C0-06','2017-04-25','428','79')

insert  唱片訂單資料表
	values('D0-20','A0-03','C0-03','2017-03-28','428','22')
go

/*
條件約束:各資料表建立關聯，建立其FK
*/
alter  table 唱片訂單資料表
	add constraint FK_唱片_訂單資料表
		foreign key (唱片編號) references 唱片資料表(唱片編號)
		on update cascade
		on delete cascade

alter  table 唱片資料表
	add constraint FK_製作發行商_唱片資料表
		foreign key (製作發行商編號) references 製作發行商資料表(製作發行商編號)
		on update cascade
		on delete cascade

alter  table 唱片訂單資料表
	add constraint FK_客戶_唱片訂單資料表
		foreign key (客戶編號) references 客戶資料表(客戶編號)
		on update cascade
		on delete cascade
go

/*
修改唱片資料表、製作發行商資料表、客戶資料表、唱片訂單資料表的資料內容
*/
update 客戶資料表
	Set 電話 ='0985-272-789'
	where 客戶姓名 = '李可欣'

update 客戶資料表
	Set 電話 = '0934-234-765'
	where 電話 = '0931-451-322'

update 製作發行商資料表
	Set 製作發行商名稱 = '福茂唱片'
	where 製作發行商編號 = 'B0-12'

update 唱片訂單資料表
	Set 唱片編號 = 'A0-15'
	where 訂單編號 = 'D0-16'

update 唱片訂單資料表
	Set 唱片編號 = 'A0-16'
	where 訂單編號 = 'D0-15'

update 唱片資料表
	Set 唱片名稱 = '年輪說'
	where 歌手 = '楊丞琳'
go

/*
select指令(包含join)
*/

/*
110 查詢訂單日期(由早→晚排序)
*/
select 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,唱片單價,唱片數量
	from 唱片訂單資料表
	order by 日期 asc
go

/*
120 查詢唱片單價在300~500之間
*/
select 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,唱片單價,唱片數量
	from 唱片訂單資料表
	where 唱片單價 between 300 and 500
go

/*
130 查詢唱片單價最高前5名，單價相同可增額錄取
*/
select  Top 5 with ties 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,唱片單價,唱片數量
	from 唱片訂單資料表
	order by 唱片單價 desc
go

/*
140 查詢唱片每筆訂單總價是多少，由總價高→低排序
*/
select 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,(唱片單價*唱片數量)as 總價
	from 唱片訂單資料表
	order by (唱片單價*唱片數量) desc
go

/*
150 查詢唱片每筆訂單總價由總價低→高進行排名
*/
select 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,(唱片單價*唱片數量)as 總價,
	rank() over (order by (唱片單價*唱片數量)) as OrderNo
	from 唱片訂單資料表
	order by (唱片單價*唱片數量) 
go

/*
160 查詢唱片訂單總價由總價低→高進行分組排名(分4組)
*/
select 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,(唱片單價*唱片數量)as 總價,
	ntile(4) over (order by (唱片單價*唱片數量)) as OrderNo
	from 唱片訂單資料表
	order by (唱片單價*唱片數量) 
go

/*
170 查詢唱片訂單總價最高之前5名
*/
select Top 5 訂單編號,唱片編號,客戶編號,日期 as 訂單日期,(唱片單價*唱片數量)as 總價
	from 唱片訂單資料表
	order by (唱片單價*唱片數量) desc
go

/*
210 查詢唱片編號:A0-01歷年訂單總價
*/
select sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	from 唱片訂單資料表
	where 唱片編號 ='A0-01' 
go

/*
220 查詢每張唱片歷年訂單總價
*/
select 唱片編號,sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	from 唱片訂單資料表
	group by 唱片編號
go

/*
230 查詢每張唱片歷年訂單總價，並列出唱片單價及唱片數量
*/
select 唱片編號,唱片單價,唱片數量, sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	from 唱片訂單資料表
	group by 唱片編號,唱片單價,唱片數量 with rollup 
go

/*
240 查詢唱片歷年訂單總價最高之前5名
*/
select Top 5 唱片編號, sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	from 唱片訂單資料表
	group by 唱片編號
	order by sum(唱片單價*唱片數量) desc
go

/*
250 查詢唱片歷年訂單總價超過100,000元
*/
select 唱片編號, sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	from 唱片訂單資料表
	group by 唱片編號 having sum(唱片單價*唱片數量) > 100000

/*
310 唱片資料表與製作發行商資料表關聯進行查詢(依製作發行商編號排序)
*/
select 唱片編號,唱片名稱,歌手,發行日期,A.製作發行商編號,製作發行商名稱,電話 as 製作發行商電話
	from 唱片資料表 A join 製作發行商資料表 B on B.製作發行商編號 = A.製作發行商編號
	order by A.製作發行商編號
go

/*
320 唱片資料表、唱片訂單資料表、客戶資料表關聯進行查詢(依訂單編號排序)
*/
select 訂單編號,A.唱片編號,唱片名稱,歌手,日期 as 訂單日期,唱片單價,唱片數量,D.客戶編號,客戶姓名,電話 as 客戶電話
	from 唱片資料表 A 
	join 唱片訂單資料表 D on D.唱片編號 = A.唱片編號
	join 客戶資料表 C on  C.客戶編號 = D.客戶編號
	order by 訂單編號
go

/*
330 唱片資料表、唱片訂單資料表、客戶資料表關聯進行查詢(依客戶編號排序,再依序訂單編號排序)
*/
select D.客戶編號,客戶姓名,電話 as 客戶電話,訂單編號,A.唱片編號,唱片名稱,歌手,日期 as 訂單日期,唱片單價,唱片數量
	from 唱片資料表 A 
	join 唱片訂單資料表 D on D.唱片編號 = A.唱片編號
	join 客戶資料表 C on  C.客戶編號 = D.客戶編號
	order by 客戶編號,訂單編號
go

/*
340 唱片資料表、唱片訂單資料表、客戶資料表、製作發行商資料表關聯進行查詢(依訂單編號排序)
*/
select 訂單編號,日期 as 訂單日期,D.客戶編號,客戶姓名,A.唱片編號,唱片名稱,歌手,A.製作發行商編號,製作發行商名稱,唱片單價,唱片數量
	from 唱片資料表 A 
	join 唱片訂單資料表 D on D.唱片編號 = A.唱片編號
	join 客戶資料表 C on  C.客戶編號 = D.客戶編號
	join 製作發行商資料表 B on B.製作發行商編號 = A.製作發行商編號
	order by 訂單編號
go

/*
350 查詢客戶資料表的所有客戶，已下訂哪些訂單，訂單內容是什麼？並包含沒有訂購產品之客戶
*/
select  C.客戶編號,客戶姓名,電話 as 客戶電話,訂單編號,唱片編號,日期 as 訂單日期,唱片單價,唱片數量
	from 客戶資料表 C
	left join 唱片訂單資料表 D on D.客戶編號 = C.客戶編號
	order by 客戶編號,訂單編號
go

/*
410 經由目前資料表查詢每張唱片之單價、歷年訂單數量、唱片歷年訂單總價(需包含唱片編號、唱片名稱、歌手)

410-1 唱片資料表與唱片訂單資料表關聯進行查詢(依唱片編號排序)並算出其總價後，
      暫存至temp1資料表，並利用暫存temp1資料表算出每張唱片歷年訂單總價，並存成資料表"唱片歷年訂單總價表"
*/
select A.唱片編號,訂單編號,唱片名稱,日期,唱片單價,唱片數量,(唱片單價*唱片數量) as 總價
	into #temp1
	from 唱片資料表 A join 唱片訂單資料表 D on D.唱片編號 = A.唱片編號
	order by A.唱片編號
	 
select 唱片編號,sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	into 唱片歷年訂單總價表
	from #temp1
	group by  唱片編號
go

/*
410-2 唱片歷年訂單總價表設定唱片編號為primary key，並依唱片編號與唱片資料表進行關聯
*/
alter table 唱片歷年訂單總價表
	add primary key(唱片編號)

alter  table 唱片歷年訂單總價表
	add constraint FK_唱片_唱片歷年訂單總價表
		foreign key (唱片編號) references 唱片資料表(唱片編號)
		on update cascade
		on delete cascade
go

/*
410-3 唱片歷年訂單總價表與唱片資料表關聯進行查詢，並存至暫存資料表temp2
*/
select P.唱片編號,唱片名稱,歌手,唱片歷年訂單總價
	into #temp2
	from 唱片歷年訂單總價表 P
	join 唱片資料表 A on A.唱片編號 = P.唱片編號
go

/*
410-4 唱片訂單資料表與唱片資料表關聯進行查詢，並存至暫存資料表temp3，
      可得每張唱片之單價，運用distinct將完全相同之記錄刪除，只留一筆記錄
*/
select distinct D.唱片編號,唱片名稱,唱片單價
	into #temp3
	from 唱片訂單資料表 D
	join 唱片資料表 A on A.唱片編號 = D.唱片編號
	order by 唱片編號
go

/*
410-5 暫存資料表temp2及temp3進行關聯查詢，藉此得出每張唱片之單價、歷年訂單數量、唱片歷年訂單總價
*/
select T2.唱片編號,T2.唱片名稱,歌手,唱片單價,(唱片歷年訂單總價/唱片單價) as 唱片歷年訂單數量,唱片歷年訂單總價
	from #temp2 T2
	left join #temp3 T3 on T3.唱片編號 = T2.唱片編號 
	order by 唱片編號
go

/*
420 請列出訂單中的唱片編號、訂單編號、日期、唱片單價、唱片數量、(唱片單價*唱片數量)、
    唱片編號的歷年訂單總價
*/
select 唱片編號,sum(唱片單價*唱片數量) as 唱片歷年訂單總價
	from 唱片訂單資料表
	group by 唱片編號
	 
select 唱片編號,訂單編號,日期 as 訂單日期,唱片單價,唱片數量,(唱片單價*唱片數量) as 總價,
	(select sum(唱片單價*唱片數量) from 唱片訂單資料表 where 唱片編號 = D.唱片編號) as 唱片歷年訂單總價
	from 唱片訂單資料表 D
	order by 唱片編號

/*
430 列出製作發行商:相信音樂發行之唱片
*/
select 製作發行商編號
	from 製作發行商資料表
	where 製作發行商名稱 = '相信音樂'

select *
	from 唱片資料表 
	where 製作發行商編號 = (select 製作發行商編號 from 製作發行商資料表 where 製作發行商名稱 = '相信音樂')

/*
440 列出製作發行商:海蝶音樂發行之唱片之訂單
*/
select * from 唱片訂單資料表

select 製作發行商編號
	from 製作發行商資料表
	where 製作發行商名稱 = '海蝶音樂'

select 唱片編號
	from 唱片資料表
	where 製作發行商編號 = (select 製作發行商編號 from 製作發行商資料表 where 製作發行商名稱 = '海蝶音樂')

select *
	from 唱片訂單資料表
	where 唱片編號 in (select 唱片編號 from 唱片資料表 where 製作發行商編號 = (select 製作發行商編號 from 製作發行商資料表 where 製作發行商名稱 = '海蝶音樂'))

/*
450 請列出賣得最好前3名唱片。
*/
select * from 唱片訂單資料表

select 唱片編號, sum(唱片數量)
	from 唱片訂單資料表
	group by 唱片編號

select 唱片編號, sum(唱片數量) as 唱片總量
	from 唱片訂單資料表
	group by 唱片編號
	order by sum(唱片數量) desc

select top 3 唱片編號, sum(唱片數量) as 唱片總量
	from 唱片訂單資料表
	group by 唱片編號
	order by sum(唱片數量) desc

select top 3 唱片編號
	from 唱片訂單資料表
	group by 唱片編號
	order by sum(唱片數量) desc

select * 
	from 唱片資料表
	where 唱片編號 in 
	(select top 3 唱片編號 from 唱片訂單資料表 group by 唱片編號 order by sum(唱片數量) desc)

/*
條件約束:各資料表取消關聯
*/
alter  table 唱片資料表
	drop constraint FK_製作發行商_唱片資料表

alter  table 唱片訂單資料表
	drop constraint FK_唱片_訂單資料表

alter  table 唱片訂單資料表
	drop constraint FK_客戶_唱片訂單資料表

alter  table 唱片歷年訂單總價表
	drop constraint FK_唱片_唱片歷年訂單總價表
go

/*
條件約束:nocheck
*/
alter table 唱片訂單資料表
	nocheck  constraint  chk_唱片單價

alter table 唱片訂單資料表
	nocheck  constraint  chk_唱片數量

alter table 唱片訂單資料表
	nocheck constraint chk_唱片及客戶編號		

alter table 客戶資料表
	nocheck constraint chk_客戶姓名及電話

alter table 製作發行商資料表
	nocheck constraint chk_製作發行商名稱及電話

alter table 唱片資料表
	nocheck constraint chk_唱片資料表
go

/*
刪除唱片資料表、客戶資料表、唱片訂單資料表的部分資料內容
*/
delete 唱片資料表
	where 唱片編號 = 'A0-17' 

delete 唱片訂單資料表
	where  唱片數量 < 30

delete 客戶資料表
	where 客戶姓名 like '%祐'

delete 唱片資料表
	where 唱片編號 in ('A0-08','A0-10')
go

/*
刪除唱片資料表、製作發行商資料表、客戶資料表、唱片訂單資料表、唱片歷年訂單總價表的全部資料內容
*/
truncate table 唱片資料表
truncate table 製作發行商資料表
truncate table 客戶資料表
truncate table 唱片訂單資料表
truncate table 唱片歷年訂單總價表
go

/*
刪除唱片資料表、製作發行商資料表、客戶資料表、唱片訂單資料表、唱片歷年訂單總價表
*/
drop table 唱片資料表
drop table 製作發行商資料表
drop table 客戶資料表
drop table 唱片訂單資料表
drop table 唱片歷年訂單總價表
go

/*
使用master資料庫
*/
use master
go

/*
刪除唱片資料庫
*/
drop database 唱片
go