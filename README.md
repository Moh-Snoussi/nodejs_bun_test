# nodejs_mysql

A simple nodejs and bun similar applications that runs on port 3000. they use mysql database to fetch data and render html template using ejs
nodejs application is in node_server.js and bun application is in bun_server.js

## Requirements
- mysql server

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

