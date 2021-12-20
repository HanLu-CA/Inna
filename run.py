

from store import app

if __name__=="__main__":
  app.run(debug=True)



# @app.route('/about/<usertitle>')
# def about_page(usertitle):
#   return f'<h1>This is the about page of {usertitle}</h1>'