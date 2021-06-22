CREATE TABLE users (
    id serial primary key,
    name text NOT NULL,
    email text NOT NULL
);

CREATE TABLE posts (
    id serial primary key,
    url text NOT NULL,
    user_id integer REFERENCES users(id) on delete cascade
);

CREATE TABLE tags (
    id serial primary key,
    tag text NOT NULL
);

CREATE TABLE tags_posts (
    tag_id integer REFERENCES tags(id) on delete cascade,
    post_id integer REFERENCES posts(id) on delete cascade
);

CREATE TABLE likes (
    user_id integer REFERENCES users(id) on delete cascade,
    post_id integer REFERENCES posts(id) on delete cascade
);

CREATE TABLE comments (
    id serial primary key,
    comment text NOT NULL,
    created_at timestamp DEFAULT now(),
    post_id integer REFERENCES posts(id) on delete cascade,
    user_id integer REFERENCES users(id) on delete cascade
);
