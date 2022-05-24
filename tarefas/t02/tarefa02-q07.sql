CREATE TRIGGER addPassengerOnFlight AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE voo SET num_passageiros = num_passageiros + 1
WHERE codigo = new.cod_voo;

INSERT INTO cliente(nome, endereco)
VALUES("Mariluce Cristina", "Rua Doutor Heráclio Pires");

INSERT INTO voo(tipo, cod_piloto, num_passageiros, distancia)
VALUES ("Econômica", 1, 0, 1000.00);

INSERT INTO cliente_voo(cod_cliente, cod_voo, classe)
VALUES (1, 1, "Econômica");
