# Ruby on Rails application with Comet Chat Pro

### Getting Started
- `rails new cometchatpro`
- `rails generate model User name:string ccp_id:string profile_url:string avatar_url:string`
- Add API key and App ID from Comet Chat to `.env` file; add `dotenv-rails` to Gemfile; `bundle`.
- `rails generate controller Users`, add to `routes.rb`
- Add view for `users/new`.
- Add view, routing and controller action for `/users/show/:id`. Use flash messages in the controller.


## To do
- Add "create user" form so we can make new users.
- Make post requests when you create users to CometChat to get UUIDs for them.
- Basic styling
- Install chat, use forms to send messages
- Get messages via form.
