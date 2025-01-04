CREATE TABLE Users (
    rand_id VARCHAR(255),
    email VARCHAR(255),
    user_name VARCHAR(255),
    password TEXT,
    verified_at TIMESTAMP WITH TIME ZONE,
    cr TIMESTAMP WITH TIME ZONE,   
    up TIMESTAMP WITH TIME ZONE,  
    meta JSONB
);

