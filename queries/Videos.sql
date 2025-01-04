CREATE TABLE Videos (
    rand_id VARCHAR(255),
    channel_id VARCHAR(255)[],
    cr_rand_id VARCHAR(255),
    status Status,
    agree_policy Policy,
    views_count INTEGER,
    creator JSONB, 
    type VARCHAR(255),
    path VARCHAR(255)[],
    publish_date TIMESTAMP WITH TIME ZONE,
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE,
    meta JSONB
);
