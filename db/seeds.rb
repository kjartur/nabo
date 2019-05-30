User.create!([
  {email: "julian@julian.de", password: "123456789", first_name: "Julian", last_name: "Hermann", rating: nil, coins: 5, address: "Rudi-Dutschke-Straße 26", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "image/upload/v1559143137/qsaaajwd5fwycu4ix5hg.png", bio: "Hi", city: "Berlin"},
  {email: "julian.hermann89@gmail.com", password: "123456789", first_name: "Julian", last_name: "Hermann", rating: nil, coins: -70, address: "Rudi-Dutschke-Straße 26", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "image/upload/v1559142433/dutquotbczuegrodlkm7.png", bio: "Hi I'm Julian, look forward to meeting you! Bye", city: "Berlin"}
])
Task.create!([
  {address: "Prenzlauer Berg", date: "2019-05-29 17:48:00", description: "Need help finishing these beers", amount_coins: 15, user_id: 1, title: "Drink beers", post_code: 312133, completed: true, latitude: nil, longitude: nil},
  {address: "Munich", date: "2019-05-30 09:44:00", description: "argrsegwrg", amount_coins: 12, user_id: 1, title: "ata4tae4a", post_code: 424234, completed: nil, latitude: nil, longitude: nil}
])
Offer.create!([
  {state: "pending", user_id: 1, task_id: 1, completed_by_owner: nil, completed_by_helper: nil, comments: "fglfgödfgöädlgöädfglöäfdgdföälgädfölgdfälögldöägläfg"},
  {state: "pending", user_id: 1, task_id: 1, completed_by_owner: nil, completed_by_helper: nil, comments: "I only drink Augustiner, got any of those? Also, I'd like 18 coins "},
  {state: "pending", user_id: 1, task_id: 1, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi"},
  {state: "pending", user_id: 1, task_id: 1, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi"}
])

