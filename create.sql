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