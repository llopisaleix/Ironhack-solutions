# CHALLENGE 1
SELECT 
    author_id, SUM(sales_royalty_sum + advance) AS total_profits
FROM
    (SELECT 
        title_id,
            author_id,
            SUM(sales_royalty) AS sales_royalty_sum,
            advance
    FROM
        (SELECT 
        ta.title_id AS title_id,
            ta.au_id AS author_id,
            t.advance * ta.royaltyper / 100 AS advance,
            t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    FROM
        sales s
    INNER JOIN titleauthor ta ON ta.title_id = s.title_id
    INNER JOIN titles t ON ta.title_id = t.title_id) q1
    GROUP BY author_id , title_id) q2
GROUP BY author_id
ORDER BY total_profits DESC
LIMIT 3;

# CHALLENGE 2
-- CREATE TEMP TABLE FOR THE FIRST SUB QUERY
CREATE TEMPORARY TABLE royalties_author_title
SELECT 
        ta.title_id AS title_id,
            ta.au_id AS author_id,
            t.advance * ta.royaltyper / 100 AS advance,
            t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    FROM
        sales s
    INNER JOIN titleauthor ta ON ta.title_id = s.title_id
    INNER JOIN titles t ON ta.title_id = t.title_id;
    
    
-- CREATE TEMP TABLE FOR THE SECOND SUB QUERY BASED ON THE royalties_author_title TEMP TABLE
CREATE TEMPORARY TABLE profits_author
SELECT 
        title_id,
            author_id,
            SUM(sales_royalty) AS sales_royalty_sum,
            advance
    FROM
        royalties_author_title
    GROUP BY author_id , title_id;


-- GET FINAL RESULT USING THE TEMP TABLE profits_author
SELECT 
    author_id,
    SUM(sales_royalty_sum + advance) AS total_profit
FROM
    profits_author
GROUP BY author_id
ORDER BY total_profit DESC
LIMIT 3;

#CHALLENGE 3
CREATE TABLE most_profiting_authors AS (SELECT 
    author_id, SUM(sales_royalty_sum + advance) AS total_profits
FROM
    (SELECT 
        title_id,
            author_id,
            SUM(sales_royalty) AS sales_royalty_sum,
            advance
    FROM
        (SELECT 
        ta.title_id AS title_id,
            ta.au_id AS author_id,
            t.advance * ta.royaltyper / 100 AS advance,
            t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    FROM
        sales s
    INNER JOIN titleauthor ta ON ta.title_id = s.title_id
    INNER JOIN titles t ON ta.title_id = t.title_id) q1
    GROUP BY author_id , title_id) q2
GROUP BY author_id)