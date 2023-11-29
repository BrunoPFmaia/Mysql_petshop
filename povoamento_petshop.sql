use petshop;

insert into contato(numero)
values
	(83988888888),
    (83977777777),
    (83911111111),
    (83922222222),
    (83966666666);
    
insert into endereco (rua, numero, cidade, bairro)
values
	('mar gelado', 20, 'Cabedelo', 'intermares'),
    ('cabo frio', 13, 'Cabedelo', 'intermares'),
    ('mar caspio', 111, 'Cabedelo', 'intermares'),
    ('oceano atlantico', 200, 'Cabedelo', 'intermares'),
    ('Alemao', 777, 'Joao pessoa', 'Bessa');

insert into cliente (ID_contato, ID_endereco, nome, genero, cpf)
values 
	(1, 1,'Jorge verissimo','masculino','111-222-333-00'),
    (2, 2, 'Amaru Lopez', 'Feminino', '000-000-000-11'),
    (3, 3, 'Leonardo Cabral', 'masculino', '999-999-222-77'),
    (4, 4, 'Maria Antonieta', 'feminino', '888-888-111-55'),
    (5, 5, 'Toji fushiguro', 'masculino', '666-666-111-99');

insert into pet (id_cliente, nome, idade, raca)
values
	(1, 'Rex', 5, 'galgo Alemao'),
    (2, 'Lucy', 2, 'Pastor'),
    (3, 'Toby', 1, 'golden'),
    (3, 'Luthor', 8, 'yorkshire'),
    (5, 'Hulk', null , null);

insert into funcionario (nome, genero, cargo, salario)
values
	('Rebeca Sobrado', 'feminino', 'atendente', 1800),
    ('Pedro Maluf', 'masculino', 'atendente', 1800),
    ('Paula Sobrando', 'feminino', 'tosadora', 2500),
    ('Luan Pereira', 'masculino', 'zelador', 1300),
    ('Mario Silva', 'maculino' , 'veterinario', 3500),
    ('leonardo Cavalcante', 'masculino', 'vendedor', 1600),
    ('Clara Maia', 'feminino', 'vendedor', 1600),
    ('Maria Aparecida', 'feminino', 'vendedora', 1600);

insert into fornecedor (cnpj, nome)
values
	('7777777777', 'Romulo Pires'),
    ('8888888888', 'Lolita Mota'),
    ('9999999999', 'Leoncio Trajano'),
    ('1111111111', 'Cleo Nunez');
    
insert into produto (id_fornecedor, nome, descricao, valor, estoque)
values
	(1, 'osso', null, 20, 100),
    (1, 'coleira', null, 25, 12),
    (2, 'colar', null, 12, 27),
    (3, 'bolinha', 'bola de borracha Petz', 15, 32),
    (4, 'racao', 'racao multivitaminica X', 54, 65),
    (2, 'remedio pulgas', 'Solucao antipulgas y', 21, 10);

insert into venda (id_funcionario, id_produto, id_cliente, quantidade_produto, servico, forma_pagamento)
values
	(7,1,1,2,null,'debito'),
    (7,1,1,1,null,'a vista'),
    (6,2,2,3,null,'credito'),
    (6,3,2,3,25,'credito'),
    (7,4,3,4,10,'credito'),
    (8,4,4,7,null,'debito'),
    (8,5,5,1,15,'a vista');

select * from produto, fornecedor where fornecedor.ID = produto.ID_fornecedor;