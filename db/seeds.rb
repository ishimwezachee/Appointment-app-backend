User.create(name: 'Roland', email: 'roland@gamil.com', password: '123456', )

Item.create(name: 'Gints', title: 'Speciality', description: 'Really a good dr.', image: 'https://avatars.githubusercontent.com/u/43877689?v=4', price: 100)

Item.create(name: 'Aku', title: 'Doctor', description: 'Really a good dr. to be', image: 'https://avatars.githubusercontent.com/u/43877689?v=4', price: 200)

Reservation.create(start_time: '2022-04-27T12:42:45.134Z', end_time: '2022-04-27T12:42:45.154Z', user_id: 1, item_id: 1)
Reservation.create(start_time: '2022-04-28T12:42:45.134Z', end_time: '2022-04-28T13:42:45.134Z', user_id: 2, item_id: 2)
