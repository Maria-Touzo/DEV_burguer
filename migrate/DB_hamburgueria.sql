create database if not exists hamburgueria;
use hamburgueria;

create table if not exists hamburgueres (codigo int  AUTO_INCREMENT PRIMARY KEY,
 produto varchar(20), 
 descricao varchar(40), 
 preco float, 
 destaque bool,
 foto varchar(100),
 disponibilidade bool);
 
create table if not exists usuarios (
 usuario varchar(20) primary key, 
 senha varchar(200) not null,
 nome VARCHAR(100) default "anonimo");
 

CREATE TABLE IF NOT EXISTS carrinhos ( 
cod_carrinho INT auto_increment primary key,
usuario varchar (20),
data datetime default current_timestamp,
finalizado bool,
constraint fk_carrinho_usuario FOREIGN KEY (usuario) REFERENCES usuarios(usuario)
);

CREATE TABLE IF NOT EXISTS itens_carrinho(
cod_itens INT AUTO_INCREMENT PRIMARY KEY,
cod_carrinho INT,
cod_hamburguer INT,
quantidade INT DEFAULT 1,
constraint fk_itenscarrinho_carrinhos FOREIGN KEY (cod_carrinho) REFERENCES carrinhos(cod_carrinho),
CONSTRAINT fk_itenscarrinho_itens FOREIGN KEY (cod_hamburguer) REFERENCES hamburgueres(codigo)
);


  
  INSERT INTO hamburgueres(produto, descricao, preco, destaque, foto, disponibilidade) VALUES
  ('Classic Burger', 'Pão, carne 160g, queijo e maionese.', '25.9', '1', 'https://source.unsplash.com/600x400/?classic,burger', '1'),
 ('Bacon Blast', 'Hambúrguer com fatias crocantes de bacon.', '32', '1', 'https://source.unsplash.com/600x400/?bacon,burger', '1'),
 ('Veggie Delight', 'Hambúrguer de grão-de-bico e salada.', '28.5', '0', 'https://source.unsplash.com/600x400/?veggie,burger', '1'),
 ('Monster Cheese', 'Triplo queijo cheddar e cebola caramelizada.', '35.9', '1', 'https://source.unsplash.com/600x400/?cheese,burger', '1'),
 ('Chicken Crisp', 'Frango empanado, alface e molho especial.', '24', '0', 'https://source.unsplash.com/600x400/?crispy,chicken,burger', '1'),
 ('Smash Simples', 'Prensado na chapa com cebola e picles.', '18', '0', 'https://source.unsplash.com/600x400/?smash,burger', '1'),
 ('Hot Jalapeño', 'Carne, queijo e pimenta jalapeño.', '29.9', '0', 'https://source.unsplash.com/600x400/?jalapeno,burger', '0'),
('Gourmet Trufado', 'Carne angus com maionese trufada.', '45', '1', 'https://source.unsplash.com/600x400/?gourmet,burger', '1');

 

ALTER TABLE hamburgueres 
MODIFY COLUMN descricao VARCHAR(255);

ALTER TABLE hamburgueres 
MODIFY COLUMN foto VARCHAR(1000);
 


 