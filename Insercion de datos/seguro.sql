USE seguros_db;
START TRANSACTION;

insert into seguro (id_seg, id_inst, nombre) values ('6149', '3426', 'Crist, Abbott and Kuhlman');
insert into seguro (id_seg, id_inst, nombre) values ('7699', '3426', 'Monahan-Lindgren');
insert into seguro (id_seg, id_inst, nombre) values ('9632', '6290', 'Zulauf-Tillman');
insert into seguro (id_seg, id_inst, nombre) values ('6716', '6290', 'Zulauf-Cruickshank');
insert into seguro (id_seg, id_inst, nombre) values ('3993', '1101', 'Schuppe-Shanahan');
SAVEPOINT seguro1;
insert into seguro (id_seg, id_inst, nombre) values ('7436', '1101', 'Baumbach, Casper and Kirlin');
insert into seguro (id_seg, id_inst, nombre) values ('0250', '8423', 'McDermott Inc');
insert into seguro (id_seg, id_inst, nombre) values ('7746', '8423', 'Friesen-Kris');
insert into seguro (id_seg, id_inst, nombre) values ('0471', '2860', 'Heaney Group');
insert into seguro (id_seg, id_inst, nombre) values ('1586', '2860', 'Dooley, Metz and Legros');
SAVEPOINT seguro2;
insert into seguro (id_seg, id_inst, nombre) values ('5673', '0776', 'Gusikowski-Steuber');
insert into seguro (id_seg, id_inst, nombre) values ('3979', '0776', 'Stehr LLC');
insert into seguro (id_seg, id_inst, nombre) values ('8676', '1364', 'Koss-Halvorson');
insert into seguro (id_seg, id_inst, nombre) values ('4634', '1364', 'Reichel, Kulas and Rogahn');
insert into seguro (id_seg, id_inst, nombre) values ('4698', '2068', 'Champlin, Schroeder and Adams');
SAVEPOINT seguro3;
insert into seguro (id_seg, id_inst, nombre) values ('7427', '2068', 'Will Group');
insert into seguro (id_seg, id_inst, nombre) values ('4402', '2746', 'Wehner-Hamill');
insert into seguro (id_seg, id_inst, nombre) values ('1688', '2746', 'Cummerata, Leuschke and Mante');
insert into seguro (id_seg, id_inst, nombre) values ('2021', '4495', 'Kessler LLC');
insert into seguro (id_seg, id_inst, nombre) values ('2179', '4495', 'Kozey, Macejkovic and Ledner');
SAVEPOINT seguro4;

COMMIT;