DROP TABLE chan;
CREATE TABLE chan
(
	id SERIAL4 PRIMARY KEY, 
	image_url TEXT,
	body TEXT, 
	author_name TEXT, 
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO chan (image_url, body, author_name) VALUES ('http://graphics8.nytimes.com/images/2013/10/10/fashion/10COVER_SPAN/10COVER_SPAN-articleLarge.jpg', 'smug advisory', 'anonymous');

INSERT INTO chan (image_url, body, author_name) VALUES ('http://playstation.beyond-twosouls.com/assets/slide/600x310/videos/TribecaTrailer_600x310.jpg', 'Beyond: Two Souls is out; I want to go to there', 'anonymous');

INSERT INTO chan (image_url, body, author_name) VALUES ('http://www.gonehomegame.com/screens/Zine_thumb.jpg', 'Gone Home--games + Riot Grrrl yayz', 'anonymous');