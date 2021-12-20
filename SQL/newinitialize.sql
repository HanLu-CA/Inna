delete from Sale_expense;
delete from Publisher;
delete from Postcode;
delete from Address;
delete from Purchase_item;
delete from Check_Out;
delete from Regested_User;
delete from Book;

insert into Store_Book values ('1-86092-031-4','The FiveOrange Pipes','Arthur Conan Doyle','Crime','Good Publisher','14','28','80','5','asdfghjkl','556');
insert into Store_Book values ('1-86092-038-4','The FiveOrange Pipes: Old Version','Katherine Mansfield','Classic','Nice Publisher','17','34','70','6','ertyuio','877');
insert into Store_Book values ('1-86092-041-4','A Chance for Mr Enemy','Thomas Hardy','Crime','Another Publisher','15','30','100','7','jhgfd','334');
insert into Store_Book values ('1-86092-021-7','A Chance for Mr Lever','Graham Greene','Classic','Good Publisher','20','40','30','8','uytrrew','567');
insert into Store_Book values ('1-86092-045-4','A Mere Interlude','Thomas Hardy','Romance','New Publisher','22','44','40','9','mnbvcx','765');
insert into Store_Book values ('1-86092-050-0','The Dancing Partner: Clocks','Jerome K. Jerome','Comedy','Old Publisher','17','34','60','10','zxcvb','234');

insert into Regested_User values ('11111','Amy','12345','0');
insert into Regested_User values ('22222','Bob','23456','0');
insert into Regested_User values ('33333','Chris','34567','0');
insert into Regested_User values ('44444','Dave','45678','0');
insert into Regested_User values ('55555','Manager','56789','1');

insert into Postcode values ('K1V3N6','ON','Ottawa');
insert into Postcode values ('K1V1M2','ON','Toronto');
insert into Postcode values ('K2E6K7','BC','Vancouver');
insert into Postcode values ('K2E8L4','BC','Victoria');

insert into Publisher values ('Good Publisher','11 GoodPublisher rd, Ottawa, ON, K1V1G1','GoodPublisher@gmail.com','1-613-263-1122','12341234');
insert into Publisher values ('Nice Publisher','11 NicePublisher rd, Ottawa, ON, K1V2N2','NicePublisher@gmail.com','1-613-263-2233','34563456');
insert into Publisher values ('Another Publisher','11 AnotherPublisher rd, Ottawa, ON, K1V3A3','AnotherPublisher@gmail.com','1-613-263-3344','56785678');
insert into Publisher values ('New Publisher','11 NewPublisher rd, Ottawa, ON, K1V4N4','NewPublisher@gmail.com','1-613-263-4455','78907890');
insert into Publisher values ('Old Publisher','11 OldPublisher rd, Ottawa, ON, K1V5O5','OldPublisher@gmail.com','1-613-263-5566','43214321');
