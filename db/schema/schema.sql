-- Drop exisitng tables if they exist
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS clothes CASCADE;
DROP TABLE IF EXISTS messages CASCADE;
DROP TABLE IF EXISTS favorites CASCADE;

--Create users Table
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone_number VARCHAR(16)
);

--Create clothes Table
CREATE TABLE clothes (
  id SERIAL PRIMARY KEY NOT NULL,
  admin_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  category VARCHAR(100) NOT NULL,
  product_name TEXT,
  price INTEGER NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  status VARCHAR(30) DEFAULT 'available'
);

--Create messages Table
CREATE TABLE messages (
  id SERIAL PRIMARY KEY NOT NULL,
  sender_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  receiver_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  cloth_id INTEGER REFERENCES clothes(id) ON DELETE CASCADE,
  message TEXT,
  time_message TIMESTAMP NOT NULL DEFAULT NOW()
);

--Create favorites Table
CREATE TABLE favorites (
  id SERIAL PRIMARY KEY NOT NULL,
  customer_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  cloth_id INTEGER REFERENCES clothes(id) ON DELETE CASCADE
);
