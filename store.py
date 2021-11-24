from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
@app.route('/home')
def home_page():
  return render_template('home.html')

@app.route('/market')
def market_page():
  items = [
    {'id': 1, 'title': 'Arcane', 'ISBN': '893212299897', 'price': 500},
    {'id': 2, 'title': 'War and peace', 'ISBN': '123985473165', 'price': 900},
    {'id': 3, 'title': 'The story of art', 'ISBN': '231985128446', 'price': 150}
  ]
  return render_template('market.html', items=items)

# @app.route('/about/<usertitle>')
# def about_page(usertitle):
#   return f'<h1>This is the about page of {usertitle}</h1>'