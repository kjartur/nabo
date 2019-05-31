User.create!([
  {email: "user@mail.com", encrypted_password: "$2a$11$NY.7yd9KoT3HFpEws9L87OwtngO3K1ApK55WDJpT66rh104X.HEPy", first_name: "Username1", last_name: "Username2", rating: nil, coins: 5, address: "Russian Federation", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "image/upload/v1559142902/s7afu3k3rwtrywqrg51m.jpg", bio: "Hi", city: "Moscow"},
  {email: "user1@mail.com", encrypted_password: "$2a$11$wWZEQSQxKDAWBp/DgseRZeiqrtDnEaL41MsbQv4FcQx.c9z0jwojO", first_name: "Username3", last_name: "Username4", rating: nil, coins: 5, address: "Russian Federation", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "image/upload/v1559163973/kh9unkukukurquam3fwh.jpg", bio: "Hi i am a user", city: "Saint_Petersburg"},
  {email: "user2@mail.com", encrypted_password: "$2a$11$p2z8CClrPHlr6kNnPBKxvOavjmNaEytPppoJV6dPjbtUlvXovWs/S", first_name: "username21", last_name: "username22", rating: nil, coins: 5, address: "Russian Federation", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "image/upload/v1559211177/u2iuwnv1ktrhificcf2b.jpg", bio: "Hi im here", city: "Kaliningrad"}
])
Offer.create!([
  {state: "pending", user_id: 3, task_id: 4, completed_by_owner: nil, completed_by_helper: nil, comments: "i can help"},
  {state: "pending", user_id: 3, task_id: 6, completed_by_owner: nil, completed_by_helper: nil, comments: "ok"},
  {state: "pending", user_id: 3, task_id: 5, completed_by_owner: nil, completed_by_helper: nil, comments: "ok"},
  {state: "pending", user_id: 3, task_id: 4, completed_by_owner: nil, completed_by_helper: nil, comments: "ok"},
  {state: "pending", user_id: 2, task_id: 8, completed_by_owner: nil, completed_by_helper: nil, comments: "skbvjk"}
])
Task.create!([
  {address: "Berlin", date: "2019-05-30 10:13:00", description: "sfdv", amount_coins: 2, user_id: 4, title: "user 2 task 2", post_code: 2324, completed: nil, latitude: nil, longitude: nil},
  {address: "dvdfv", date: "2019-05-30 10:13:00", description: "dvfv", amount_coins: 2, user_id: 4, title: "user 2 task 3", post_code: 3243, completed: nil, latitude: nil, longitude: nil},
  {address: "vdvfd", date: "2019-05-30 10:14:00", description: "sdvfdv", amount_coins: 2, user_id: 4, title: "user 2 task 4", post_code: 2354, completed: nil, latitude: nil, longitude: nil},
  {address: "dvdfv", date: "2019-05-30 10:14:00", description: "dfvf", amount_coins: 2, user_id: 3, title: "user 1 task 1", post_code: 3453, completed: nil, latitude: nil, longitude: nil},
  {address: "dfvfb", date: "2019-05-30 10:15:00", description: "dvfdv", amount_coins: 3, user_id: 3, title: "user 1 task 2", post_code: 343, completed: nil, latitude: nil, longitude: nil},
  {address: "sddvfdb", date: "2019-05-30 10:15:00", description: "dfbgfb", amount_coins: 2, user_id: 3, title: "user 1 task 3", post_code: 344, completed: nil, latitude: nil, longitude: nil},
  {address: "dfvdf", date: "2019-05-30 10:15:00", description: "dfv", amount_coins: 2, user_id: 3, title: "user 1 task 4", post_code: 3534, completed: nil, latitude: nil, longitude: nil},
  {address: "Checkpoint Charlie, Berlin", date: "2019-05-30 10:13:00", description: "sdvdfvjhv", amount_coins: 2, user_id: 4, title: "user 2 task 1", post_code: 1213, completed: nil, latitude: 52.5075459, longitude: 13.3903685}
])
