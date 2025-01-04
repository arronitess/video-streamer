CREATE TABLE Comments (
    rand_id VARCHAR(255),
    video_id VARCHAR(255), 
    cr_rand_id VARCHAR(255),
    status Status,
    publish_status Publish_status,
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE,
    meta JSONB
);
