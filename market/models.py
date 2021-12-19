from enum import unique
from market import db

class User(db.Model):
  id = db.Column(db.Integer(), primary_key=True)
  username = db.Column(db.String(length=30), nullable=False, unique=True)
  password_hash = db.Column(db.String(length=60), nullable=False)
  

class Item(db.Model):
  # isbn = db.Column(db.Integer(), primary_ket=True)
  # title = db.Column(db.String(length=30), nullable=False, unique=True)
  # price = db.Column(db.Integer(), nullable=False)
  id = db.Column(db.Integer(), primary_key=True)
  name = db.Column(db.String(length=30), nullable=False, unique=True)
  price = db.Column(db.Integer(), nullable=False)
  barcode = db.Column(db.String(length=12), nullable=False, unique=True)
  description = db.Column(db.String(length=1024), nullable=False, unique=True)
  
  def __repr__(self):
    return f'Item {self.name}'