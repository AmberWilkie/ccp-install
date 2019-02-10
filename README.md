# Ruby on Rails application with Comet Chat Pro

This example app shows how to build one-on-one chats with Comet Chat Pro.

### Getting Started
- `rails new cometchatpro`
- `rails generate model User name:string ccp_id:string profile_url:string avatar_url:string`
- Add API key and App ID from Comet Chat to `.env` file; add `dotenv-rails` to Gemfile; `bundle`.
- `rails generate controller Users`, add to `routes.rb`
- Add view for `users/new`.
- Add view, routing and controller action for `/users/show/:id`. Use flash messages in the controller.
- Add Javascript methods for fetching previous messages and sending new messages.
- Add Javascript listener for grabbing new messages. Further, append new sent messages to the message list.
- Style


## To do
- ~~Add "create user" form so we can make new users.~~
- ~~Make post requests when you create users to CometChat to get UUIDs for them.~~
- ~~Install chat, use forms to send messages~~
- ~~List users, create chat page~~
- ~~Get messages via form.~~
- ~~Index page to list and select a user.~~
- Basic styling


SCREENSHOTS

Jump straight into the code or read the accompanying step-by-step guide here on our blog.

## Technology
This demo uses:

* CometChat Pro
* Ruby on Rails 5.2.1
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem)
* [Styling](https://bootsnipp.com/snippets/exZX3)

## Running the demo locally
* Download the repository [here](https://github.com/cometchat-pro/javascript-reactjs-chat-app.git) or by running `git clone https://github.com/cometchat-pro/javascript-reactjs-chat-app.git`
* Next step

## Useful links

* 📚Tutorial showing how we built this example
* ℹ️CometChat homepage
* ℹ️CometChat Javacript documentation

## Other examples

* [Complete JS app](https://github.com/cometchat-pro/javascript-reactjs-chat-app)
