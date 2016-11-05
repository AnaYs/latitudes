#change Admin password after seeding
admin = User.create(
  email: "isabel.lamers@gmail.com",
  password: 12345678,
  password_confirmation: 12345678
)

Admin.create(
  user: admin
)

visitor = User.create(
  email: "test@test.com",
  password: 12345678,
  password_confirmation: 12345678
)


#First post
image_links1 = [
  'http://res.cloudinary.com/anays/image/upload/v1476856856/Seed/1.jpg',
  'http://res.cloudinary.com/anays/image/upload/v1476857030/Seed/2.jpg',
  'http://res.cloudinary.com/anays/image/upload/v1476856855/Seed/3.jpg'
]
post1 = Post.create!( title:  "that special spark",
                      abstract: "We are free and home sick at the same time, all the time.",
                      content: "I never got around this feeling that I don’t belong; it’s a recurring thing. It doesn’t make me special, but it does make me feel lost. Somehow, something under the surface makes me constantly feel estranged with the society around me, so I start to wonder. Wonder whether I am doing something wrong. Wonder whether others are being weird on purpose. Wonder whether something is different about me and how I see the world. It’s a process of the searching unconscious, which only surfaces to the conscious with a feeling of disorientation and loneliness. In my case it’s a third-culture phenomenon:  Third-culture individuals are raised in a culture other than their parents’ for a significant part of their early development years, they build relationships to all cultures, while not fully owning any. This also means growing up in a culture where you feel like you belong, but you look different; or, on the other hand, growing up in a culture where you look alike, thus being treated as everyone else, while still feeling different. In my case, I feel different in Germany but am regarded equal; in the Philippines, I feel equal, but am treated differently. In the end, I find myself having to prove my origins by explaining how many years I spend where or by simply omitting parts of my story in order to avoid dreaded inquiries, or rather out-right judgments, of where I am “really from”. Likewise I keep searching for societal contexts that I can feel affiliated to, but that I am also accepted in as equal. I am free and home sick at the same time, all the time.
                      But what I find intriguing is that not only third-culture kids experience these feelings. I am sure everyone has, at one point in his or her life, experienced that situation. But I always tend to feel a special connection to those people that feel this way as strongly and as often as I do. To take an easy example, homosexuals might look like one gender, but feel different – it is the same phenomenon of creating your own culture in regards of feeling estranged by the people around you, or by the role society assigns to you. Or people that somehow – through some godly spark – just are different than their surroundings and do not understand nor accept why the world is the way it is. These very special people I worship, because I can connect to them and feel understood. Somehow they have come to that conscious position in life without estranging third-culture experiences in life, but by the mere fact of being special and enlightened. And the best is, these people are everywhere. You see it in their eyes; a little shining light that gives them away, that shows how deep and aware their souls are. It is these special people that have some gift and that keep me seeing the world brightly and full of hope.",
                      created_at: DateTime.new(2016,9,11)
)

post1.photo_urls = image_links1

#Second post
image_links2 = [
  'http://res.cloudinary.com/anays/image/upload/v1476856856/Seed/4.jpg',
  'http://res.cloudinary.com/anays/image/upload/v1476857030/Seed/5.jpg',
  'http://res.cloudinary.com/anays/image/upload/v1476856855/Seed/6.jpg'
]
post2 = Post.create!( title:  "climbing nomads",
                      abstract: "There is no better way to travel than immersing into a climbing community.",
                      content: "Initially I set out to write this blog from the perspective of travelling climbers, or rather on nomad climbers that have lived in different places in the world and discovered, and re-discovered, rock climbing each time. This will be my first post related to this purpose.

While I started rock climbing at the late age of 21 in southern France, the first “real” climbing community that I joined was in Amman, Jordan. Just as different cultures have different greetings, so do many climbing communities. In Jordan, it was interlocking your pinkie fingers. Another tradition here was that lead climbing was perceived as highly risky, which – considering the large amount of new routes and hence, falling rock – is comprehensible. The climbing community in Amman is manageably sized, but – what I found striking – not as accessible as one can imagine. Arab culture and the relative novelty of climbing as a sport, make it so that most local climbers are men. When I started in 2011/12, a new high-tech climbing gym, CLIMBAT, with powerful air-conditioning, massive glass façades and numerous routes ranging from grade 5a to 7c (French) had been recently opened. At the time, I would become one of the stronger female climbers in the group (as there were not many). There however was a dynamic of Arab male climbers dating Western rock climber girls and thereby, allowing them to join outdoor climbing trips – or not. While this created unpleasant situations at times, the main actors in the Jordanian climbing scene always tried to keep a window open for genuinely-interested rock climbers, no matter their (non-)affiliation or gender.

Despite this slightly exclusivist experience in Jordanian rock climbing, I still believe that rock-climbing communities, especially emerging ones, are very welcoming and open to ‘foreigners’. In no time I was able to see all the climbing crags in Jordan and was even able to join on bolting trips (not actually bolt!). I even was given the honour to open a 6a; even though I had only been rock climbing for a year or so. For climbers used to outdoor climbing and curious enough to explore new rock, it is really an amazing way to travel and explore the culture by immersing in a climbing community, living their traditions and exploring their favourite crags or new bolting projects. Climbing communities exist almost anywhere nowadays and are always so welcoming to support from the outside, be it Panama, Jerusalem or the Philippines to name a few.

Jordan’s climbs involve beautiful limestone in the North of the country and impressive sandstone or basalt formations in the South. Routes are usually easier graded compared to Europe due to the limited influence of Western climbers, but you will be able to find your challenge somehow, for example by bolting harder routes that locals were not able to set. The main head of the climbing community is “Mister bolting Jordan”, called Hakim Tamini, also founder of Tropical Desert, an adventure company that can take you on rock climbing, canyoning and other outdoor trips. The number of routes continues to grow with the community and climbing spots are popping up while local climbers collect money to keep bolting and invite their fellow countrymen and –women to get on the rock. If ever you have a chance to pass by, go and meet the amazing, pioneer climbers of Jordan.",
                      created_at: DateTime.new(2016,10,19)
)

post2.photo_urls = image_links2
