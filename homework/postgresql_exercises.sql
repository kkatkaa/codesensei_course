CREATE DATABASE
  computer_store;
CREATE DATABASE

CREATE TABLE manufacturers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL);
CREATE TABLE

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL ,
  price REAL NOT NULL ,
  manufacturer_id INTEGER NOT NULL,
  FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id));
CREATE TABLE

SELECT * FROM manufacturers;
id | name
----+------
(0 rows)

SELECT * FROM products;
id | name | price | manufacturer_id
----+------+-------+-----------------
(0 rows)

kasia=> INSERT INTO manufacturers (name) VALUES ('Sony');
INSERT 0 1
kasia=> INSERT INTO manufacturers (name) VALUES ('Creative Labs');
INSERT 0 1
kasia=> INSERT INTO manufacturers (name) VALUES ('Hewlett-Packard');
INSERT 0 1
kasia=> INSERT INTO manufacturers (name) VALUES ('Iomega');
INSERT 0 1
kasia=> INSERT INTO manufacturers (name) VALUES ('Fujitsu');
INSERT 0 1
kasia=> INSERT INTO manufacturers (name) VALUES ('Winchester');
INSERT 0 1
kasia=> INSERT INTO manufacturers (name) VALUES ('Apple');

SELECT * FROM manufacturers;
id |      name
----+-----------------
 1 | Sony
 2 | Creative Labs
 3 | Hewlett-Packard
 4 | Iomega
 5 | Fujitsu
 6 | Winchester
 7 | Apple
(7 rows)

kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('Hard drive', 240, 5);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('Memory', 120, 6);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('ZIP drive', 150, 4);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('Floppy disk', 5, 6);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('Monitor', 240, 1);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('DVD drive', 180, 2);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('CD drive', 90, 2);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('Printer', 270, 3);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('Toner cartridge', 66, 3);
INSERT 0 1
kasia=> INSERT INTO products (name, price, manufacturer_id) VALUES ('DVD burner', 180, 2);
INSERT 0 1

SELECT * FROM products;
id |      name       | price | manufacturer_id
----+-----------------+-------+-----------------
 1 | Hard drive      |   240 |               5
 2 | Memory          |   120 |               6
 3 | ZIP drive       |   150 |               4
 4 | Floppy disk     |     5 |               6
 5 | Monitor         |   240 |               1
 6 | DVD drive       |   180 |               2
 7 | CD drive        |    90 |               2
 8 | Printer         |   270 |               3
 9 | Toner cartridge |    66 |               3
10 | DVD burner      |   180 |               2
(10 rows)

1. Wyświetl nazwy wszystkich produktów dostępnych w sklepie.

SELECT name FROM products;
      name
-----------------
 Hard drive
 Memory
 ZIP drive
 Floppy disk
 Monitor
 DVD drive
 CD drive
 Printer
 Toner cartridge
 DVD burner
(10 rows)

2. Wyświetl nazwy oraz ceny wszystkich produktów dostępnych w sklepie.

SELECT name, price FROM products;
      name       | price
-----------------+-------
 Hard drive      |   240
 Memory          |   120
 ZIP drive       |   150
 Floppy disk     |     5
 Monitor         |   240
 DVD drive       |   180
 CD drive        |    90
 Printer         |   270
 Toner cartridge |    66
 DVD burner      |   180
(10 rows)

3. Wyświetl nazwy wszystkich produktów których cena jest mniejsza lub równa 200.

SELECT name FROM products WHERE price <= 200;
      name
-----------------
 Memory
 ZIP drive
 Floppy disk
 DVD drive
 CD drive
 Toner cartridge
 DVD burner
(7 rows)

4. Wyświetl wszystkie produkty, których cena zawiera się w przedziale 60..120.

SELECT * FROM products WHERE price BETWEEN 60 AND 120;
 id |      name       | price | manufacturer_id
----+-----------------+-------+-----------------
  2 | Memory          |   120 |               6
  7 | CD drive        |    90 |               2
  9 | Toner cartridge |    66 |               3
(3 rows)

5. Wyświetl nazwy oraz ceny w groszach wszystkich produktów dostępnych w sklepie
(ceny powinny zostać pomnożone przez 100).

SELECT name, (price * 100) AS groszy FROM products;
      name       | groszy
