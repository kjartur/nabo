
User.create!([
  {email: "david.nielsen@gmail.com", password: "123456789", first_name: "David", last_name: "Nielsen", rating: nil, coins: 15, address: "Schönhauser Allé 120, Berlin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "https://ak3.picdn.net/shutterstock/videos/4849793/thumb/1.jpg", bio: "Hi! I am David, and I am an engineer who's main passions in life are caligraphy and chess. I joined NABO to become more familiar with my neighbors, and to feel like I can make a small difference in this world", city: "Berlin"},
  {email: "sarah.larsson@gmail.com", password: "123456789", first_name: "Sarah", last_name: "Larsson", rating: nil, coins: 70, address: "Gåstorget, 111 27 Stockholm, Sweden", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "http://www.stefantell.se/blog/wp-content/uploads/2011/03/studio-portrait-of-swedish-female-model.jpg", bio: "Hi, I'm Sarah! I live in Stockholm and joined this site after a friend told me about it. It's been a great experience so far helping out my neighbors, and I just love how more connected I feel to my neighborhood!", city: "Stockholm"}
  {email: "jonas.schiffer@gmx.de", password: "123456789", first_name: "Jonas", last_name: "Schiffer", rating: nil, coins: 42, address: "Libauer Str 3, 10245 Berlin, Germany", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: "https://ak9.picdn.net/shutterstock/videos/7371529/thumb/1.jpg", bio: "We come unbidden into this life, and if we are lucky we find a purpose beyond starvation, misery, and early death which, lest we forget, is the common lot. - Abraham Verghese ", city: "Berlin"}
])
Task.create!([
  {address: "Berlin", date: "2019-05-29 17:48:00", description: "I will be travelling abroad for a few days and would love if you could come by twice a day and feed my cats! Will pay 3 credits a day for this :)", amount_coins: 6, user_id: 1, title: "Feed my cats", post_code: 10439, completed: false },
  {address: "Berlin", date: "2019-05-30 09:44:00", description: "Hi! I am currently trying to learn how to play chess, and would be happy if someone could come by and teach me!", amount_coins: 8, user_id: 2, title: "Teach me chess", post_code: 111 27, completed: false }
  {address: "Berlin", date: "2019-06-15 09:44:00", description: "I have a bad back after a work accident, and would need someone to help me move my bed into my livingroom so I can set up a home office from my bed. I am a programmer and work from home.", amount_coins: 2, user_id: 3, title: "Help move my bed", post_code: 10243, completed: false }
])
Offer.create!([
  {state: "pending", user_id: 1, task_id: 2, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi! I am actually pretty decent at chess, and would be glad to come teach you what I know :) "},
  {state: "pending", user_id: 2, task_id: 3, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi, I would be happy to help you move your bed :) "},
  {state: "pending", user_id: 1, task_id: 3, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi, I would love to help you out!"},
  {state: "pending", user_id: 3, task_id: 1, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi, I would be happy to feed your cat! I love cats so much. Do they like tuna? I fished a giant tuna the other day and would like to get rid of this fish stinking up my flat. So this would be a win-win situation!"}
])

