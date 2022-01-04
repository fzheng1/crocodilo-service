from flask import Flask
from flask_migrate import Migrate
import os
from models import User, db

app = Flask(__name__)
#app.config.from_object(os.environ['APP_SETTINGS'])
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
env_config = os.getenv("APP_SETTINGS", "config.DevelopmentConfig")
app.config.from_object(env_config)
db.init_app(app)
migrate = Migrate(app, db)

import routes

if __name__ == '__main__':
    app.run()