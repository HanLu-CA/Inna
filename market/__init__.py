from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)


#set database connection
app.config['SQLALCHEMY_DATABASE__URI'] = 'postgresql:///bookstore.db'

db = SQLAlchemy(app)

from market import routes