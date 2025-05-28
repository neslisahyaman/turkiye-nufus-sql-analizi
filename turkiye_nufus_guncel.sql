
CREATE TABLE turkiye_nufus (
    il VARCHAR(50),
    nufus INT
);


INSERT INTO turkiye_nufus (il, nufus) VALUES
('İstanbul', 15840900),
('Ankara', 5663322),
('İzmir', 4320519),
('Bursa', 3128226),
('Antalya', 2670640),
('Adana', 2260305),
('Konya', 2271543),
('Şanlıurfa', 2113787),
('Gaziantep', 2131191),
('Kocaeli', 2046442);


SELECT * FROM turkiye_nufus
ORDER BY nufus DESC
LIMIT 1;


SELECT * FROM turkiye_nufus
WHERE nufus > 3000000;


SELECT * FROM turkiye_nufus
ORDER BY nufus ASC
LIMIT 3;

SELECT AVG(nufus) AS ortalama_nufus FROM turkiye_nufus;

SELECT * FROM turkiye_nufus
WHERE nufus > (SELECT AVG(nufus) FROM turkiye_nufus);


SELECT * FROM turkiye_nufus
WHERE il LIKE '%a%';


SELECT SUM(nufus) AS toplam_nufus FROM turkiye_nufus;
