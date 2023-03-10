npm install -g --save sequelize-auto mysql2

sequelize-auto -o "./src/database/models" -d movies_db -h localhost -u root -p 3306 -x -e mysql

sequelize-auto -o   "ruta-de-los-arcivos" -d nombreDB -h   ip -u     usuario -p puerto -x -e motor-de-bdd