delete from Money_Trans;
delete from Sales_Expenditures;
delete from Publisher;
delete from Address;
delete from Check_Out;
delete from Regested_User;
delete from User_Book;
delete from Store_Book;

insert into Store_Book values ('The FiveOrange Pipes','Arthur Conan Doyle','1-86092-031-4','Crime','Good Publisher','14','','','80');
insert into Store_Book values ('The FiveOrange Pipes: Old Version','Katherine Mansfield','1-86092-038-4','Classic','Nice Publisher','17','','','100');
insert into Store_Book values ('A Chance for Mr Enemy','Thomas Hardy','1-86092-041-4','Crime','Another Publisher','15','','','50');
insert into Store_Book values ('A Chance for Mr Lever','Graham Greene','1-86092-021-7','Classic','Good Publisher','20','','','45');
insert into Store_Book values ('A Mere Interlude','Thomas Hardy','1-86092-045-4','Romance','New Publisher','22','','','30');
insert into Store_Book values ('The Dancing Partner: Clocks','Jerome K. Jerome','1-86092-050-0','Comedy','Old Publisher','17','','','70');

insert into User_Book values ('The FiveOrange Pipes','Arthur Conan Doyle','1-86092-031-4','Crime','Good Publisher','300','28');
insert into User_Book values ('The FiveOrange Pipes: Old Version','Katherine Mansfield','1-86092-038-4','Classic','Nice Publisher','400','34');
insert into User_Book values ('A Chance for Mr Enemy','Thomas Hardy','1-86092-041-4','Crime','Another Publisher','260','30');
insert into User_Book values ('A Chance for Mr Lever','Graham Greene','1-86092-021-7','Classic','Good Publisher','480','40');
insert into User_Book values ('A Mere Interlude','Thomas Hardy','1-86092-045-4','Romance','New Publisher','700','44');
insert into User_Book values ('The Dancing Partner: Clocks','Jerome K. Jerome','1-86092-050-0','Comedy','Old Publisher','500','34');

insert into Regested_User values ('11111','Amy');
insert into Regested_User values ('22222','Bob');
insert into Regested_User values ('33333','Chris');
insert into Regested_User values ('44444','Dave');
insert into Regested_User values ('55555','Eva');

insert into Check_Out values ('11111','1-86092-031-4','0001','warehouse','20211207','UPS','Mia');

insert into Address values ('User','ON','Ottawa','30 Southgate rd','K1VT9Y','11111');
insert into Address values ('Shipping','ON','Ottawa','60 South rd','K1VK0U','11111');
insert into Address values ('User','ON','Ottawa','76 Westgate rd','K1VG8R','22222');
insert into Address values ('User','ON','Ottawa','43 Northgate rd','K1VS6E','33333');
insert into Address values ('User','ON','Ottawa','25 Eastgate rd','K1VP0V','44444');
insert into Address values ('User','ON','Ottawa','90 Greengate rd','K1VX2U','55555');

insert into Publisher values ('Good Publisher','11 GoodPublisher rd, Ottawa, ON, K1V1G1','GoodPublisher@gmail.com','1-613-263-1122','12341234');
insert into Publisher values ('Nice Publisher','11 NicePublisher rd, Ottawa, ON, K1V2N2','NicePublisher@gmail.com','1-613-263-2233','34563456');
insert into Publisher values ('Another Publisher','11 AnotherPublisher rd, Ottawa, ON, K1V3A3','AnotherPublisher@gmail.com','1-613-263-3344','56785678');
insert into Publisher values ('New Publisher','11 NewPublisher rd, Ottawa, ON, K1V4N4','NewPublisher@gmail.com','1-613-263-4455','78907890');
insert into Publisher values ('Old Publisher','11 OldPublisher rd, Ottawa, ON, K1V5O5','OldPublisher@gmail.com','1-613-263-5566','43214321');

insert into Sales_Expenditures values ('Crime','','1870');
insert into Sales_Expenditures values ('Classic','','2600');
insert into Sales_Expenditures values ('Romance','','660');
insert into Sales_Expenditures values ('Comedy','','1190');
insert into Sales_Expenditures values ('Arthur Conan Doyle','','1120');
insert into Sales_Expenditures values ('Katherine Mansfield','','1700');
insert into Sales_Expenditures values ('Graham Greene','','900');
insert into Sales_Expenditures values ('Thomas Hardy','','1410');
insert into Sales_Expenditures values ('Jerome K. Jerome','','1190');

insert into Money_Trans values ('Good Publisher','1-86092-031-4','5');
insert into Money_Trans values ('Nice Publisher','1-86092-038-4','7');
insert into Money_Trans values ('Another Publisher','1-86092-041-4','10');
insert into Money_Trans values ('Good Publisher','1-86092-021-7','6');
insert into Money_Trans values ('New Publisher','1-86092-045-4','15');
insert into Money_Trans values ('Old Publisher','1-86092-050-0','12');