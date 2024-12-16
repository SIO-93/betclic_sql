CREATE TABLE exams( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    date INT,
    sujet VARCHAR(30)
    
); 

CREATE TABLE account( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(20),
    value INT
);

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE bets (
    id INT PRIMARY KEY,             
    user_id INT,                 
    user_id_oppponent INT,        
    exam_id INT,       
    amount INT,              
    FOREIGN KEY (user_id) REFERENCES users(id),  
    FOREIGN KEY (opponent_user_id) REFERENCES users(id),
    FOREIGN KEY (exam_id) REFERENCES exams(id)
);

