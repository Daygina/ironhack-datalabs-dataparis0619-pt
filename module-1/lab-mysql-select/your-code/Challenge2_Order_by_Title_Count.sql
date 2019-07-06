SELECT 
    ta.au_id AS AUTHOR_ID, a.au_lname AS LAST_NAME, a.au_fname AS FIRST_NAME,
    p.pub_name AS PUBLISHER,  COUNT(ta.title_id) AS TITLE_COUNT
FROM
    titleauthor AS ta
        left JOIN
    authors AS a ON ta.au_id = a.au_id
        JOIN
    titles AS t ON ta.title_id = t.title_id
		JOIN
    publishers as p ON t.pub_id=p.pub_id
    #this query returns 25 rows as on the titleauthors table, where 25 rows
GROUP by p.pub_id, a.au_id
ORDER BY COUNT(ta.title_id) DESC
