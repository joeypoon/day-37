Day 37 - Producing APIs
=======================


Today:
------

* [jbuilder](https://github.com/rails/jbuilder)
* REST
* `resources :posts` in the router

Assignment
----------

Create a Rails app that allows a client to list all Posts via an API.

* GET `/posts` to return all posts
* GET `/posts/:id` gives details of a post
* POST `/posts` creates a post
* PUT `/posts/:id` updates a post
* PATCH `/posts/:id` updates a post
* DELETE `/posts/:id` deletes a post

To test your API, run the attached `api_runner.rb`. It should output

```
Found 0 posts
Created post with id: 3
Setting title to Macbook
Title is now MacBook
Deleting...
Found 0 posts
```
