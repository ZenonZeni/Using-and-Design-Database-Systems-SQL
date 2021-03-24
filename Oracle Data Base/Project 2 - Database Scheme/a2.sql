
drop table airline_S;

drop table is_accommodated;

drop table visit;

drop table principal;

drop table representative_S;

drop table regular;

drop table is_booked;

drop table touroperator;

drop table guest_I;

drop table room;

drop table service_I;

drop table building_i;

drop table resturant;

create table touroperator(toid char(6), cname char(15), phone char(10),
primary key(toid));

create table airline_S(Aname char(10), website char(100), phone char(10), toid char(6) not null,
primary key (Aname), foreign key (toid) references touroperator on delete cascade);

create table representative_S (rid char(6), rname char(15), phone char(10), toid char(6) not null, mid char(9),
primary key(rid), foreign key (toid) references touroperator, 
foreign key (mid) references representative_S (rid) on delete set null);

create table building_i (bnum char(6), category char(15), b_view char(15),  
primary key(bnum));

create table room (Rnum char(6), bnum char(6), nbed INTEGER check (nbed>0 AND nbed<=3), 
category char(10) check(category in ('standard','luxary','executive')),
primary key(Rnum, bnum), foreign key (bnum) references building_i on delete cascade);

create table guest_I(GID char(6), Gname char(15), Address char(15), 
primary key(GID));

create table is_accommodated (Rnum char(6), GID char(6), bnum char(6),
primary key(Rnum,bnum,GID), foreign key (Rnum,bnum) references room (Rnum, bnum), foreign key (GID) references guest_I);

create table principal(GID char(6),  creditcard char(16), rid char(6) not null,
primary key(GID), foreign key (GID) references guest_I on delete cascade, 
foreign key (rid) references representative_S);

create table regular(GID char(6), status char(16),
primary key(GID), foreign key (GID) references guest_I on delete cascade);

create table service_I(SID char(6), title char(15), fee number check (fee>= 0 AND fee<=200),
primary key(SID));

create table is_booked(SID char(6), GID char(6), Rnum char(6), bnum char(6), sdate date, 
primary key (SID, GID, Rnum, bnum), foreign key (SID) references service_I,
foreign key (GID) references guest_I,
foreign key (Rnum, bnum) references room);

create table resturant(Restid char(6), Rname char(15), Rtype char(5), theme char(15),
primary key (Restid));

create table visit(VID char(6), Vdate date, Mtype char(15), GID char(6) not null, Restid char(6) not null,
primary key (VID), foreign key (GID) references guest_I, foreign key (Restid) references resturant);