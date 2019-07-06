SELECT pubs.pub_name, COUNT(titles.title_id) AS Titles
FROM publications.publishers pubs
INNER JOIN publications.titles titles
ON pubs.pub_id = titles.pub_id
GROUP BY pubs.pub_name;