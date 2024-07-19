-- テーブル1を作成
CREATE TABLE table1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- テーブル2を作成
CREATE TABLE table2 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    table1_id INTEGER REFERENCES table1(id)
);

-- テーブル3を作成
CREATE TABLE table3 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    table2_id INTEGER REFERENCES table2(id)
);

-- テーブル4を作成
CREATE TABLE table4 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);