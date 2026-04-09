create database if not exists hamburgueria;
use hamburgueria;

create table if not exists hamburgueres (codigo int  AUTO_INCREMENT PRIMARY KEY,
 produto varchar(20), 
 descricao varchar(40), 
 preco float, 
 destaque bool,
 foto varchar(100),
 disponibilidade bool);

ALTER TABLE hamburgueres 
MODIFY COLUMN descricao VARCHAR(255);
 
 INSERT INTO hamburgueres (produto, descricao, preco, destaque, foto, disponibilidade) VALUES
('Classic Burger', 'Pão, carne 160g, queijo e maionese.', 25.90, true, 'classic.jpg', true),
('Bacon Blast', 'Hambúrguer com fatias crocantes de bacon.', 32.00, true, 'bacon_blast.jpg', true),
('Veggie Delight', 'Hambúrguer de grão-de-bico e salada.', 28.50, false, 'veggie.jpg', true),
('Monster Cheese', 'Triplo queijo cheddar e cebola caramelizada.', 35.90, true, 'monster.jpg', true),
('Chicken Crisp', 'Frango empanado, alface e molho especial.', 24.00, false, 'chicken.jpg', true),
('Smash Simples', 'Prensado na chapa com cebola e picles.', 18.00, false, 'smash.jpg', true),
('Hot Jalapeño', 'Carne, queijo e pimenta jalapeño.', 29.90, false, 'hot.jpg', false),
('Gourmet Trufado', 'Carne angus com maionese trufada.', 45.00, true, 'trufado.jpg', true);
 