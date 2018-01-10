# Horsee App

Web app for riders to manage their rides, training sessions and horses. Features weather, calandar and posts.
www.horsey-diary.herokuapp.com 🐴

## Specs
- Ruby 2.4.1
- Ruby on Rails 5
- PostgresSQL

## Also Using
- Dark Sky API
- Select2
- Bookstrap 4
- Flatpickr
- jQuery

### To Run Locally

Pull or download ths repo 

rails db:create

rails db:migrate

rails db:seed (important: only one this ONCE. This will create the categories. It does not create anything else) 

You should be able to to run the app now with rails s. However, you will need to add your own users, posts, horses, etc. 

## Known Issues

Not production ready
Shows ALL horse instead of user's horses in the ride/session new/edit.
Fetches user's location every time upon viewing weather 


