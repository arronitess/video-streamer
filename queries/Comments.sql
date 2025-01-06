CREATE TABLE Comments (
    rand_id VARCHAR(255),
    body text,
    parent_id INTEGER,
    publish_status BOOLEAN,
    video_id VARCHAR(255), 
    cr_rand_id VARCHAR(255),
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE
);
