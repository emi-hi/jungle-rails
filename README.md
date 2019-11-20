# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. 

Tested with Rspec and Capybera.

Users can create accounts, view products on the main page, click products to view individual details, add to cart, and complete orders (purchase) using a credit card. Admin can create new products, categories, and sales. If there is a current sale, the new prices will be displayed along side the original price. 


main page
!["screenshot of main page"](https://github.com/emi-hi/jungle-rails/blob/master/docs/main_page.png)

login
!["screenshot of login page"](https://github.com/emi-hi/jungle-rails/blob/master/docs/login.png)

registration
!["screenshot of registration page"](https://github.com/emi-hi/jungle-rails/blob/master/docs/register.png)

viewing a product's details
!["screenshot of product detail page"](https://github.com/emi-hi/jungle-rails/blob/master/docs/product_details.png)

if your cart is empty
!["empty cart message!"](https://github.com/emi-hi/jungle-rails/blob/master/docs/empty_cart.png)

after adding an item to the cart
!["view of cart"](https://github.com/emi-hi/jungle-rails/blob/master/docs/my_cart.png)

paying with stripe
!["stripe details"](https://github.com/emi-hi/jungle-rails/blob/master/docs/stripe_payment.png)

order confirmation + details
!["order details"](https://github.com/emi-hi/jungle-rails/blob/master/docs/order_details.png)

admin menu
!["admin menu"](https://github.com/emi-hi/jungle-rails/blob/master/docs/admin_dropdown.png)

admin >> products
!["admin menu"](https://github.com/emi-hi/jungle-rails/blob/master/docs/admin_products.png)

admin >> create new product
!["admin create product"](https://github.com/emi-hi/jungle-rails/blob/master/docs/admin_products_new.png)

admin >> categories
!["admin categories"](https://github.com/emi-hi/jungle-rails/blob/master/docs/admin_categories.png)

admin >> sales
!["admin sales"](https://github.com/emi-hi/jungle-rails/blob/master/docs/admin_sales.png)

about
!["about us"](https://github.com/emi-hi/jungle-rails/blob/master/docs/about.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

