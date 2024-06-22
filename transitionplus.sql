-- Step 1: Create the Database
CREATE DATABASE transitionplus;

-- Step 2: Use the transitionplus database
USE transitionplus;

-- Step 3: Create the users Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    category ENUM('admin', 'student', 'mentor') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 4: Create the scholarship Table
CREATE TABLE scholarship (
    scholarship_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    application_deadline DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 5: Create the mentorship Table
CREATE TABLE mentorship (
    mentorship_id INT AUTO_INCREMENT PRIMARY KEY,
    mentor_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mentor_id) REFERENCES users(user_id) ON DELETE CASCADE
);
