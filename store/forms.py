from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired, Length, EqualTo, ValidationError
from store.models import User

class RegisterForm(FlaskForm):
  def validate_username(self, username_to_check):
    user = User.query.filter_by(username=username_to_check.data).first()
    if user:
      raise ValidationError('User name already exists!')
  
  username = StringField(label='User Name:', validators=[Length(min=2, max=30)])
  password1 = PasswordField(label='Password:', validators=[Length(min=6)])
  password2 = PasswordField(label='Confirm Password:', validators=[EqualTo('password1')])
  submit = SubmitField(label='Create Account')
  
  
class LoginForm(FlaskForm):
  username = StringField(label='User Name:', validators=[DataRequired()])
  password = PasswordField(label='Password:', validators=[DataRequired()])
  submit = SubmitField(label='Sign in')