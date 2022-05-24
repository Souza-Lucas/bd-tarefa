CREATE TRIGGER addVoo AFTER 
INSERT ON voo 
FOR EACH ROW 
UPDATE piloto 
SET num_voos = num_voos + 1 
WHERE codigo = NEW.codigo_piloto; 

INSERT INTO piloto(nome, num_voos)
VALUES ("Izaque Junior", 0);

INSERT INTO voo(tipo, cod_piloto, num_passageiros, distancia)
VALUES ("Econômico", 1, 0, 700.00);
