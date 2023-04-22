REM   Script: EndTerm
REM   ENDTERM

CREATE TABLE addresses ( 
  address_id INT PRIMARY KEY, 
  street     VARCHAR(100) NOT NULL, 
  house_number  VARCHAR(50)NOT NULL, 
  flat_number  VARCHAR(50), 
  floor      INT, 
  entrance_number VARCHAR(50) 
);

CREATE TABLE Users ( 
    id INT PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(50) UNIQUE NOT NULL, 
    password VARCHAR(50) NOT NULL, 
    phone_number VARCHAR(50) NOT NULL, 
    address_id INT, 
    FOREIGN KEY (address_id) REFERENCES addresses(ADDRESS_ID) 
) organization index;

CREATE TABLE Categories ( 
    id INT PRIMARY KEY, 
    title VARCHAR(50) NOT NULL, 
    parent_id INT 
) organization index;

CREATE TABLE Products ( 
    id INT PRIMARY KEY, 
    title VARCHAR(50) NOT NULL, 
    description VARCHAR(50), 
    price DECIMAL(10, 2) NOT NULL, 
    rating DECIMAL(5, 2),  
    total_quantity INT NOT NULL,  
    image_url VARCHAR(50),  
    category_id INT, 
    FOREIGN KEY (category_id) REFERENCES categories (id) 
);

CREATE TABLE Employees ( 
    id INT Primary key,  
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL,  
    phone_number VARCHAR(50) NOT NULL 
);

CREATE TABLE Order_statuses ( 
    id INT Primary key,  
    slug VARCHAR(50) NOT NULL,  
    name VARCHAR(50) NOT NULL 
);

CREATE TABLE reviews (  
    id INT PRIMARY KEY,  
    title VARCHAR(50) NOT NULL,  
    description VARCHAR(50) NOT NULL,  
    user_id INT NOT NULL,  
    product_id INT NOT NULL,  
    rating INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES users(id)  
);

