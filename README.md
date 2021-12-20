#Inna

dependencies:
  python3
  
  
  pip install flask
  pip install flask_sqlalchemy
  pip install flask-wtf
  pip install wtforms
  pip install flask_bcrypt
  pip install flask_login
  
  
  usage:
    python3 run.py

 Author:
    Shizhong Shang 
    Han Lu

 Introduction:
    The web can check if the user is a manager or a buyer, after the user input the username and the password, the web will auto send these two kinds of users into two interfaces(users’ info is in the Regested_user database). 
    The manager can check the background info from the manager interface(income, outcome, publisher info, book in stock), the manager can add/remove books from this web, so the buyer can have more books to buy or cannot buy the removed book anymore(all the books’ info is in the Book database). 
    The buyer can find the book by book info(name, author, genre, ISBN),after a book is selected, all the book info will be shown on the web page(name, author, genre, ISBN, page number, introduction), the buyer can also add/remove a book from the shopping car, the shopping car can have more than one book. 
    When the buyer gets into the checkout page, the shipping address and the billing address are asked to be provided by the buyer, then the buyer will get the tracking number to track their orders(all this information will be stored in the Address, Postcode and Check_out, Purchase_item database) .
    This system can also auto check if the book in stock is less than 10, if it is, the system will send an email to the publisher to order the same amount of book as the last month's sold number(publisher’s info can be found in the Publisher database).
