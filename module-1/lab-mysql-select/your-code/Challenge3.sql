SELECT 
    ta.au_id AS AUTHOR_ID, a.au_lname AS LAST_NAME, a.au_fname AS FIRST_NAME, p.pub_name AS PUBLISHER,  sum(ta.title_id) AS TOTAL
FROM
    titleauthor AS ta
        JOIN
    authors AS a ON ta.au_id = a.au_id
        JOIN
    titles AS t ON ta.title_id = t.title_id
		JOIN
    publishers as p ON t.pub_id=p.pub_id
    #this query returns 25 rows as on the titleauthors table, where 25 rows
GROUP by ta.title_id