# Ruby on Rails application with Comet Chat Pro

This example app shows how to build one-on-one chats with Comet Chat Pro.

### Getting Started
Here's how I progressed through this app. If you wanted to start from scratch, you'd follow similar steps.
- `rails new cometchatpro`
- `rails generate model User name:string ccp_id:string profile_url:string avatar_url:string`
- Add API key and App ID from Comet Chat to `.env` file; add `dotenv-rails` to Gemfile; `bundle`.
- `rails generate controller Users`, add to `routes.rb`
- Add view for `users/new`.
- Add view, routing and controller action for `/users/show/:id`. Use flash messages in the controller.
- Add Javascript methods for fetching previous messages and sending new messages.
- Add Javascript listener for grabbing new messages. Further, append new sent messages to the message list.
- Style


## Screenshots
[screenshot 1](screenshot1.png)
[screenshot 2](screenshot2.png)

## Technology
This demo uses:

* CometChat Pro
* Ruby on Rails 5.2.1
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem)
* [Styling](https://bootsnipp.com/snippets/exZX3)

## Running the demo locally
* Download the repository [here](https://github.com/AmberWilkie/ccp-install) or by running `git clone https://github.com/AmberWilkie/ccp-install`
* `bundle install` to download dependencies
* `rails db:migrate RAILS_ENV=development` to migrate your database to allow user creation.
* Create a `.env` file in the root of your folder with your CometChatPro credentials. It should look like this:
```ruby
COMETCHAT_APP_ID=23n2f2n3p2y3
COMETCHAT_API_KEY=av22g24ll
```
* `rails s -p4000` will start your local server.
* Go to `localhost:4000` to get started!

## Other examples

* [Complete JS app](https://github.com/cometchat-pro/javascript-reactjs-chat-app)
