puts 'Creating users'
User.create!([
  { email: "david.nielsen@gmail.com", password: "123456789", first_name: "David", last_name: "Nielsen", rating: nil, coins: 15, address: "Berlin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: nil, bio: "Hi! I am David, and I am an engineer who's main passions in life are caligraphy and chess. I joined NABO to become more familiar with my neighbors, and to feel like I can make a small difference in this world", city: "Berlin", quote: "No one is useless in this world who lightens the burdens of another. - Charles Dickens" },
  { email: "sarah.larsson@gmail.com", password: "123456789", first_name: "Sarah", last_name: "Larsson", rating: nil, coins: 70, address: "Stockholm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: nil, bio: "Hi, I'm Sarah! I live in Stockholm and joined this site after a friend told me about it. It's been a great experience so far helping out my neighbors, and I just love how more connected I feel to my neighborhood!", city: "Stockholm", quote: "We are all here to contribute our gifts toward something greater than ourselves, and will never be content unless we are. - Charles Eisenstein" },
  {email: "terje.olsen@gmail.com", password: "123456789", first_name: "Terje", last_name: "Olsen", rating: nil, coins: 15, address: "Berlin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: nil, bio: "Hi! I am Lars, and I am an ambulance worker. My favourite thing to do on NABO is to help elderly people", city: "Berlin", quote: "We are not just a skin-encapsulated ego, a soul encased in flesh. We are each other and we are the world. - Charles Eisenstein"},
  {email: "lars.miller@gmail.com", password: "123456789", first_name: "Lars", last_name: "Miller", rating: nil, coins: 70, address: "Berlin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: nil, bio: "Hi, I'm Lars! I live in Berlin and joined this site after a friend told me about it. It's been a great experience so far to help people in my hood", city: "Berlin", quote: "Waste no more time arguing about what a good man should be. Be one. ― Marcus Aurelius, Meditations"},
  {email: "jonas.schiffer@gmx.de", password: "123456789", first_name: "Jonas", last_name: "Schiffer", rating: nil, coins: 42, address: "Berlin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, avatar: nil, bio: "Hey all, I'm Jonas", city: "Berlin", quote: "We come unbidden into this life, and if we are lucky we find a purpose beyond starvation, misery, and early death which, lest we forget, is the common lot. - Abraham Verghese"}
])

puts 'Creating tasks'
Task.create!([
  {address: "Schönhauser Allé 120, Berlin", date: "2019-06-29 17:48:00", description: "I will be travelling abroad for a few days and would love if you could come by twice a day and feed my cats! Will pay 3 credits a day for this :)", amount_coins: 6,
    user_id: 1, title: "Feed my cats", post_code: 10439, completed: false, latitude: nil, longitude: nil, photo: nil},
  {address: "Brandenburgische Straße 69, Berlin", date: "2019-05-30 09:44:00", description: "Hi! I am currently trying to learn how to play chess, and would be happy if someone could come by and teach me!", amount_coins: 8,
    user_id: 2, title: "Teach me chess", post_code: 11127, completed: false, latitude: 52.4888307, longitude: 13.3159726479687, photo: nil},
  {address: "Leopoldstraße 11, Berlin", date: "2019-06-29 17:48:00", description: "I will be travelling abroad for a few days and would love if you could come by twice a day and feed my cats! Will pay 3 credits a day for this :)", amount_coins: 6,
    user_id: 3, title: "Help me paint", post_code: 10439, completed: false, latitude: 52.502782, longitude: 13.4892079, photo: nil},
  {address: "Waßmannsdorfer Chaussee 3, Berlin", date: "2019-05-30 09:44:00", description: "I have a bunch of boxes that needs to be moved to the basement. Would appreciate your help!", amount_coins: 4,
    user_id: 4, title: "Move boxes", post_code: 11127, completed: false, latitude: 52.41472295, longitude: 13.496985185906, photo: nil},
  {address: "Genslerstraße 59, Berlin", date: "2019-06-29 17:48:00", description: "Please help me to to learn how to play the guitar! I have inherited my grandfathers old guitar and would like to honour his memory by learning to play!", amount_coins: 1,
    user_id: 1, title: "Teach me guitar", post_code: 10439, completed: false, latitude: 52.5398173, longitude: 13.4995279, photo: nil},
  {address: "Schönhauser Allé 123, Berlin", date: "2020-06-30 09:44:00", description: "Hi! I need someone to clean my car, as I don't have time. It's a beautiful Tesla, and you can drive it around the block if you want", amount_coins: 4,
    user_id: 4, title: "Clean my car", post_code: 11127, completed: false, latitude: nil, longitude: nil, photo: nil},
  {address: "Schönhauser Allé 1, Berlin", date: "2019-06-29 17:48:00", description: "Please help my mother to buy groceries. She needs someone who can carry them for her home:)", amount_coins: 6,
    user_id: 2, title: "Help my mother", post_code: 10439, completed: false, latitude: nil, longitude: nil, photo: nil},
  {address: "Schönhauser Allé 40, Berlin", date: "2019-06-15 09:44:00", description: "Hi! I am currently trying to learn how to play chess, and would be happy if someone could come by and teach me!", amount_coins: 8,
    user_id: 5, title: "Teach me chess", post_code: 11127, completed: false, latitude: nil, longitude: nil, photo: nil},
  {address: "Libauer Str 73, 10245 Berlin, Germany", date: "2019-06-15 09:44:00", description: "I have a bad back after a work accident, and would need someone to help me move my bed into my livingroom so I can set up a home office from my bed. I am a programmer and work from home.", amount_coins: 2,
    user_id: 3, title: "Help move my bed", post_code: 10243, completed: false, latitude: 52.5083828, longitude: 13.4527724, photo: nil}
])

puts 'Creating Offers'
Offer.create!([
  {state: "pending", user_id: 2, task_id: 1, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi, I would be happy to feed your cat! I love cats so much. Do they like tuna? I fished a giant tuna the other day and would like to get rid of this fish stinking up my flat. So this would be a win-win situation!"},
  {state: "pending", user_id: 1, task_id: 2, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi! I am actually pretty decent at chess, and would be glad to come teach you what I know :) "},
  {state: "pending", user_id: 2, task_id: 3, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi! I would be happy to feed your cat while you are gone. I love cats <3 "},
  {state: "pending", user_id: 3, task_id: 4, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi! I can help you move your boxes! "},
  {state: "pending", user_id: 4, task_id: 5, completed_by_owner: nil, completed_by_helper: nil, comments: "I used to play in a heavy metal band, and am quite good on the guitar. Let's meet up and I'll show you some tricks! "},
  {state: "pending", user_id: 5, task_id: 6, completed_by_owner: nil, completed_by_helper: nil, comments: "Hi, I would love to help you out!"},
])


# {
#   email: "",
#   password: "123456789",
#   first_name: "",
#   last_name: "",
#   rating: nil,
#   coins: ,
#   address: "",
#   reset_password_token: nil,
#   reset_password_sent_at: nil,
#   remember_created_at: nil,
#   avatar: nil,
#   bio: "",
#   city: "",
#   quote: ""
# }
#
# {
#   address: "Libauer Str 73, 10245 Berlin, Germany", date: "2019-06-15 09:44:00", description: "I have a bad back after a work accident, and would need someone to help me move my bed into my livingroom so I can set up a home office from my bed. I am a programmer and work from home.", amount_coins: 2,
#   user_id: 3, title: "Help move my bed", post_code: 10243, completed: false, latitude: 52.5083828, longitude: 13.4527724, photo: nil}
