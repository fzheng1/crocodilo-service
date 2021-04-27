# crocodilo-service
service for crocodilo-bot

# Get Started
`npm nigel` is used to start the server during development. Use this to run the service locally (literally just type npm nigel and itll start). This will use `babel-node` to serve our `/src` directory, so we can skip the build step. Note that the production script uses regular `node`, this will serve the `babel` transpiled code, but we circumvent this in dev as we will be making a lot of changes and do not want to be rebuilding every 5 seconds.

`npm prestart` script builds the content of the `src/` folder and puts it in the `build/` folder. When you issue the npm start command, this script runs first before the other scripts script.

`npm start` script now serves the content of the `build/` folder instead of the `src/` folder. This is the script you’ll use when we serve the file in production.

# Needs Work
Currently our file imports need the `.js` extension because of how ES6 works. If someone would like to fix this, it would be much appreciated. 

# Resources
Boilerplate code was set up using this tutorial, please take a look to get familiarized with setup:
https://www.smashingmagazine.com/2020/04/express-api-backend-project-postgresql/

