user1 = User.create(
  email: 'user@example.com',
  password: 'userexample',
  password_confirmation: 'userexample'
  )

user2 = User.create(
  email: 'testnikart@gmail.com',
  password: 'testnikart',
  password_confirmation: 'testnikart'
  )

user3 = User.create(
  email: 'testnik86@ex.com',
  password: 'testnik86',
  password_confirmation: 'testnik86'
  )


hotel1 = Hotel.create(
  title: 'Opus Office Tower',
  description: 'One of several unique buildings specified as part of masterplan concept for Dubai,
   The Opus comprises two structures, conceived as a single cube eroded by a free-form void,
    which appears to ‘hover’ above ground-level. A pixilated reflective façade renders the cube full by day;
     by night, it ‘dematerializes’ as light floods the void.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-1.jpg")),
  breakfast: true,
  price: 50.00,
  user: user2,
  adress_attributes: {country: "United Arab Emirates", state: "Omniyat", city: "Abu Dhabi", street: "Meadows 9"}
  )
Comment.create(
  user_name: 'Roma',
  body: 'The hotel itself has been renovated and is in top shape and everyone wanting to see how top hotels in
   Switzerland looked in the 19th and early 20st century will be delighted.
    The food provided by the hotel restaurants is outright terrible and is being sold at absolutely insane prices and
    comes at quantities that do not even allow tasting because they are microscopic.',
  rating_attributes: {score: 3, hotel: hotel1},
  hotel: hotel1,
  user: user1
  )
Comment.create(
  user_name: 'Yevhene',
  body: 'Back for the second time and Kronenhof is still our favorite hotel. The rooms are very nice decorated,
   well equiped and very comfortable, the staff excellent and so friendly, the dinning absolutely outstanding,
    the spa so wonderful and luxurious and the location with beautiful view to the mountains outstanding.',
  rating_attributes: {score: 4, hotel: hotel1},
  hotel: hotel1,
  user: user2
  )
Comment.create(
  user_name: 'Max',
  body: 'Wonderful and charming 5 star hotel. We did stay in autumn for a long weekend. Family super friendly
   and close to St Moritz but far away from its decadent jet set. For those who love the charme of the good old
    grand hotels. Wonderful staff, excellent wellness and pool and fantastic food.',
  rating_attributes: {score: 5, hotel: hotel1},
  hotel: hotel1,
  user: user3
  )


hotel2 = Hotel.create(
  title: 'City of Dreams',
  description: 'Melco Crown Entertainment, a developer and owner of casino gaming and
   entertainment resort facilities in Asia, has unveiled the project details and design of the fifth
    hotel tower at City of Dreams, the company’s flagship property in Cotai, Macau. ',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-2.jpg")),
  price: 55.00,
  user: user2,
  adress_attributes: {country: "China", state: "Cotai", city: "Macau", street: "Estrada do Istmo Macau"}
  )
Comment.create(
  user_name: 'Vlad',
  body: 'Best value in the area. The money is worth the service. This was by far the best resort we have ever stayed at.
   We have stayed at the Greenbrier, the Homestead, 2 different Loews resorts, Disney resorts.
    I cannot even begin to explain the differences. It was all of the subtle things the staff did. Anything I said was
     "perfect", staff stopped to let you walk by and asked how you were.',
  rating_attributes: {score: 5, hotel: hotel2},
  hotel: hotel2,
  user: user3
  )
Comment.create(
  user_name: 'Igor',
  body: 'We had a little baby who was almost 9 months at the time, but every staff was supportive and welcoming
   throught our stay to make every possible experience at the hotel the best.
    The hotel room was very specious and clean. The staff were full of hospitality anytime we talked to them,
     and they were all exceptionally kind and knowledgeable anywhere we went, such as the pools,
      the lobby lounge, the restaurants, and even just a hallway, not to mention the concierge is as helpful as it can be.',
  rating_attributes: {score: 4, hotel: hotel2},
  hotel: hotel2,
  user: user2
  )
Comment.create(
  user_name: 'Vasya',
  body: 'The property, staff and rooms were of the best and highest quality. Dining was exceptional.
   I had room service and received white glove service with fresh flowers on the table.
    The nightly turn down service left you with a nice surprise every evening.',
  rating_attributes: {score: 5, hotel: hotel2},
  hotel: hotel2,
  user: user1
  )