ALTER TABLE reviews 
ADD CONSTRAINT fk_product_id 
FOREIGN KEY (product_id) 
REFERENCES products (id);

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (1, 'Pushkin street', '10', '5', '2', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
	(2, 'Abay avenue', '100', '30', '1', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (3, 'Satpaev street', '50', '12', '3', '3'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (4, 'Baitursynov street', '20', '8', '2', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (5, 'Furmanov street', '70', '15', '1', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (6, 'Gogol street', '15', '4', '4', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (7, 'Dostyk avenue', '120', '7', '3', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (8, 'Shevchenko street', '25', '9', '2', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (9, 'Masanchi street', '40', '11', '1', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (10, 'Auezov street', '80', '3', '3', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (11, 'Zhambyl street', '5', '6', '2', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (12, 'Kabanbay Batyr street', '30', '14', '1', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (13, 'Seifullin avenue', '90', '25', '4', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (14, 'Kurmangazy street', '55', '2', '2', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (15, 'Zhibek Zholy street', '18', '10', '3', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
    (16, 'Tole bi street', '65', '18', '2', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (17, 'Abylay Khan avenue', '110', '23', '1', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (18, 'Timiryazev street', '35', '1', '4', '1'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
     (19, 'Suyunbay street', '75', '5', '3', '2'); 
END; 
/

BEGIN 
INSERT INTO addresses (ADDRESS_ID, STREET, HOUSE_NUMBER, FLAT_NUMBER, FLOOR, ENTRANCE_NUMBER) 
VALUES 
      (20, 'Kazibek bi street', '22', '22', '2', '1'); 
END; 
/

BEGIN 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (1, 'John', 'Doe', 'john.doe@example.com', 'password1', '555-1234', 1); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (2, 'Jane', 'Smith', 'jane.smith@example.com', 'password2', '555-5678', 2); 
END; 
 
  
/

BEGIN 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES    
   (3, 'Bob', 'Johnson', 'bob.johnson@example.com', 'password3', '555-9012', 3); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (4, 'Mary', 'Wilson', 'mary.wilson@example.com', 'password4', '555-3456', 4); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (5, 'Tom', 'Davis', 'tom.davis@example.com', 'password5', '555-7890', 5); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (6, 'Samantha', 'Miller', 'samantha.miller@example.com', 'password6', '555-2345', 6); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (7, 'James', 'Taylor', 'james.taylor@example.com', 'password7', '555-6789', 7); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (8, 'Linda', 'Anderson', 'linda.anderson@example.com', 'password8', '555-0123', 8); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (9, 'David', 'Brown', 'david.brown@example.com', 'password9', '555-4567', 9); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (10, 'Emily', 'Clark', 'emily.clark@example.com', 'password10', '555-8901', 10); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (11, 'Michael', 'Garcia', 'michael.garcia@example.com', 'password11', '555-2345', 11); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (12, 'Jessica', 'Martinez', 'jessica.martinez@example.com', 'password12', '555-6789', 12); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (13, 'Daniel', 'Lopez', 'daniel.lopez@example.com', 'password13', '555-0123', 13); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (14, 'Ashley', 'Hernandez', 'ashley.hernandez@example.com', 'password14', '555-4567', 14); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
    (15, 'Christopher', 'Moore', 'christopher.moore@example.com', 'password15', '555-8901', 15); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (16, 'Amanda', 'Jackson', 'amanda.jackson@example.com', 'password16', '555-2345', 16); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (17, 'Jennifer', 'Martin', 'jennifer.martin@example.com', 'password17', '555-6789', 17); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (18, 'Matthew', 'Lee', 'matthew.lee@example.com', 'password18', '555-0123', 18); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (19, 'Stephanie', 'Perez', 'stephanie.perez@example.com', 'password19', '555-4567', 19); 
INSERT INTO users (ID, FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS_ID)  
VALUES   
  (20, 'Joshua', 'Robinson', 'joshua.robinson@example.com', 'password20', '555-8901', 20); 
END; 
 
 
 
  
/

BEGIN 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (1, 'Для кошек', NULL); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (2, 'Для cобак', NULL); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (3, 'Для птиц', NULL); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (4, 'Для рыб', NULL); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (5, 'Для кошек', NULL); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (6, 'Для грызунов', NULL); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (7, 'Ветаптека', NULL); 
END; 
/

BEGIN 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (8, 'Корм для кошек', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (9, 'Лакомства', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (10, 'Наполнители', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (11, 'Средства от блох', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (12, 'Витамины и пищевые добавки', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (13, 'Забота о зубах', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (14, 'Игрушки для кошек', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (15, 'Груминг', 1); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (16, 'Наполнители', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (17, 'Витамины и пищевые добавки', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (18, 'Кости и лакомства', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (19, 'Груминг, косметика', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (20, 'Игрушки для собак', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (21, 'Миски и поилки', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (22, 'Забота о зубах', 2); 
 
INSERT INTO categories (ID, TITLE, PARENT_ID) 
VALUES (23, 'Товары для дрессировки', 2); 
END; 
/

ALTER TABLE products MODIFY description VARCHAR2(500);

ALTER TABLE products MODIFY title VARCHAR2(250);

BEGIN 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(1, 'Корм для кошек "Royal Canin" 1кг', 'Корм для взрослых кошек', 550, 4.5, 50, 8); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(2, 'Корм для кошек "Hills" 0.5кг', 'Корм для молодых кошек', 400, 4.2, 20, 8); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(3, 'Корм для кошек "Purina" 3кг', 'Корм для стерилизованных кошек', 1200, 4.7, 30, 8); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(4, 'Игрушка для кошек "Mylar Ball" 4шт', 'Набор игрушек для кошек', 150, 4.1, 100, 14); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(5, 'Кормушка для кошек "SureFeed"', 'Кормушка с системой идентификации животного', 2000, 4.9, 10, 15); 
END; 
 
 
 
 
 
 
 

/

BEGIN 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(6, 'Корм для кошек "Whiskas" 1кг', 'Корм для взрослых кошек в ассортименте', 450, 4.3, 60, 8); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(7, 'Корм для кошек "Felix" 0.5кг', 'Корм для молодых кошек в ассортименте', 350, 4.0, 30, 8); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(8, 'Корм для кошек "Friskies" 3кг', 'Корм для стерилизованных кошек в ассортименте', 1100, 4.6, 40, 8); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(9, 'Игрушка для кошек "Мышиный домик"', 'Домик в форме мыши для кошек', 350, 4.8, 25, 14); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(10, 'Игрушка для кошек "Лазерный указатель"', 'Устройство для игры с кошкой', 300, 4.2, 80, 14); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(11, 'Туалет для кошек "LitterMaid"', 'Автоматический туалет для кошек', 3500, 4.9, 5, 15); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(12, 'Клубок ниток для кошек', 'Набор из трех клубков ниток для кошек', 200, 4.0, 60, 14); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(13, 'Водный фонтан для кошек', 'Фонтан для постоянного доступа к пресной воде', 2500, 4.7, 8, 15); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(14, 'Коврик для кошек "Catit"', 'Коврик для игры и отдыха кошек', 800, 4.5, 20, 14); 
INSERT INTO products (id, title, description, price, rating, total_quantity, category_id) VALUES 
(15, 'Когтеточка для кошек "Falcon"', 'Когтеточка с платформой и домиком', 1500, 4.4, 12, 14); 
END; 
 
 
 
 
 
 
 

/

SELECT * FROM PRODUCTS 
 
 
 
 
 
 
 
 
;

BEGIN 
  INSERT INTO order_statuses (id, slug, name) VALUES (1, 'new', 'Новый'); 
  INSERT INTO order_statuses (id, slug, name) VALUES (2, 'processing', 'В обработке'); 
  INSERT INTO order_statuses (id, slug, name) VALUES (3, 'shipped', 'Отправлен'); 
  INSERT INTO order_statuses (id, slug, name) VALUES (4, 'delivered', 'Доставлен'); 
  INSERT INTO order_statuses (id, slug, name) VALUES (5, 'canceled', 'Отменен'); 
  INSERT INTO order_statuses (id, slug, name) VALUES (6, 'returned', 'Returned'); 
END; 
 
 
 
 
 
 
 

/

select  
    "ID", 
    "SLUG", 
    "NAME" 
from "ORDER_STATUSES";

create or replace FUNCTION get_total_price (   
    p_product_id IN products.id%TYPE,   
    p_quantity IN products.total_quantity%TYPE   
) RETURN NUMBER   
IS   
    v_price products.price%TYPE;   
    v_total_price products.price%TYPE;   
BEGIN   
    SELECT price INTO v_price FROM products WHERE id = p_product_id;   
    v_total_price := v_price * p_quantity;   
    RETURN v_total_price;   
END; 
/

CREATE SEQUENCE orders_seq;

CREATE TABLE orders ( 
  id INTEGER NOT NULL, 
  order_status INT NOT NULL, 
  order_comment VARCHAR(50), 
  total_price NUMBER(10,2) NOT NULL, 
  user_id INT NOT NULL, 
  employee_id INT, 
  CONSTRAINT orders_pk PRIMARY KEY (id) 
);

CREATE TRIGGER orders_trigger 
BEFORE INSERT ON orders 
FOR EACH ROW 
BEGIN 
  SELECT orders_seq.NEXTVAL INTO :new.id FROM dual; 
END;
/

CREATE TABLE order_items ( 
  order_id INT NOT NULL, 
  product_id INT NOT NULL, 
  quantity INT NOT NULL, 
  price_per_unit NUMBER(10,2) NOT NULL, 
  FOREIGN KEY (order_id) REFERENCES orders(id), 
  FOREIGN KEY (product_id) REFERENCES products(id) 
);

ALTER TABLE orders 
ADD address_id INT;

create or replace FUNCTION create_order(  
    p_user_id IN users.id%TYPE,  
    p_product_id IN products.id%TYPE,  
    p_quantity IN products.total_quantity%TYPE,  
    p_address_id IN addresses.address_id%TYPE  
) RETURN orders.id%TYPE IS  
    v_order_id orders.id%TYPE;  
    v_order_status order_statuses.id%TYPE := 1;  
    v_total_price NUMBER;  
BEGIN  
    -- вычисляем общую стоимость заказа с помощью функции get_total_price  
    v_total_price := get_total_price(p_product_id, p_quantity);  
  
    -- создаем новый заказ  
    INSERT INTO orders (user_id, order_status, total_price, address_id)  
    VALUES (p_user_id, v_order_status, v_total_price, p_address_id)  
    RETURNING id INTO v_order_id;  
  
    -- записываем информацию о товаре в таблицу order_items  
    INSERT INTO order_items (order_id, product_id, quantity, price_per_unit)  
    SELECT v_order_id, p_product_id, p_quantity, price  
    FROM products  
    WHERE id = p_product_id;  
  
    RETURN v_order_id;  
END; 
/

DECLARE 
  v_order_id orders.id%TYPE; 
BEGIN 
  v_order_id := create_order(p_user_id => 1, p_product_id => 4, p_quantity => 2, p_address_id => 1); 
  DBMS_OUTPUT.PUT_LINE('New order created with ID ' || v_order_id); 
END; 
/

SELECT * FROM orders 
;

SELECT * FROM order_items 
;

SELECT * FROM orders 
;

SELECT * FROM order_items 
;

Select * From orders 
;

Select * From order_items 
;

CREATE OR REPLACE TRIGGER update_product_quantity 
AFTER INSERT ON order_items 
FOR EACH ROW 
DECLARE 
  v_quantity products.total_quantity%TYPE; 
BEGIN 
  SELECT total_quantity INTO v_quantity FROM products WHERE id = :NEW.product_id; 
  UPDATE products SET total_quantity = v_quantity - :NEW.quantity WHERE id = :NEW.product_id; 
END; 
/

DECLARE 
  v_order_id orders.id%TYPE; 
BEGIN 
  v_order_id := create_order(p_user_id => 1, p_product_id => 6, p_quantity => 3, p_address_id => 1); 
  DBMS_OUTPUT.PUT_LINE('New order created with ID ' || v_order_id); 
END; 
/

select * from products where id=6;

DECLARE 
  v_order_id orders.id%TYPE; 
BEGIN 
  v_order_id := create_order(p_user_id => 1, p_product_id => 6, p_quantity => 5, p_address_id => 1); 
  DBMS_OUTPUT.PUT_LINE('New order created with ID ' || v_order_id); 
END; 
/

SELECT * FROM products WHERE id = 6;

CREATE OR REPLACE TRIGGER trg_order_status_update 
AFTER UPDATE OF order_status ON orders 
FOR EACH ROW 
WHEN (new.order_status = 5) 
DECLARE 
  v_product_id order_items.product_id%TYPE; 
  v_quantity order_items.quantity%TYPE; 
BEGIN 
  SELECT product_id, quantity 
  INTO v_product_id, v_quantity 
  FROM order_items 
  WHERE order_id = :new.id; 
   
  UPDATE products 
  SET total_quantity = total_quantity + v_quantity 
  WHERE id = v_product_id; 
   
  DBMS_OUTPUT.PUT_LINE('Product quantity updated for product_id ' || v_product_id); 
END; 
/

CREATE OR REPLACE PROCEDURE change_order_status  
    (p_order_id IN orders.id%TYPE, p_status_id IN order_statuses.id%TYPE) 
IS 
BEGIN 
    UPDATE orders SET order_status = p_status_id WHERE id = p_order_id; 
    COMMIT; 
    DBMS_OUTPUT.PUT_LINE('Order ' || p_order_id || ' status updated to ' || p_status_id); 
EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('Order with ID ' || p_order_id || ' not found.'); 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLCODE || ' - ' || SQLERRM); 
        ROLLBACK; 
END; 

/

BEGIN 
    change_order_status(1, 5); -- где 1 - ID заказа, 5 - ID статуса отмены 
END;
/

SELECT * FROM orders 
;

SELECT * FROM orders WHERE id = 1;

SELECT * FROM orders 
;

BEGIN 
    change_order_status(21, 5); -- где 21 - ID заказа, 5 - ID отмены 
END; 

/

SELECT * FROM products WHERE id = 6;

CREATE OR REPLACE PROCEDURE create_product(p_title IN products.title%TYPE,  
                                         p_description IN products.description%TYPE, 
                                         p_price IN products.price%TYPE, 
                                         p_category_id IN products.category_id%TYPE) 
AS 
  v_title_length INTEGER; 
BEGIN 
  -- Проверка идет, и если кол-во символов меньше 5 выходит ошибка 
  v_title_length := LENGTH(p_title); 
  IF v_title_length < 5 THEN 
    RAISE_APPLICATION_ERROR(-20001, 'Title must be at least 5 characters'); 
  END IF; 
 
  -- Здесь добавляю товар в таблицу  
  INSERT INTO products(title, description, price, category_id) 
  VALUES (p_title, p_description, p_price, p_category_id); 
   
  DBMS_OUTPUT.PUT_LINE('Product created successfully'); 
  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row(s) affected'); 
   
  COMMIT; 
EXCEPTION 
  WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || ' - ' || SQLERRM); 
    ROLLBACK; 
END; 
/

CREATE OR REPLACE PROCEDURE create_product( 
  p_title IN products.title%TYPE, 
  p_description IN products.description%TYPE, 
  p_quantity IN products.total_quantity%TYPE, 
  p_price IN products.price%TYPE, 
  p_category_id IN products.category_id%TYPE 
) 
IS 
  v_title_length NUMBER(2); 
BEGIN 
  v_title_length := LENGTH(p_title); 
  IF v_title_length < 5 THEN 
    RAISE_APPLICATION_ERROR(-20001, 'Title must be at least 5 characters long'); 
  ELSE 
    INSERT INTO products(title, description, total_quantity, price, category_id) 
    VALUES(p_title, p_description, p_quantity, p_price, p_category_id); 
    COMMIT; 
    DBMS_OUTPUT.PUT_LINE('Product created successfully!'); 
  END IF; 
EXCEPTION 
  WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('Error creating product: ' || SQLERRM); 
    ROLLBACK; 
END; 
/

BEGIN 
  create_product('Рсч', 'хороший, супер товар! Покупайте своим пушистикам', 100, 2500, 1); 
END; 
/

create or replace PROCEDURE create_product(  
  p_title IN products.title%TYPE,  
  p_description IN products.description%TYPE,  
  p_quantity IN products.total_quantity%TYPE,  
  p_price IN products.price%TYPE,  
  p_category_id IN products.category_id%TYPE  
)  
IS  
  v_title_length NUMBER(2);  
BEGIN  
  v_title_length := LENGTH(p_title);  
  IF v_title_length < 5 THEN  
    RAISE_APPLICATION_ERROR(-20001, 'Title must be at least 5 characters long');  
  ELSE  
    INSERT INTO products(title, description, total_quantity, price, category_id)  
    VALUES(p_title, p_description, p_quantity, p_price, p_category_id);  
    COMMIT;  
    DBMS_OUTPUT.PUT_LINE('Product created successfully!');  
  END IF;  
EXCEPTION  
  WHEN OTHERS THEN  
    DBMS_OUTPUT.PUT_LINE('Error creating product: ' || SQLERRM);  
    ROLLBACK;  
END; 
/

BEGIN 
  create_product('test', 'test', 10, 999, 1); 
END; 
/

BEGIN 
  create_product('teeest', 'test', 10, 999, 1); 
END; 
/

CREATE SEQUENCE users_seq;

CREATE TRIGGER products_trigger 
BEFORE INSERT ON orders 
FOR EACH ROW 
BEGIN 
  SELECT orders_seq.NEXTVAL INTO :new.id FROM dual; 
END;
/

BEGIN 
  create_product('teeeest', 'teeesst', 10, 999, 1); 
END; 
/

DECLARE 
  v_order_id orders.id%TYPE; 
BEGIN 
  v_order_id := create_order(p_user_id => 2, p_product_id => 6, p_quantity => 2, p_address_id => 3); 
  DBMS_OUTPUT.PUT_LINE('New order created with ID ' || v_order_id); 
END; 
/

DECLARE 
  v_order_id orders.id%TYPE; 
BEGIN 
  v_order_id := create_order(p_user_id => 2, p_product_id => 6, p_quantity => 2, p_address_id => 3); 
  DBMS_OUTPUT.PUT_LINE('New order created with ID ' || v_order_id); 
END; 
/

CREATE OR REPLACE TRIGGER orders_count 
BEFORE INSERT ON orders 
DECLARE 
  l_count NUMBER; 
BEGIN 
  SELECT COUNT(*) INTO l_count FROM orders; 
  DBMS_OUTPUT.PUT_LINE('Current number of rows in orders: ' || l_count); 
END; 
/

DECLARE  
  v_order_id orders.id%TYPE;  
BEGIN  
  v_order_id := create_order(p_user_id => 2, p_product_id => 6, p_quantity => 2, p_address_id => 2);  
  DBMS_OUTPUT.PUT_LINE('New order created with ID ' || v_order_id);  
END; 
/

CREATE OR REPLACE PROCEDURE sold_products_by_title 
IS 
BEGIN 
  FOR r IN (SELECT p.title, SUM(oi.quantity) as total_sold  
            FROM order_items oi  
            JOIN products p ON oi.product_id = p.id  
            GROUP BY p.title) 
  LOOP 
    DBMS_OUTPUT.PUT_LINE('Title: ' || r.title || ', Total Sold: ' || r.total_sold); 
  END LOOP; 
END; 

/

CREATE OR REPLACE PROCEDURE sold_products_by_title 
IS 
BEGIN 
  FOR r IN (SELECT p.title, SUM(oi.quantity) as total_sold  
            FROM order_items oi  
            JOIN products p ON oi.product_id = p.id  
            GROUP BY p.title) 
  LOOP 
    DBMS_OUTPUT.PUT_LINE('Title: ' || r.title || ', Total Sold: ' || r.total_sold); 
  END LOOP; 
END;
/

CREATE OR REPLACE PROCEDURE sold_products_by_product_title 
IS 
BEGIN 
  FOR r IN (SELECT p.title, SUM(oi.quantity) as total_sold  
            FROM products p  
            JOIN order_items oi ON oi.product_id = p.id  
            GROUP BY p.title) 
  LOOP 
    DBMS_OUTPUT.PUT_LINE('Product Title: ' || r.title || ', Total Sold: ' || r.total_sold); 
  END LOOP; 
END; 
/

BEGIN 
  sold_products_by_product_title; 
END; 
/

BEGIN 
  sold_products_by_product_title; 
END; 
/

CREATE OR REPLACE PROCEDURE sold_products_by_product_title 
IS 
BEGIN 
  FOR r IN (SELECT p.title, SUM(oi.quantity) as total_sold  
            FROM products p  
            JOIN order_items oi ON oi.product_id = p.id  
            GROUP BY p.title) 
  LOOP 
    DBMS_OUTPUT.PUT_LINE('Product Title: ' || r.title || ', Total Sold: ' || r.total_sold); 
  END LOOP; 
END; 
/

BEGIN 
  sold_products_by_product_title; 
END; 
/

CREATE OR REPLACE PROCEDURE update_product_images 
IS 
BEGIN 
  UPDATE products 
  SET image_url = 'tinyurl.com/47537xd2'; 
 
  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' rows updated'); 
END; 
 

/

SELECT * FROM products 
;

CREATE OR REPLACE PROCEDURE update_product_images 
IS 
BEGIN 
  UPDATE products 
  SET image_url = 'tinyurl.com/47537xd2'; 
 
  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' rows updated'); 
END; 

/

CREATE OR REPLACE PROCEDURE update_product_images 
IS 
BEGIN 
  UPDATE products 
  SET image_url = 'tinyurl.com/47537xd2'; 
 
  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' rows updated'); 
END; 
/

BEGIN 
  update_product_images; 
END; 
 
 
 
 
 

/

SELECT * FROM products 
 
 
 
 
 
 
;

