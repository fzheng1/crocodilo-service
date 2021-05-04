require("dotenv").config()
const Pool = require("pg").Pool

const pool = new Pool({
    user: process.env.AWS_POSTGRES_USERNAME,
    password: process.env.AWS_POSTGRES_USERNAME,
    database: process.env.AWS_POSTGRES_DB_NAME,
    host: process.env.AWS_POSTGRES_HOST,
    port: process.env.AWS_POSTGRES_PORT
})

module.exports = pool