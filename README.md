# README


# IMDB PROJECT

## Objectives
Ruby on Rails application that uses

A sqlite database ActiveRecord Restful routes , Sessions , Login/Logout , Api 

## Overview
The goal of this project is to build IMDB check all movies and series that you can add to your Favorite List  .

There is implementing IMDB using multiple objects that interact, including separate classes for User , Movie , Series and Favorite.

A user is not be able to take any actions , unless they are logged in. Once a user is logged in, they are able to see Movies ,Series list and Favorite list to add movies and series to that list.

There are controller tests to make sure that you build the appropriate controller actions that map to the correct routes.

Gemfile and environment.rb
This project is supported by bundler and includes a Gemfile.

Run bundle install before getting started on the project.

## Rails response
Config/routes - matches route with controller/action
logic in action will process the request
Controller may interact with model
Render view with given data

## Nested Routes
No Nested Routes

## Patterns for defining  routes
Define Routes config/routes
Handle Request in our controller
movies/ for index
series/ for index

## Models
There are 5 models in app/models, one User model , one Movie, Series , Favorite Movie and one Favorite Series . Both classes are inherit from ActiveRecord::Base.

## Migrations
You are three migrations to create the users , movies, series and favorite tables.

Users are have a email, and password, and has many favorite list.

Movies and Series has many favorite movies and series
Favorite belongs to Movie , Series and User

## Associations
There are relationship between users , movies , series and favorite.

## Home Page
There is a controller action to load the home page. You will want to create a view that will eventually link to both a login page and signup page. The homepage is responding to a GET request to /movies , /series.

## Movies and Series Index Page
There is a controller action that will load the movies and series list page. You cant see movies and series page without logged in user


## Show Movie and Serie
You will need to create a controller action that displays the information for a single movie and serie . You will want the controller action to respond to a GET request to /movies/:id.

## Add your Favorite list 
You will have click "Add your favorite list" button. 

## Sign Up
There are two controller actions, one to display the user signup and one to process the form submission. The controller action that processes the form submission should create the user and save it to the database.

The form to sign up should be loaded via a GET request to /signup and submitted via a POST request to /signup.

Make sure you add the Signup link to the home page.

And you can login with Google also. You dont have to sign up .

## Log In
The form to login is loaded via a GET request to /login and submitted via a POST request to /login.

## Log Out
There are controller action to process a GET request to /logout to log out. The controller action should clear the session hash, and redirect the user to /movies and /series.

## Protecting The Views
No one can see , Movies , Series and favorite lists unless they're logged in.

There are two helper methods current_user and logged_in?. I use these helper methods to block content if a user is not logged in.

Dont forget to bundle install before start

