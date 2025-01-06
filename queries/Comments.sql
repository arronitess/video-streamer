CREATE TABLE Comments (
    rand_id VARCHAR(255),
    body text,
    publish_status Publish_status,
    video_id VARCHAR(255), 
    cr_rand_id VARCHAR(255),
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE
);
