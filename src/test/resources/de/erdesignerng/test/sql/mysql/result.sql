CREATE TABLE table1 (
    tb2_1 VARCHAR(20) NOT NULL,
    tb2_2 VARCHAR(100) DEFAULT 'A',
    tb2_3 DECIMAL(20,5) NOT NULL
);
CREATE UNIQUE INDEX Tabl11_idx1 ON table1 (tb2_2);
CREATE INDEX Tabl11_idx2 ON table1 (tb2_3);
CREATE INDEX FK1 ON table1 (tb2_1);
CREATE TABLE table2 (
    tb3_1 VARCHAR(20) NOT NULL,
    tb3_2 VARCHAR(100) DEFAULT 'A',
    tb3_3 DECIMAL(20,5) NOT NULL
);
ALTER TABLE table2 ADD CONSTRAINT PK_table2 PRIMARY KEY(tb3_1);
CREATE VIEW view1 AS select `mogwai`.`table1`.`tb2_1` AS `tb2_1`,`mogwai`.`table1`.`tb2_2` AS `tb2_2`,`mogwai`.`table1`.`tb2_3` AS `tb2_3` from `mogwai`.`table1`;
ALTER TABLE table1 ADD CONSTRAINT FK1 FOREIGN KEY (tb2_1) REFERENCES table2(tb3_1) ON DELETE NO ACTION ON UPDATE NO ACTION;