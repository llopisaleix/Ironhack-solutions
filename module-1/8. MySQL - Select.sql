-- CHALLENGE 1
SELECT 
    t.au_id AS `Author ID`,
    t.au_fname AS `First Name`,
    t.au_lname AS `Last Name`,
    t.phone AS `Author Phone`,
    t.city AS `Author City`,
    t.state AS `Author State`,
    pt.title AS `Book Title`,
    pt.price AS `Book Price`,
    pt.type AS `Book Type`,
    pt.pubdate AS `Publication Date`,
    pt.notes AS `Publication Notes`,
    p.pub_name AS `Publisher`,
    p.city AS `Publisher City`,
    p.state AS `Publisher State`,
    p.country AS `Publisher Country`,
    i.logo AS `Publisher Logo`,
    i.pr_info AS `Publisher Info`
FROM
    publications.authors t
        INNER JOIN
    publications.titleauthor ta ON t.au_id = ta.au_id
        INNER JOIN
    publications.titles pt ON ta.title_id = pt.title_id
        INNER JOIN
    publications.pub_info i ON i.pub_id = pt.pub_id
        INNER JOIN
    publications.publishers p ON p.pub_id = pt.pub_id;
    
-- CHALLENGE 2
SELECT 
    t.au_id AS author_id,
    t.au_fname AS `First Name`,
    t.au_lname AS `Last Name`,
    p.pub_name AS `Publisher Name`,
    COUNT(*) AS `Title Count`
FROM
    publications.authors t
        INNER JOIN
    publications.titleauthor ta ON t.au_id = ta.au_id
        INNER JOIN
    publications.titles pt ON ta.title_id = pt.title_id
        INNER JOIN
    publications.pub_info i ON i.pub_id = pt.pub_id
        INNER JOIN
    publications.publishers p ON p.pub_id = pt.pub_id
GROUP BY p.pub_name , t.au_id
ORDER BY `Title Count` DESC;

-- CHALLENGE 3
SELECT 
    a.au_id AS `AUTHOR ID`,
    a.au_lname AS `LAST NAME`,
    a.au_fname AS `FIRST NAME`,
    SUM(t.ytd_sales) AS TOTAL
FROM
    publications.authors a
        INNER JOIN
    publications.titleauthor ta ON a.au_id = ta.au_id
        INNER JOIN
    publications.titles t ON ta.title_id = t.title_id
GROUP BY a.au_id
order by TOTAL DESC
LIMIT 3;

-- CHALLENGE 4
SELECT 
    a.au_id AS `AUTHOR ID`,
    a.au_lname AS `LAST NAME`,
    a.au_fname AS `FIRST NAME`,
    IFNULL(SUM(t.ytd_sales), 0) AS TOTAL
FROM
    publications.authors a
        LEFT JOIN
    publications.titleauthor ta ON a.au_id = ta.au_id
        LEFT JOIN
    publications.titles t ON ta.title_id = t.title_id
GROUP BY a.au_id
ORDER BY TOTAL DESC