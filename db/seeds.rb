User.create(name: 'Roland', email: 'roland@gamil.com', password: '123456' )

Item.create(name: 'Gints', title: 'Dentist', description: 'Really a good dr.', image: 'https://avatars.githubusercontent.com/u/43877689?v=4')
Item.create(name: 'Aku', title: 'Hematologists', description: 'Really a good dr. to be', image: 'https://avatars.githubusercontent.com/u/43877689?v=4')
Item.create(name: 'Mucyo', title: 'Cardiologists', description: 'Really a good dr. to be', image: 'https://avatars.githubusercontent.com/u/43877689?v=4')

Item.create(name: 'Chriss', title: 'Family Physicians', description: 'Really a good dr. to be', image: 'https://cdn10.phillymag.com/wp-content/uploads/sites/3/2019/11/Temple-Student-Sean-Brown-900-600.jpg')
Item.create(name: 'John', title: 'Radiologists', description: 'Really a good dr. to be', image: 'https://mednetwork.net/wp-content/uploads/2021/02/doc.png')



Reservation.create(start_time: '2022-05-19', end_time: '2022-05-20', visit_type: 'reservation1', user_id: 1, item_id: 1)
Reservation.create(start_time: '2022-05-25', end_time: '22022-06-19', visit_type: 'reservation2', user_id: 2, item_id: 2)
