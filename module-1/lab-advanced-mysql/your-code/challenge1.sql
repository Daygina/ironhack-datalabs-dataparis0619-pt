CREATE TABLE most_profiting_authors (AUTHOR_ID varchar(20), Profit varchar(20))
INSERT INTO most_profiting_authors (AUTHOR_ID, Profit)
SELECT AUTHOR_ID, (ADVANCE+RLT_A_Title) as Profit
FROM (
SELECT titleauthor.title_id AS TITLE_ID, titleauthor.au_id as AUTHOR_ID,  
titles.advance*titleauthor.royaltyper/100 AS ADVANCE,
coalesce(sum(titles.price* sales.qty*titles.royalty/100*titleauthor.royaltyper/100),0)  AS RLT_A_Title
FROM titleauthor AS titleauthor
INNER JOIN titles AS titles ON titleauthor.title_id=titles.title_id
left JOIN sales AS sales ON titleauthor.title_id=sales.title_id
GROUP BY TITLE_ID, AUTHOR_ID) recup
ORDER BY Profit DESC
Limit 3;


