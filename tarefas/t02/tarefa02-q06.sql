create trigger sumMileages after
insert ON cliente_voo
FOR EACH ROW
UPDATE milhas SET quantidade = quantidade + 
(SELECT distancia FROM voo, cliente_voo 
WHERE NEW.cod_voo = voo.codigo
) / 10
WHERE cod_cliente = new.cod_cliente;

INSERT INTO cliente_voo(cod_cliente, cod_voo, classe)
VALUES (1, 1, "Econômico);

SELECT * FROM milhas 
WHERE cod_cliente = 1;
