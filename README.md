# Appointment-app-backend
In this app, User can login/sign up. The user can see the list of doctors.
Then the user can booked an appointment to see the doctor in a specific date.
Also, the user can remove an appointment
The app is using for genrating api endpints with(create/view/delete/update ) functions.

## Built With

- Ruby
- Ruby on Rails
- Javascript
- React
## Getting Started

This endpint will genrate list of items:

http://localhost:3001/items

```
[
  {
    "id": 1,
    "name": "Gints",
    "title": "Dentist",
    "description": "Really a good dr.",
    "image": "https://avatars.githubusercontent.com/u/43877689?v=4",
    "price": null,
    "created_at": "2022-05-06T10:22:58.041Z",
    "updated_at": "2022-05-06T10:22:58.041Z",
    "likes_counter": null,
    "reviews_counter": null,
    "location": null
  }]

```
This will show the list of reservations:

http://localhost:3001/reservations
```
[
  {
    "id": 1,
    "created_at": "2022-05-06T10:22:58.325Z",
    "updated_at": "2022-05-06T10:22:58.325Z",
    "user_id": 1,
    "item_id": 1,
    "visit_type": "reservation1",
    "start_time": "2022-05-19",
    "end_time": "2022-05-20"
  }]
  ```

  If you prefer to clone the project locally, you can also get to the docs by navigating to http://localhost:3001/api-docs/index.html. There you will see a list of all endpoints and their descriptions.

To get a local copy up and running follow these simple example steps.



git clone https://github.com/ishimwezachee/hello-rails-back-end.git

cd hello-rails-back-end

### Setup




Install npm with:

```
npm i
```
Install gems with:

```
bundle install
```
Setup database with:

```
rails db:create
rails db:migrate

```
### Usage

Start server with:

```
rails server
```

Open http://localhost:3001/ in your browser.

UI-PULL-REQUEST: [ui-pull-request-link](https://github.com/ishimwezachee/hello-react-front-end/pull/1)

### Run tests

Install rspec with:

```
bundle install
```

and

```
rails generate rspec:install
```

run the test with:

```
rspec spec
```
API DOC:




👤 **Zachee Ishimwe**

- GitHub: [@zacheeIshimwe](https://github.com/ishimwezachee)
- LinkedIn: [@zacheeIshimwe](https://www.linkedin.com/in/zachee-ishimwe-ab952a119/)

👤 **Aku Khan**

- GitHub: [@aakbarkhan](https://github.com/aakbarkhan)
- Twitter: [@aaku_mdakbar](https://twitter.com/aaku_mdakbar)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/akuu-khan/)

👤 **RolandM99**

- GitHub: [@RolandM99](https://github.com/RolandM99)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/roland-mweze/)
- Twitter: [@ManfulMwez](https://twitter.com/ManfulMwez)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments 
- [Murat Korkmaz Design on Behance](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)
- Rémi Rucojevic codepen


## License

This project is [MIT](./MIT.md) licensed.



