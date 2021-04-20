const express = require("express")
const app = express()
const pool = require("./db.js")

// ROUTES //

// Get all users

// Get a user

// create a user
/* SAMPLE CREATE ENDPOINT WITH DB
app.post("/users", async(req, res) => {
    try {
        const { description } = req.body
        const newUser = await pool.query(
            "INSERT INTO users (description) VALUES ($1)",
            [description]
        )
        console.log(req.body)
    } catch (err) {
        console.error(err.message)
    }
})
*/

// update a table

// delete a table


app.listen(5000, () => {
    console.log("server is listening on port 5000")
})