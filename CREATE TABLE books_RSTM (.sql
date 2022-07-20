CREATE TABLE books_RSTM (
    ID  INT PRIMARY KEY,
    TITLE TEXT,
    GENRE TEXT,
    AUTHOR TEXT,
    QTY INTEGER
)

CREATE TABLE USER___RSTM (
    ID TEXT,
    FNAME TEXT,
    LNAME TEXT,
    EMAIL VARCHAR(100) UNIQUE NOT NULL
);
ALTER TABLE USER___RSTM
MODIFY COLUMN EMAIL VARCHAR(100) UNIQUE NOT NULL 

CREATE TABLE CHECKOUT___rstm(
    ID INT PRIMARY KEY,
  books_ID INTEGER,
  USER_ID INTEGER,
  CECHOUT_DATE TEXT,
  RETURN_DATE DATETIME,
  FOREIGN KEY (books_ID) REFERENCES
  books_rstm(ID),
  FOREIGN KEY (USER_ID) REFERENCES
  USER___RSTM(ID)
);

insert into books_rstm (id, TITLE, GENRE, AUTHOR)
values (1, "the old man and the sea", "fiction", "ernest hemingway" )

select * from books_rstm

update books_rstm
set qty = 1000
where id = 1

insert into books_rstm
values
(2, "tuesday with maury", "fiction", "mitch albom", 2000), 
(3, "rich dad poor dad", "self help", "robert kiyosaki", 200 ),
(4, "tales of 2 cities", "fiction", "charles dickens", 1 )

select TITLE
from books_rstm
where genre = 'fiction'

select TITLE
from books_rstm
where genre in ('fiction', "self help")