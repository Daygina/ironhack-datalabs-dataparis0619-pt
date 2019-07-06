SELECT s.qty, a.au_id AS AUTHOR_ID, a.au_lname AS LAST_NAME, a.au_fname AS FIRST_NAME, 
sum(coalesce(s.qty, 0)) AS TOTAL
FROM authors AS a
        LEFT JOIN titleauthor AS ta ON a.au_id =ta.au_id
        LEFT JOIN sales as s ON s.title_id=ta.title_id
        group by a.au_id
        Order by TOTAL DESC
        

        