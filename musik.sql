create table song (
 song_id number(10) not null,
 title varchar(255) NOT NULL,
 genre varchar(255),
 language varchar(255) NOT NULL,
 album varchar(255) NOT NULL,
 PRIMARY KEY(song_id)
);


create table artist (
 artist_id number(10) not null,
 name varchar(255) NOT NULL,
 PRIMARY KEY(artist_id)
);

create table song_artist (
 song_id number(10) not null,
 artist_id number(10) not null,
 PRIMARY KEY (song_id, artist_id),
 constraint song_artist_fk_1 foreign key (song_id) references song (song_id),
 constraint song_artist_fk_2 foreign key (artist_id) references artist (artist_id)
);

create table master_codes (
 id number(10) not null,
 value varchar(255) NOT NULL,
 type varchar(255) NOT NULL,
 PRIMARY KEY(id)
);

create sequence song_seq
minvalue 1
start with 10
increment by 1
cache 10;

create sequence artist_seq
minvalue 1
start with 10
increment by 1
cache 10;


insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'German', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Japanese', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Russian', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Portuguese', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Bengali', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Hindi', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Kannada', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'English', 'language');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Spanish', 'language');


insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Heavy Metal', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Rock n Roll', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Hard Rock', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Alternatice', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Classical', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Punk Rock', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Pop', 'genre');
insert into master_codes values (MASTER_CODES_SEQ.NEXTVAL, 'Blues', 'genre');