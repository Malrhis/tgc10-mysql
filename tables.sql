create database sales

create TABLE salespersons (
    id int unsigned auto_increment primary key,
    name varchar(200) not null,
    comission_rate float not null
) engine=innodb;

create TABLE closed_deals (
    id int unsigned auto_increment primary key,
    deal_size float not null,
    customer_name varchar(100) not null,
    product_name varchar(100) not null,
    salesperson_id int unsigned not null,
    foreign key(salesperson_id) references salespersons(id)
) engine=innodb;

create database tv_shows;

CREATE TABLE tv_series(
    show_id int unsigned auto_increment primary key not null,
    series_name varchar(45) not null,
    plot_summary text not null
) engine=innodb;

CREATE TABLE episodes(
    episode_id int unsigned auto_increment primary key not null,
    title varchar(45) not null,
    duration int not null,
    synopsis text not null,
    show_id int unsigned not null,
    foreign key (show_id) references tv_series(show_id)
)engine=innodb;

INSERT INTO tv_series (series_name,plot_summary)
VALUES ('Days of Our Lives','Long winded and does not make sense'),
        ('Star Trek: Discovery', 'Scientific mumbo-jumbo')

INSERT INTO episodes (title,duration,synopsis,show_id)
VALUES('Episode 1: Jean fell in love with Dave',180,'Jean met Dave at school and they both fell in love.',1),
        ('Episode 101: Jean met Dave Mk 2',185,'Jean realized that the Dave she knew all along was actually the twin brother of the real Dave.',1),
        ('Episode 1: Michael Burnham starts a war',240,'Michael hated Klingons and purposely started a war to kill them.',2);