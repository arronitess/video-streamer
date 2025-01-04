CREATE TABLE Channels (
    rand_id VARCHAR(255),        
    cr_rand_id VARCHAR(255),
    status Status,  
    owner VARCHAR(255)[],  
    admin VARCHAR(255)[], 
    editor VARCHAR(255)[],
    type VARCHAR(255),
    cr TIMESTAMP WITH TIME ZONE,   
    up TIMESTAMP WITH TIME ZONE,   
    meta JSONB                    
);
