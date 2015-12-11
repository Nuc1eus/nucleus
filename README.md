# Nucleus

Mobile Retail Inventory Management System.

We built a management inventory system!

We want our users to be able to register and login to the website.
As a user , we want to be able to create, read , update and delete items from a postgres sql database.
As a user , we want to be able to search for products by category, name, price, etc.


We built the application using Sinatra with a ActiveRecord ORM to communicate to our Postgres database. We developed a back end using MVC design and rendered front-end content with a combination of html, css , javascript and embedded ruby. We create a register and login system using BCrypt ruby gem to encrypt our users'
passwords before saving them to our database.

We began by user stories and wire frames to map out our website design. We divided work using trello to help us with project management and communication.



Our github repository: https://github.com/Nuc1eus/nucleus

Some links to our wireframes: https://www.lucidchart.com/documents/edit/9b1ca485-4778-4361-b780-791150091dd9#?=undefined

In order to install and have a working application locally you will need to have  a postgres database installed. Use the migrations file to create your database. Use the seed file to seed your database. bundle and ruby will have to be installed locally. Bundle then rackup. You will then beable to register and login to the locally run website and add items.

Open Issues:

We would like to eventually implement barcode scanning to search and create items.
We would like to create a native mobile application for android and iphone.
We still would like to take some time for some over all polish.

Our website is hosted on a digital ocean website: http://104.131.92.1
