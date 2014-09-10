# stack

## About

A clone of Stack Overflow.


## CURRENTLY WORKING ON:

Authentication


## User Stories

* As a user, I want to ask a question, so that I can get help with a programming problem I'm having. Users must have an account and sign in to ask questions.

* As a user, I want to answer a question, so that I can help somebody else out. Use AJAX to add a response to the question's page without reloading it!

* As a user, I want to view a question and its responses, so that I can get help if I'm having the same problem.

* As a user who asked a question, I want to choose the best answer, so that it is displayed before the other answers and future users see it first. Use AJAX when the user makes their choice, so that the page doesn't need to reload.

* As a user who didn't ask a question, I want to vote on which answer I think is best, so that higher-voted answers display higher on the page. Another good candidate for AJAX! Hint: Make votes a join table between users and answers.

* As a user, I want to search questions, so that it's easier to find what I'm looking for. Hint: Use the Textacular gem for searching.

* As a user, I want my searches to also look through responses, to increase the chances of finding what I'm looking for. Hint: Create a Ruby object called Search that runs searches on Question and Response and combines the answers, something like:
app/models/search.rb

class Search
  def self.find(query)
    Question.basic_search(query) + Response.basic_search(query)
  end
end

This is totally untested and is just to give you an idea of the direction to go :)

* As a user, I want to vote up questions I like, so that awesome questions get displayed higher on the list of questions and on search results. Hint: make votes polymorphic.

## Setup

1. Clone the repository using `$ git clone`
1. Run `$ rake db:create`, `$ rake db:migrate`, and `$ rake db:seed` from the directory you cloned into
1. Run `$ rails server`
1. Go to [http://localhost:3000/](http://localhost:3000/) in a web browser to use the program.

## Meta

10 September 2014


[Katharine Chen](http://github.com/katharinechen) and [Andrew M Westling](http://github.com/expandrew)
via [Epicodus](http://www.learnhowtoprogram.com/lessons/stack-overflow-clone)

## License
MIT

