DROP TABLE IF EXISTS hacker_news;
CREATE TABLE IF NOT EXISTS hacker_news (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    views_K INT,
    comments INT,
    category VARCHAR(50));
INSERT INTO hacker_news (id, title, author, views_K, comments, category)
VALUES
(1, 'Major data breach at TechCorp', 'Alice', 320, 75, 'Cybersecurity'),
(2, 'Ethical hackers expose bank flaw', 'Bob', 210, 40, 'Hacking'),
(3, 'New ransomware targets hospitals', 'Carol', 150, 55, 'Cybercrime'),
(4, 'SQL injection vulnerability fixed', 'Dave', 95, 20, 'Web Security'),
(5, 'Hacker group leaks government files', 'Eve', 400, 120, 'Cybercrime');
SELECT * FROM hacker_news;
SELECT title, views_K FROM hacker_news
ORDER BY views_K DESC;
SELECT category, AVG(views_K) AS avg_views_K FROM hacker_news
GROUP BY category ORDER BY avg_views_K DESC;