hotel3 = Hotel.create(
  title: 'The Sheraton Huizhou',
  description: 'Last month the world watched as China broke ground on the world’s tallest building the construction team behind the projected 838 meter Sky City plans to whip it up in an unbelievable 10 months. This month U.S. based hotel brand Sheraton is opening what might be the oddest looking piece of hotel architecture you’ll see this year. Designed by much hyped Beijing based architect Ma Yangon of MAD architects, the Sheraton Huizhou Hot Springs Resort is made up of “layers” of floors to create a ring that rises from the South Bank of Huizhou’s Taihu Lake. Called the Sheraton Huizhou Hot Springs Resort the property is just more than 100 meters high and 116 meters wide,
   covering an area of 75 acres with a total floor area of 95,000 square meters.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-3.jpg")),
  breakfast: true,
  price: 65.00,
  user: user2,
  adress_attributes: {country: "China", state: "Zhejiang", city: "Huzhou", street: "Taihu Road"}
  )
Comment.create(
  user_name: 'Vova',
  body: 'Another amazing hotel. Hubby really splashed the boat out this time. A former palace with history lovingly
   converted into hotel close to ski school.nothing better than being from piest to pool in a few short steps.
   Staff are amazing food spot on such a lovely place roll on next year.',
  rating_attributes: {score: 5, hotel: hotel3},
  hotel: hotel3,
  user: user2
  )
Comment.create(
  user_name: 'Lida',
  body: 'We had a great stay at the Trump hotel. We stayed for one night in a superior room. I booked online through
   email and was not told about the parking charges. The valet did not mention ANY charges at all.
    I would have parked somewhere else if I knew parking was $50.00 a night! Nowhere on their site is this charge listed. ',
  rating_attributes: {score: 2, hotel: hotel3},
  hotel: hotel3,
  user: user1
  )
Comment.create(
  user_name: 'Masha',
  body: 'Hallways and room a little tired. Place was OK. Free wifi. Stay away from Shulas unless you want ridiculously
   priced, stupidly portioned steak. They charge prime beef prices for choice meat. Filet mignon tasted like cardboard.
   But back to the hotel: thanks for the 2:15am wake up call people, i asked for 6:15am. ruined my next days work.',
  rating_attributes: {score: 3, hotel: hotel3},
  hotel: hotel3,
  user: user3
  )


hotel4 = Hotel.create(
  title: 'Hotel Lutetia',
  description: 'The Lutetia - the Latin name for Paris - is a classic Art Deco hotel that, when it opened in 1910, drew artists and writers to its cocktail-fuelled flame. There are now 230 rooms and suites, most of which have original paintings and sculptures, some dating from the days when Matisse and Picasso used it as their Paris base.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-8.jpg")),
  price: 55.00,
  user: user2,
  adress_attributes: {country: "France", state: "Ile-de-France", city: "Paris", street: "Saint-Germain-des-Prés"}
  )
Comment.create(
  user_name: 'Sashko',
  body: 'Amazing hotel.Former palace expertly refurbished to make a stunning hotel. Rooms are decorated beautifully
   & the bathrooms are superb. Location is perfect!! The best hotel we have stayed in and will recommend it highly to friends and our travel agent.',
  rating_attributes: {score: 5, hotel: hotel4},
  hotel: hotel4,
  user: user1
  )
Comment.create(
  user_name: 'Phillip',
  body: 'Great location. Quality service. Spacious comfortable suites with ... a WALK-IN WARDROBE)))
    Spa and pool are wordlessly beautiful and bringing you all the spoils.',
  rating_attributes: {score: 5, hotel: hotel4},
  hotel: hotel4,
  user: user3
  )
Comment.create(
  user_name: 'Lena',
  body: 'There are a lot of outstanding things I can write, but the one which impressed my whole family was the special care and attention the hotel personel provided to us.
   They tried to surprise us by fullfilling all the individual needs we had during our unforgettable stay.',
  rating_attributes: {score: 5, hotel: hotel4},
  hotel: hotel4,
  user: user2
  )


