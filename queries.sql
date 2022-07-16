SELECT * FROM alunos;
SELECT * FROM curso;
SELECT * FROM entregas;
SELECT * FROM turmas;

-- QUERY 1
SELECT * FROM entregas
	WHERE modulo = 3 AND conceito = "Pronto" OR conceito = "Mais que pronto";
 
 -- QUERY 2
SELECT COUNT(id) AS quantidade_alunos, numero AS numero_turma FROM turmas
GROUP BY numero; 

-- QUERY 3 
SELECT COUNT(conceito) AS conceito FROM entregas
WHERE conceito = "Chegando lá" OR conceito = "Ainda não está pronto"; 

-- QUERY 4
SELECT turmas_id, COUNT(conceito) AS quantidade FROM entregas 
INNER JOIN alunos ON entregas.id_aluno = alunos.id_aluno
WHERE conceito = "Mais que pronto"
GROUP BY turmas_id
ORDER BY quantidade DESC
LIMIT 1;

