# Horsee App

Web app for riders to manage their rides, training sessions and horses. Features weather, calendar, reminders (email and in-app) and posts.
www.horsey-diary.herokuapp.com 🐴 . 
 
## Specs
- Ruby 2.4.1
- Ruby on Rails 5
- PostgreSQL

## Also Using
- Dark Sky API
- Select2
- Bookstrap 4
- Flatpickr
- jQuery
- Amazon S3 (not locally)
## To Run Locally

Pull or download ths repo. Make sure you have ruby 2.4+ and rails 5+ on your machine. 

rails db:create

rails db:migrate

rails db:seed (important: only one this ONCE. This will create the categories. It does not create anything else) 

You should be able to to run the app now with rails s. However, you will need to add your own users, posts, horses, etc. 

### Known Issues
- Oh, how there are many! 😳
- Not production ready
- Shows ALL horse instead of user's horses in the ride/session new/edit.
- Fetches user's location every time upon viewing weather 
- Horse avatars don't display in production 

### Planned Features
- filtering
- ability to archive horses
- better media insertion/managment
- handle video and media links
- better post creation experince  
- save user location 
- create items from calendar 