hotel5 = Hotel.create(
  title: 'Le Royal Monceau - Raffles Paris',
  description: 'The art of luxury. The romance of Paris. The legend that is Raffles.
   Welcome to the Parisian palace. Located on the prestigious Avenue Hoche, just steps from the Champs-Elysées and the Arc de Triomphe, Le Royal Monceau,
   Raffles Paris is an oasis of charm, calm and conviviality in the heart of Paris.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-9.jpg")),
  breakfast: true,
  price: 60.00,
  user: user2,
  adress_attributes: {country: "France", state: "Ile-de-France", city: "Paris", street: "avenue Hoche"}
  )
Comment.create(
  user_name: 'Ira',
  body: 'This was our second time at the Kronenhof, and like the first, it did not disappoint. Beyond the beautiful old-world interior
   and the quiet, quaint location (which is well outside the madness of St. Moritz) sits this incredibly friendly hotel with
    the nicest staff on earth.',
  rating_attributes: {score: 5, hotel: hotel5},
  hotel: hotel5,
  user: user3
  )
Comment.create(
  user_name: 'Vlas',
  body: 'Good place to unwind n relax after hard work.lavish breakfast, efficient staff treats you as royalty.
  Since we were vegetarian they prepared specially for us.Rooms are very comfortable with beautiful views.
  The bathrooms have heated floors..indoor pool is a good place to relax in winters with snow outside the huge glass windows.',
  rating_attributes: {score: 5, hotel: hotel5},
  hotel: hotel5,
  user: user1
  )
Comment.create(
  user_name: 'Donald',
  body: 'Lost my reservation. Service in dining areas very slow .When you order food make sure you have plenty
   of time and patience, Confirm your reservation ahead of time. Food in meeting areas was not very good.
    They should stick to serving fruit and prepackaged items.',
  rating_attributes: {score: 3, hotel: hotel5},
  hotel: hotel5,
  user: user2
  )


Hotel.create(
  title: 'Monumental',
  description: 'Spacious, bright and outward facing rooms measuring 19 m2 and totally refurbished.
   The room comes with Dreamax bed (manufactured and designed exclusively by Flex
    for Meliá Hotels International), a modern, fully equipped bathroom finished in top
     quality bronze coloured ceramics and an independent entrance.
      It also has a home automation system which automatically regulates the temperature
       of the room based on guest presence or absence from the room.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-10.jpg")),
  price: 60.00,
  user: user2,
  adress_attributes: {country: "Canada", state: "Quebec", city: "Quebec city", street: "Rue Saint-Jean"}
  )

Hotel.create(
  title: 'Dawang Mountain Resort-Telegraph',
  description: 'Near the city of Changsha, the capital of Hunan Province,
   the extensive development will be built into a disused cement-mining quarry pit and
    lake and at its core will feature an as-yet-unnamed, 270-suite five-star hotel.
     Its 60 executive suites and six-room presidential suite will all feature impressive views of
      Tongxi Lake, Dawang Mountain and surrounding attractions.
       The project has been designed by Austrian architectural firm Coophimmelb(l)au and
        will also incorporate an indoor ski slope, water park and “Ice World” entertainment park
         which will stretch over a cliff face and connect two sides of the quarry.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-5.jpg")),
  breakfast: true,
  price: 70.00,
  user: user2,
  adress_attributes: {country: "China", state: "Jiangxi", city: "Changsha", street: "Pingtang Avenue"}
  )

Hotel.create(
  title: 'Le Cheval Blanc',
  description: 'Cet hôtel ouvert en 2006 seulement, n’a pas tardé à s’inscrire dans le paysage du luxe
   français. Depuis 2010, il a été décoré de la mention Distinction Palace, dénomination réservée
    aux hôtels les plus prestigieux. En france, seulement 8 d’entre eux la possèdent.
     Le Cheval Blanc est désormais devenu une étape de séjour incontournable pour
      les amateurs de sports d’hiver. Le palace a réussi à conserver l’esprit du lieu et de la montagne
       en un décor agréable et chaleureux, tout en y ajoutant une touche résolument contemporaine.
        Le tout forme un havre de paix dans lequel il fait bon se ressourcer.',
  photo: File.open(File.join(Rails.root, "/test/assets/images/hotel-6.jpg")),
  price: 60.00,
  user: user1,
  adress_attributes: {country: "France", state: "Rhône-Alpes", city: "Courchevel", street: "Le Jardin Alpin"}
  )
