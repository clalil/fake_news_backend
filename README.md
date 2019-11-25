## Fake News - The newsroom challenge

The application was created in October & November of 2019, as a three week project during the the Craft Academy [Full Stack Web Developer Bootcamp](https://craftacademy.se/english/).  

---
### Authors
[Clarissa Liljander](https://github.com/clalil)  
[Sverrir Steindorsson](https://github.com/shsteindorsson)  
[Jonas Masqua]()  
[Luca Lobacher]()  
[Alex Saxena]()  

## Built with  
Back-end API:
- [Ruby on Rails](https://rubyonrails.org/), version 6.0.0  
- [RSpec](https://rspec.info/), for unit testing  

Front-end Client:
- [React](https://rspec.info/), version 16.11.0  
- [React Native](https://github.com/facebook/react-native), for the mobile version 
- [Cypress](https://www.cypress.io/), for automated testing  
- [Semantic UI React](https://react.semantic-ui.com/) and CSS, for UX 

### Dependencies  
Back-end API:
* [Pundit](https://github.com/varvet/pundit)
* [AWS](https://rubygems.org/gems/aws-sdk-s3/versions/1.0.0.rc2)  
* [Stripe](https://github.com/stripe/stripe-ruby)  
* [Stripe-ruby-mock](https://github.com/rebelidealist/stripe-ruby-mock)
* [Faker](https://github.com/faker-ruby/faker)  
...please see our Gemfile to view all of our dependencies in this project. 

Front-end Client:
* [Axios](https://github.com/axios/axios)
* [Redux & Redux Token Auth](https://github.com/kylecorbelli/redux-token-auth)
* [Amazon webstorage](https://aws.amazon.com/), for storing user generated images 
* [Stripe](https://stripe.com/), for payment options
* [i18next](https://www.i18next.com/), for internationalization (incl. browser-language-detector and xhr-backend)  
...please see our package.json file to view all of our dependencies in this project.  

---
## Deloyment URL
This application consists of a front-end Client and a back-end API. Our team's CraftAcademy repos are found at:  
[Front-end Deployment](https://newsroom-fake-news.netlify.com/) and [Front-end GitHub](https://github.com/CraftAcademy/fake_news_client)  
[Front-end Github for mobile version](https://github.com/CraftAcademy/fake_news_mobile)  
[Back-end Deployment](https://.herokuapp.com/) and [Back-end GitHub](https://github.com/CraftAcademy/fake_news_backend)

---
## User Stories & Project Management
Our team worked agile over a three week timeline using 7 day sprints beginning with a three-day design sprint. For more information, please read our user stories and our features on our [Pivotal Tracker board](https://www.pivotaltracker.com/n/projects/2407392). 

---
## Getting Started
If you want to try out the code for yourself on your local machine:  
### API
Fork the Fake news API repo, clone it down.  
Run the following command to to install all of the dependencies above and some additional ones on your computer:
>$ bundle   

Then run this command to create a database and populate it with users, journalists and articles:  
>$ rails db:create db:migrate db:seed
  
To run the application locally on your computer:
>$ rails s  

To run the unit tests:
>$ rspec

### Client
Fork the Fake News Client repo, clone it down.  
This command will install all of the dependencies on your computer: 
>$ yarn install

To run the application locally on your computer:
>$ yarn start

To run all of our feature tests:
>$ yarn cy:open

---
## Test Coverage and Continuous Integration (CI)
[Coveralls](https://coveralls.io/) was used to test our code coverage during this project.  
Continuous integration was handled using [Semaphore](https://semaphoreci.com/).  

---
## Acknowledgements
- [StackOverflow](https://stackoverflow.com/)
- [Pexels](https://www.pexels.com/)

---
## Special Thanks
To our coaches and staff at [Craft Academy](https://craftacademy.se/)!

## License
This project is under the [MIT](https://opensource.org/licenses/MIT)-license
