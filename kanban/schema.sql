drop table if exists users;

create table users (
  id integer primary key autoincrement,
  name text not null,
  email text not null unique
);

drop table if exists boards;
create table boards (
  id integer primary key autoincrement,
  name text not null,
  description text,
  foreign key (author_id) references users(id)
);
