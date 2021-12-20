from store import db, login_manager
from store import bcrypt
from flask_login import UserMixin


@login_manager.user_loader
def load_user(user_id):
  return User.query.get(int(user_id))

class User(db.Model, UserMixin):
  id = db.Column(db.Integer(), primary_key=True)
  username = db.Column(db.Text(), nullable=False, unique=True)
  password_hash = db.Column(db.Text(), nullable=False)
  
  @property
  def password(self):
    return self.password
  
  @password.setter
  def password(self, plain_text_password):
    self.password_hash = bcrypt.generate_password_hash(plain_text_password).decode('utf-8')
    
  def check_password_correction(self, attempted_password):
    return bcrypt.check_password_hash(self.password_hash, attempted_password)
    
    
  
class Publisher(db.Model):
  name = db.Column(db.String(length=30), primary_key=True)
  address = db.Column(db.String(length=30), nullable=False, unique=True)
  email = db.Column(db.String(length=30), nullable=False, unique=True)
  phone = db.Column(db.Integer(), nullable=False)
  banking_accout = db.Column(db.String(length=30), nullable=False, unique=True)
 
# class Book(db.Model):
#   isbn = db.Column(db.Integer(), primary_key=True)
#   title = db.Column(db.String(length=30), nullable=False, unique=True)
#   genre = db.Column(db.String(length=30), nullable=False)
#   author = db.Column(db.String(length=30), nullable=False)
#   pub_name = db.Column(db.String(length=30), db.ForeignKey('Publisher.name'))
#   pages = db.Column(db.Integer(), nullable=False)
#   import_price = db.Column(db.Integer(), nullable=False)
#   sell_price = db.Column(db.Integer(), nullable=False)
#   stock = db.Column(db.Integer(), nullable=False)
#   description = db.Column(db.String(length=1024), nullable=False, unique=True)
  
class Item(db.Model):
  cart_id = db.Column(db.Integer(), primary_key=True)
  isbn = db.Column(db.Integer())
  quantity = db.Column(db.Integer(), nullable=False)
  
# class Cart(db.Model):
#   cart_id = db.Column(db.Integer(), primary_key=True)
#   # user_id
  
  
# class Address(db.Model):
#   aid = db.Column(db.Integer(), primary_key=True)
#   name = db.Column(db.String(length=30), nullable=False, unique=True)
#   street = db.Column(db.String(length=30), nullable=False, unique=True)
#   postal_code = db.Column(db.String(length=7), db.ForeignKey('PostalCode.postal_code'))
  
# class PostalCode(db.Model):
#   postal_code = db.Column(db.String(length=7), primary_key=True)
#   city = db.Column(db.String(length=30), nullable=False)
#   province = db.Column(db.String(length=30), nullable=False)
  
# class Record(db.Model):
#   rid = db.Column(db.Integer(), primary_key=True)
#   amount = sell_price = db.Column(db.Integer(), nullable=False)
#   type = db.Column(db.String(length=30), nullable=False, unique=False)
#   # date = 

  

  
#   def __repr__(self):
#     return f'Item {self.name}'
  
# class Order(db.Model):
#   owner = db.Column(db.Integer(), db.ForeignKey('user.uid'))