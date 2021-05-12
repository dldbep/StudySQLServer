--조회명령문
SELECT memberID,memberName 
FROM memberTBL
where memberID = 'sung';

--select productName, cost, company from productTBL;

--입력명령문
insert into memberTBL
values ('Bang', '방문식','부산시 진구');