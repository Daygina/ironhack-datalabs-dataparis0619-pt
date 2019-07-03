SELECT 
    ta.au_id AS AUTHOR_ID, a.au_lname AS LAST_NAME, a.au_fname AS FIRST_NAME, t.title AS TITLE, p.pub_name AS PUBLISHER
FROM
    titleauthor AS ta
        JOIN
    authors AS a ON ta.au_id = a.au_id
        JOIN
    titles AS t ON ta.title_id = t.title_id
		JOIN
    publishers as p ON t.pub_id=p.pub_id
    #this query returns 25 rows as on the titleauthors table, where 25 rows
    #(If your query is correct, the total rows in your output should be the same as the total number of records in Table titleauthor)
    ORDER BY au_lname