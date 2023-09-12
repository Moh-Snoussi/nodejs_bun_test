# nodejs_mysql

A simple nodejs and bun similar applications that runs on port 3000. they use mysql database to fetch data and render html template using ejs
nodejs application is in node_server.js and bun application is in bun_server.js

## Requirements

### nginx
#### install nginx
```bash
sudo apt install nginx -y
```

#### configure nginx
```bash
cd nginx
sudo cp qa_polls.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/qa_polls.conf /etc/nginx/sites-enabled/
```

#### restart nginx
```bash
sudo systemctl restart nginx
```

### mysql server
#### install mysql server
```bash
sudo apt install mysql-server -y
```

#### create database
```bash
sudo mysqladmin -u root -p create qa_polls
```s

#### create user
```bash
sudo mysql
```
```sql
CREATE USER 'qa_polls'@'localhost' IDENTIFIED BY 'qa_polls';
GRANT ALL PRIVILEGES ON qa_polls.* TO 'qa_polls'@'localhost';
```

#### import the database
```bash
cd mysql_dumps
sudo mysql -u qa_polls -p qa_polls < qa_polls.sql
```


## Installation

### nodejs
```bash
# install nodejs
curl -s https://deb.nodesource.com/setup_18.x | sudo bash
sudo apt install nodejs -y

# install dependencies
npm install

# start server
```bash
node node_server.js
```

### bun
```bash
# install bun
curl -fsSL https://bun.sh/install | bash

# install dependencies
bun install

# start server
bun bun_server.js
```

