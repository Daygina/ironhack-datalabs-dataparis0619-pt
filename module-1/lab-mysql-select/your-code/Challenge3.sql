SELECT ta.au_id AS AUTHOR_ID, a.au_lname AS LAST_NAME, a.au_fname AS FIRST_NAME, 
s.qty as QTY, sum(s.qty) AS TOTAL, ta.title_id as TITLE_ID
FROM titleauthor AS ta
        JOIN authors AS a ON ta.au_id = a.au_id
        RIGHT JOIN sales as s ON s.title_id=ta.title_id
        group by a.au_id
        order by s.qty
        limit 3

