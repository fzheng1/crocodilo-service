const Pool = require("pg").Pool

const pool = new Pool({
    user: "postgres",
    password: "mynamenigel",
    database: "crocodiloDB",
    host: "crocodilo-db.ctakohz82bfj.us-east-2.rds.amazonaws.com",
    port: 5432
})

module.exports = pool