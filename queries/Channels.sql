CREATE TABLE Channels (
    rand_id VARCHAR(255),        
    cr_rand_id VARCHAR(255),
    username VARCHAR(255),
    name VARCHAR(255),
    bio text,
    poster text,
    image text,
    status Boolean,
    cr TIMESTAMP WITH TIME ZONE,   
    up TIMESTAMP WITH TIME ZONE
);
