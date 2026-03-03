-- Users (same as before, kept consistent)
INSERT INTO users (id, email, password, name, role)
VALUES
    (1, 'admin@gmail.com', 'admin', 'Administrator', 'ROLE_ADMIN'),
    (2, 'siddhi.gaikwad.iitb@gmail.com', 'secret', 'Siddhi Gaikwad', 'ROLE_USER');

-- Reset sequence
SELECT setval('users_id_seq', (SELECT MAX(id) FROM users));

-- Siddhi's personalized saved URLs
INSERT INTO short_urls
(short_key, original_url, created_by, created_at, expires_at, is_private, click_count)
VALUES
-- Professional profiles
('ghSidd', 'https://github.com/yourusername', 2, TIMESTAMP '2025-01-10', NULL, FALSE, 0),
('liSidd', 'https://www.linkedin.com/in/yourusername', 2, TIMESTAMP '2025-01-11', NULL, FALSE, 0),
('pfSidd', 'https://yourportfolio.com', 2, TIMESTAMP '2025-01-12', NULL, FALSE, 0),

-- Your projects
('urlPrj', 'https://github.com/yourusername/url-shortener-springboot', 2, TIMESTAMP '2025-01-15', NULL, FALSE, 0),
('rcaApp', 'https://github.com/yourusername/rca-product-manager-tool', 2, TIMESTAMP '2025-01-16', NULL, TRUE, 0),

-- Interview prep
('lldPrep', 'https://refactoring.guru/design-patterns', 2, TIMESTAMP '2025-01-18', NULL, FALSE, 0),
('sysDes', 'https://github.com/donnemartin/system-design-primer', 2, TIMESTAMP '2025-01-19', NULL, FALSE, 0),
('dsaMap', 'https://neetcode.io/roadmap', 2, TIMESTAMP '2025-01-20', NULL, FALSE, 0),

-- Spring Boot / Backend learning
('spBoot', 'https://spring.io/guides', 2, TIMESTAMP '2025-01-22', NULL, FALSE, 0),
('jpaDoc', 'https://docs.spring.io/spring-data/jpa/docs/current/reference/html/', 2, TIMESTAMP '2025-01-23', NULL, FALSE, 0),
('testCon', 'https://testcontainers.com/guides/', 2, TIMESTAMP '2025-01-24', NULL, FALSE, 0),

-- AI / RAG learning (matches your interest)
('ragArt', 'https://www.pinecone.io/learn/retrieval-augmented-generation/', 2, TIMESTAMP '2025-01-25', NULL, FALSE, 0),
('lang4j', 'https://github.com/langchain4j/langchain4j', 2, TIMESTAMP '2025-01-26', NULL, FALSE, 0),

-- Career / resume
('resTem', 'https://www.overleaf.com/latex/templates/jakes-resume/syzfjbzwjncs', 2, TIMESTAMP '2025-01-28', NULL, TRUE, 0),
('intQue', 'https://github.com/Devinterview-io/java-interview-questions', 2, TIMESTAMP '2025-01-29', NULL, FALSE, 0),

-- Fun / personal
('jjkFan', 'https://jujutsu-kaisen.fandom.com/wiki/Jujutsu_Kaisen_Wiki', 2, TIMESTAMP '2025-01-30', NULL, FALSE, 0),
('mbaRead', 'https://www.goodreads.com/shelf/show/mba', 2, TIMESTAMP '2025-02-01', NULL, FALSE, 0);