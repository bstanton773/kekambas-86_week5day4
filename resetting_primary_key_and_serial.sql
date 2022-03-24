CREATE TABLE test123(
	test_id SERIAL PRIMARY KEY,
	test_name VARCHAR(10)
);

INSERT INTO test123(test_name) VALUES('test1'), ('test2'), ('test3'), ('test4');


SELECT * FROM test123;


ALTER SEQUENCE test123_test_id_seq
RESTART WITH 100;

INSERT INTO test123(test_name) VALUES('test100'), ('test200'), ('test300'), ('test400');

SELECT * FROM test123 ORDER BY test_id;


ALTER SEQUENCE test123_test_id_seq
RESTART WITH 1;


INSERT INTO test123(test_name) VALUES('test123');


INSERT INTO test123(test_id, test_name) VALUES(6, 'test6');


INSERT INTO test123(test_name) VALUES('testtest');


ALTER TABLE test123 
ADD COLUMN new_pk SERIAL ;


ALTER TABLE test123 
DROP CONSTRAINT test123_pkey;

ALTER TABLE test123 
ADD CONSTRAINT test123_pkey PRIMARY KEY (new_pk);


ALTER TABLE test123 
DROP COLUMN IF EXISTS test_id;

ALTER TABLE test123 
RENAME COLUMN new_pk TO test_id;

SELECT * 
FROM test123
