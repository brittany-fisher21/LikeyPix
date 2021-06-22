INSERT INTO users
    (name, email)
VALUES
    ('Alice', 'alice@email.com'),
    ('Bob', 'bob@email.com'),
    ('Cho', 'cho@email.com'),
    ('Daryl', 'daryl@email.com'),
    ('Emmy', 'emmy@email.com');

INSERT INTO posts
    (url, user_id)
VALUES
    ('walking-the-cat.jpg', 2),
    ('day-at-the-beach.jpg', 3),
    ('new-puppy.jpg', 1),
    ('cat-in-a-box.jpg', 5),
    ('doggos.jpg', 5);

INSERT INTO tags
    (tag)
VALUES
    ('cute'),
    ('fluffy'),
    ('whorescuedwho');
INSERT INTO tags_posts

    (tag_id, post_id)
VALUES
    (1,2),
    (2,2),
    (1,4),
    (3,3),
    (3,5);

INSERT INTO likes
    (user_id, post_id)
VALUES
    (1,1),
    (1,2),
    (2,3),
    (4,5),
    (2,2),
    (3,1);

INSERT INTO comments
    (comment, post_id, user_id)
VALUES
    ('cutie', 5, 2),
    ('look at those ears...', 2, 1),
    ('puppy power!', 3, 4),
    ('lol it never gets old!', 4, 2),
    ('icanhazbox?', 4, 1),
    ('Adorable!', 3, 5);