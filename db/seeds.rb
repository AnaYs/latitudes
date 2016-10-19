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

