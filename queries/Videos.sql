CREATE TABLE Videos (
    rand_id VARCHAR(255),
    cr_rand_id VARCHAR(255),
    title VARCHAR(255),
    description text,
    channel_id VARCHAR(255),
    transcode_progress INTEGER,
    storage_disk VARCHAR(255),
    video_path VARCHAR(255)[],
    thumbnail_path text,
    views_count INTEGER,
    publish_date TIMESTAMP WITH TIME ZONE,
    playlist_id VARCHAR(255),
    status BOOLEAN,
    cr TIMESTAMP WITH TIME ZONE,
    up TIMESTAMP WITH TIME ZONE
);