-----------------+--------
 Hard drive      |  24000
 Memory          |  12000
 ZIP drive       |  15000
 Floppy disk     |    500
 Monitor         |  24000
 DVD drive       |  18000
 CD drive        |   9000
 Printer         |  27000
 Toner cartridge |   6600
 DVD burner      |  18000
(10 rows)

6. Oblicz średnią cenę z wszystkich produktów.

SELECT SUM (price) / COUNT (name) AS srednia FROM products;
 srednia
---------
   154.1

7. Oblicz średnią cenę z wszystkich produktów, które zostały wyprodukowane przez
producenta o id 2.

SELECT SUM (price) / COUNT (name) AS srednia_2 FROM products WHERE manufacturer_id = 2;
 srednia_2
-----------
       150

8. Oblicz ilość produktów, których cena jest większa bądź równa 180.

SELECT COUNT (*) FROM products WHERE price >= 180;
 count
-------
     5

9. Wyświetl nazwy i ceny produktów, których cena jest większa bądź równa 180.
Wyniki posortuj po cenie (malejąco) oraz po nazwie (rosnąco).

SELECT name, price FROM products WHERE price >= 180 ORDER BY price DESC, name ASC;
    name    | price
------------+-------
 Printer    |   270
 Hard drive |   240
 Monitor    |   240
 DVD burner |   180
 DVD drive  |   180
(5 rows)

10. Wyświetl wszystkie dane o produktach oraz odpowiadających im producentach.

SELECT * FROM products, manufacturers WHERE manufacturer_id = manufacturers.id;
 id |      name       | price | manufacturer_id | id |      name
----+-----------------+-------+-----------------+----+-----------------
  1 | Hard drive      |   240 |               5 |  5 | Fujitsu
  2 | Memory          |   120 |               6 |  6 | Winchester
  3 | ZIP drive       |   150 |               4 |  4 | Iomega
  4 | Floppy disk     |     5 |               6 |  6 | Winchester
  5 | Monitor         |   240 |               1 |  1 | Sony
  6 | DVD drive       |   180 |               2 |  2 | Creative Labs
  7 | CD drive        |    90 |               2 |  2 | Creative Labs
  8 | Printer         |   270 |               3 |  3 | Hewlett-Packard
  9 | Toner cartridge |    66 |               3 |  3 | Hewlett-Packard
 10 | DVD burner      |   180 |               2 |  2 | Creative Labs

 11. Wyświetl nazwę, cenę oraz nazwę producenta wszystkich produktów dostępnych w sklepie.

 SELECT products.name, products.price, manufacturers.name FROM products,manufacturers WHERE manufacturer_id = manufacturers.id;
       name       | price |      name
 -----------------+-------+-----------------
  Hard drive      |   240 | Fujitsu
  Memory          |   120 | Winchester
  ZIP drive       |   150 | Iomega
  Floppy disk     |     5 | Winchester
  Monitor         |   240 | Sony
  DVD drive       |   180 | Creative Labs
  CD drive        |    90 | Creative Labs
  Printer         |   270 | Hewlett-Packard
  Toner cartridge |    66 | Hewlett-Packard
  DVD burner      |   180 | Creative Labs

12. Wyświetl średnią cenę produktów dla każdego producenta oraz jego id.

SELECT manufacturers.id, AVG (price) FROM products INNER JOIN manufacturers ON manufacturer_id = manufacturers.id GROUP BY manufacturers.id;
 id | avg
----+------
  2 |  150
  3 |  168
  5 |  240
  4 |  150
  6 | 62.5
  1 |  240
  (6 rows)

13. Wyświetl średnią cenę produktów dla każdego producenta oraz jego nazwę.

SELECT manufacturers.name, AVG (price) FROM products INNER JOIN manufacturers ON manufacturer_id = manufacturers.id GROUP BY manufacturers.id;
      name       | avg
-----------------+------
 Creative Labs   |  150
 Hewlett-Packard |  168
 Fujitsu         |  240
 Iomega          |  150
 Winchester      | 62.5
 Sony            |  240
(6 rows)

14. Wyświetl nazwy producentów których produkty mają średnią cenę większą bądź
równą 150.
SELECT manufacturers.name, AVG (price) FROM products INNER JOIN manufacturers ON manufacturer_id = manufacturers.id  GROUP BY manufacturers.id HAVING AVG (price) >= 150 ;
      name       | avg
