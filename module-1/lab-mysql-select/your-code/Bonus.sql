SELECT a.au_id AS AUTHOR_ID, a.au_lname AS LAST_NAME, a.au_fname AS FIRST_NAME, 
t.title_id as TITLE_ID, t.advance AS ADVANCE, t.price AS PRICE, t.royalty AS Royalty, ta.royaltyper AS RTYPE, sum(s.qty) as QTY, 
sum((advance*RTYPE/100)+(royalty*QTY)*ta.royaltyper/100)) as PROFIT
FROM titleauthor AS ta
        LEFT JOIN authors AS a ON a.au_id =ta.au_id
        LEFT JOIN titles as t ON t.title_id=ta.title_id
        LEFT JOIN sales as s ON s.title_id=ta.title_id
        group by a.au_id
        order by Profit DESC


        

        