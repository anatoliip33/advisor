Hotel.create(
  title: 'The Opus Building',
  description: 'The Opus Building by Zaha Hadid Prévu pour 2016,
   ce projet d’hôtel Me by Melia à Dubaï sera logé au sein de la Tour Opus,
    proposée par Zaha Hadid Architects. Premier hôtel de l’architecte irako-britannique,
    cette structure originale de plus de 95 mètres de haut proposera plus de 100 chambres.',
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-1.jpg")),
  price: 50.00
  )

Hotel.create(
  title: 'City of Dreams',
  description: 'Tower by Zaha Hadid Avec 40 étages, cette tour incroyable est un projet imaginé par Zaha Hadid Architects qui proposera pas moins de 780 chambres & suites. Prévue pour 2017,
   cette structure impressionnante se démarque et propose un aménagement à la hauteur de l’ambition de la ville de Macau, qui veut se présenter comme la ville des rêves.',
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-2.jpg")),
  price: 55.00
  )

Hotel.create(
  title: 'The Sheraton Huizhou',
  description: 'Last month the world watched as China broke ground on the world’s tallest building the construction team behind the projected 838 meter Sky City plans to whip it up in an unbelievable 10 months. This month U.S. based hotel brand Sheraton is opening what might be the oddest looking piece of hotel architecture you’ll see this year. Designed by much hyped Beijing based architect Ma Yangon of MAD architects, the Sheraton Huizhou Hot Springs Resort is made up of “layers” of floors to create a ring that rises from the South Bank of Huizhou’s Taihu Lake. Called the Sheraton Huizhou Hot Springs Resort the property is just more than 100 meters high and 116 meters wide,
   covering an area of 75 acres with a total floor area of 95,000 square meters.',
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-3.jpg")),
  price: 65.00
  )

Hotel.create(
  title: 'Hotel Lutetia',
  description: 'The Lutetia - the Latin name for Paris - is a classic Art Deco hotel that, when it opened in 1910, drew artists and writers to its cocktail-fuelled flame. There are now 230 rooms and suites, most of which have original paintings and sculptures, some dating from the days when Matisse and Picasso used it as their Paris base.',
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-8.jpg")),
  price: 55.00
  )

Hotel.create(
  title: 'Le Royal Monceau - Raffles Paris',
  description: 'The art of luxury. The romance of Paris. The legend that is Raffles.
   Welcome to the Parisian palace. Located on the prestigious Avenue Hoche, just steps from the Champs-Elysées and the Arc de Triomphe, Le Royal Monceau,
   Raffles Paris is an oasis of charm, calm and conviviality in the heart of Paris.',
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-9.jpg")),
  price: 60.00
  )

Hotel.create(
  title: 'Monumental',
  description: 'Spacious, bright and outward facing rooms measuring 19 m2 and totally refurbished.
   The room comes with Dreamax bed (manufactured and designed exclusively by Flex
    for Meliá Hotels International), a modern, fully equipped bathroom finished in top
     quality bronze coloured ceramics and an independent entrance.
      It also has a home automation system which automatically regulates the temperature
       of the room based on guest presence or absence from the room.',
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-10.jpg")),
  price: 60.00
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
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-5.jpg")),
  price: 70.00
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
  photo: File.open(File.join(Rails.root, "/app/assets/images/hotel-6.jpg")),
  price: 60.00
  )

Adress.create(
  country: 'France',
  state: 'zip',
  city: 'Paris',
  street: 'Rue Lamartine'
  )