-----------------+-----
 Creative Labs   | 150
 Hewlett-Packard | 168
 Fujitsu         | 240
 Iomega          | 150
 Sony            | 240
(5 rows)

15. Wyświetl nazwę oraz cenę najtańszego produktu w sklepie.

SELECT name, price FROM products ORDER BY price LIMIT 1;
    name     | price
-------------+-------
 Floppy disk |     5
(1 row)

16. Wyświetl nazwę każdego producenta wraz z nazwą oraz ceną najdroższego produktu
tego producenta.

SELECT manufacturers.name, products.name, price  FROM manufacturers INNER JOIN products ON manufacturers.id = products.manufacturer_id WHERE price IN SELECT MAX (price) FROM manufacturers INNER JOIN products ON manufacturers.id = products.manufacturer_id GROUP BY manufacturers.name);

name       |     name      | price
-----------------+---------------+--------
Winchester      | Memory        |    120
Iomega          | ZIP drive     |    150
Sony            | Monitor       |    240
Creative Labs   | DVD drive     |    180
Creative Labs   | DVD burner    |    180
Hewlett-Packard | Printer       |    270
Fujitsu         | Hard drive    |    240
(7 rows)

17.Wyświetl nazwy producentów, dla których sklep nie posiada produktów.

SELECT manufacturers.name FROM manufacturers LEFT JOIN products ON manufacturers.id = manufacturer_id WHERE products IS NUll;
 name
-------
 Apple
(1 row)

18. Dodaj nowy produkt przypisany do producenta o id 2 z danymi: Loudspeakers, 70.

INSERT INTO products (name, price, manufacturer_id) VALUES ('Loudspeakers', 70, 2);
INSERT 0 1

19.Zaktualizuj nazwę produktu o id 8 na Laser Printer.

UPDATE products SET name = 'Laser Printer' WHERE id = 8;
UPDATE 1

SELECT * FROM products;
 id |      name       | price | manufacturer_id
----+-----------------+-------+-----------------
  1 | Hard drive      |   240 |               5
  2 | Memory          |   120 |               6
  3 | ZIP drive       |   150 |               4
  4 | Floppy disk     |     5 |               6
  5 | Monitor         |   240 |               1
  6 | DVD drive       |   180 |               2
  7 | CD drive        |    90 |               2
  9 | Toner cartridge |    66 |               3
 10 | DVD burner      |   180 |               2
 11 | Loudspeakers    |    70 |               2
  8 | Laser Printer   |   270 |               3
(11 rows)

20. Zaktualizuj ceny wszystkich produktów o rabat 10%.

UPDATE products SET price = price - (price * 0.1);

SELECT * FROM products;
 id |      name       | price | manufacturer_id
----+-----------------+-------+-----------------
  2 | Memory          |   108 |               6
  3 | ZIP drive       |   135 |               4
  4 | Floppy disk     |   4.5 |               6
  5 | Monitor         |   216 |               1
  6 | DVD drive       |   162 |               2
  7 | CD drive        |    81 |               2
  9 | Toner cartridge |  59.4 |               3
 10 | DVD burner      |   162 |               2
 11 | Loudspeakers    |    63 |               2
  8 | Laser Printer   |   243 |               3
  1 | Hard drive      |   216 |               5
(11 rows)

21. Obniż o 10% cenę wszystkich produktów droższych od 120.

UPDATE products SET price = price - (price * 0.1) WHERE price > 120;
UPDATE 6

SELECT * FROM products;
id |      name       | price  | manufacturer_id
----+-----------------+--------+-----------------
 2 | Memory          |    108 |               6
 4 | Floppy disk     |    4.5 |               6
 7 | CD drive        |     81 |               2
 9 | Toner cartridge |   59.4 |               3
11 | Loudspeakers    |     63 |               2
 3 | ZIP drive       |  121.5 |               4
 5 | Monitor         |  194.4 |               1
 6 | DVD drive       |  145.8 |               2
10 | DVD burner      |  145.8 |               2
 8 | Laser Printer   |  218.7 |               3
 1 | Hard drive      | 174.96 |               5
(11 rows)
