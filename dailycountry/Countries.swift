import Foundation

enum Countries {
    static let all: [Country] = [
        Country(
            id: "JP",
            code: "JP",
            name: "Japan",
            capital: "Tokyo",
            continent: "Asia",
            funFact: "Japan has more than 6,000 islands.",
            clues: [
                Clue(type: .text, value: "Known for meticulous seasonal aesthetics and a deep respect for craft.", label: "Culture"),
                Clue(type: .text, value: "Rice, noodles, and delicate broths are staples in everyday meals.", label: "Food"),
                Clue(type: .text, value: "An island nation off the eastern edge of a large continent.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/6/66/Mount_Fuji_at_sunset%2C_March_2025.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/jp.png", label: "Flag")
            ]
        ),
        Country(
            id: "FR",
            code: "FR",
            name: "France",
            capital: "Paris",
            continent: "Europe",
            funFact: "France is the world\'s most visited country by international tourists.",
            clues: [
                Clue(type: .text, value: "Famous for fashion, wine, and long café conversations.", label: "Culture"),
                Clue(type: .text, value: "Baguettes and cheese are everyday icons here.", label: "Food"),
                Clue(type: .text, value: "Borders both the Atlantic Ocean and the Mediterranean Sea.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/a/a8/Tour_Eiffel_Wikimedia_Commons.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/fr.png", label: "Flag")
            ]
        ),
        Country(
            id: "BR",
            code: "BR",
            name: "Brazil",
            capital: "Brasilia",
            continent: "South America",
            funFact: "Brazil contains most of the Amazon rainforest.",
            clues: [
                Clue(type: .text, value: "Known for vibrant music, dance, and a massive street festival.", label: "Culture"),
                Clue(type: .text, value: "Coffee and tropical fruits are part of daily life.", label: "Food"),
                Clue(type: .text, value: "The largest country on its continent.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/4/4f/Christ_the_Redeemer_-_Cristo_Redentor.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/br.png", label: "Flag")
            ]
        ),
        Country(
            id: "CA",
            code: "CA",
            name: "Canada",
            capital: "Ottawa",
            continent: "North America",
            funFact: "Canada has the longest coastline of any country.",
            clues: [
                Clue(type: .text, value: "A bilingual country known for politeness and winter sports.", label: "Culture"),
                Clue(type: .text, value: "Maple syrup is a beloved staple.", label: "Food"),
                Clue(type: .text, value: "Spans from the Atlantic to the Pacific and into the Arctic.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/9/96/Toronto_-_ON_-_Toronto_Harbourfront7.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/ca.png", label: "Flag")
            ]
        ),
        Country(
            id: "KE",
            code: "KE",
            name: "Kenya",
            capital: "Nairobi",
            continent: "Africa",
            funFact: "The Great Rift Valley runs through Kenya.",
            clues: [
                Clue(type: .text, value: "Home to world-class long-distance runners.", label: "Culture"),
                Clue(type: .text, value: "Tea is one of the most widely enjoyed drinks.", label: "Daily Life"),
                Clue(type: .text, value: "Located on the equator in East Africa.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/7/7c/Mount_Kenya.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/ke.png", label: "Flag")
            ]
        ),
        Country(
            id: "IN",
            code: "IN",
            name: "India",
            capital: "New Delhi",
            continent: "Asia",
            funFact: "India is the world\'s largest democracy.",
            clues: [
                Clue(type: .text, value: "A vast country with hundreds of languages and traditions.", label: "Culture"),
                Clue(type: .text, value: "Spices and flatbreads are core to many meals.", label: "Food"),
                Clue(type: .text, value: "A peninsula in South Asia with a long coastline.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/da/Taj-Mahal.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/in.png", label: "Flag")
            ]
        ),
        Country(
            id: "AU",
            code: "AU",
            name: "Australia",
            capital: "Canberra",
            continent: "Oceania",
            funFact: "Australia is both a country and a continent.",
            clues: [
                Clue(type: .text, value: "Known for beach culture and outdoor living.", label: "Culture"),
                Clue(type: .text, value: "Barbecues are a common social ritual.", label: "Food"),
                Clue(type: .text, value: "A large island nation in the Southern Hemisphere.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/4/40/Sydney_Opera_House_Sails.jpg", label: "Landmark"),
                Clue(type: .text, value: "Capital: Canberra", label: "Capital")
            ]
        ),
        Country(
            id: "NO",
            code: "NO",
            name: "Norway",
            capital: "Oslo",
            continent: "Europe",
            funFact: "Norway is known for its dramatic fjords.",
            clues: [
                Clue(type: .text, value: "A country with a strong tradition of seafaring.", label: "Culture"),
                Clue(type: .text, value: "Fish is common on the table.", label: "Food"),
                Clue(type: .text, value: "Located in Northern Europe with a long Arctic coastline.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/2/2d/Geirangerfjord.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/no.png", label: "Flag")
            ]
        ),
        Country(
            id: "MX",
            code: "MX",
            name: "Mexico",
            capital: "Mexico City",
            continent: "North America",
            funFact: "Mexico is home to more than 60 indigenous languages.",
            clues: [
                Clue(type: .text, value: "Rich traditions of art, murals, and colorful festivals.", label: "Culture"),
                Clue(type: .text, value: "Corn tortillas and chilies are staples.", label: "Food"),
                Clue(type: .text, value: "Located between the Pacific Ocean and the Gulf of Mexico.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/9/94/Chichen_Itza_3.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/mx.png", label: "Flag")
            ]
        ),
        Country(
            id: "EG",
            code: "EG",
            name: "Egypt",
            capital: "Cairo",
            continent: "Africa",
            funFact: "The Nile is the longest river in Africa.",
            clues: [
                Clue(type: .text, value: "Ancient civilization famous for monumental architecture.", label: "History"),
                Clue(type: .text, value: "Flatbreads and legumes are common staples.", label: "Food"),
                Clue(type: .text, value: "Located in Northeast Africa and the Sinai Peninsula.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg", label: "Landmark"),
                Clue(type: .text, value: "Capital: Cairo", label: "Capital")
            ]
        ),
        Country(
            id: "IT",
            code: "IT",
            name: "Italy",
            capital: "Rome",
            continent: "Europe",
            funFact: "Italy has more UNESCO World Heritage sites than any other country.",
            clues: [
                Clue(type: .text, value: "Renowned for art, design, and historic cities.", label: "Culture"),
                Clue(type: .text, value: "Pasta and olive oil are everyday essentials.", label: "Food"),
                Clue(type: .text, value: "A boot-shaped peninsula in southern Europe.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/de/Colosseo_2020.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/it.png", label: "Flag")
            ]
        ),
        Country(
            id: "KR",
            code: "KR",
            name: "South Korea",
            capital: "Seoul",
            continent: "Asia",
            funFact: "South Korea is famous for its high-speed internet and tech industry.",
            clues: [
                Clue(type: .text, value: "A global pop-culture powerhouse in music and TV.", label: "Culture"),
                Clue(type: .text, value: "Fermented dishes are common on the table.", label: "Food"),
                Clue(type: .text, value: "Located on the southern part of a peninsula in East Asia.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/1/1a/Gyeongbokgung_Geunjeongjeon.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/kr.png", label: "Flag")
            ]
        ),
        Country(
            id: "AR",
            code: "AR",
            name: "Argentina",
            capital: "Buenos Aires",
            continent: "South America",
            funFact: "Argentina is the birthplace of tango.",
            clues: [
                Clue(type: .text, value: "Known for passionate dance and football culture.", label: "Culture"),
                Clue(type: .text, value: "Grilled meats are central to many meals.", label: "Food"),
                Clue(type: .text, value: "Home to vast pampas and glaciers in the south.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/5/5a/Cataratas.jpg", label: "Landmark"),
                Clue(type: .text, value: "Capital: Buenos Aires", label: "Capital")
            ]
        ),
        Country(
            id: "TH",
            code: "TH",
            name: "Thailand",
            capital: "Bangkok",
            continent: "Asia",
            funFact: "Thailand was never colonized by a European power.",
            clues: [
                Clue(type: .text, value: "Known for vibrant street markets and friendly hospitality.", label: "Culture"),
                Clue(type: .text, value: "Balanced flavors of sweet, sour, salty, and spicy.", label: "Food"),
                Clue(type: .text, value: "Located in mainland Southeast Asia.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/5/50/Wat_Arun%2C_Bangkok.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/th.png", label: "Flag")
            ]
        ),
        Country(
            id: "MA",
            code: "MA",
            name: "Morocco",
            capital: "Rabat",
            continent: "Africa",
            funFact: "Morocco borders both the Atlantic Ocean and the Mediterranean Sea.",
            clues: [
                Clue(type: .text, value: "Known for bustling markets and intricate tilework.", label: "Culture"),
                Clue(type: .text, value: "Tagines and mint tea are widely enjoyed.", label: "Food"),
                Clue(type: .text, value: "Located in northwest Africa near the Strait of Gibraltar.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Hassan_II_Mosque_Casablanca_Morocco.jpg", label: "Landmark"),
                Clue(type: .text, value: "Capital: Rabat", label: "Capital")
            ]
        ),
        Country(
            id: "GR",
            code: "GR",
            name: "Greece",
            capital: "Athens",
            continent: "Europe",
            funFact: "The Olympic Games originated in ancient Greece.",
            clues: [
                Clue(type: .text, value: "Ancient myths and philosophy are central to its legacy.", label: "History"),
                Clue(type: .text, value: "Olive oil and feta are common staples.", label: "Food"),
                Clue(type: .text, value: "A country of islands and peninsulas in the Aegean Sea.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/da/The_Parthenon_in_Athens.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/gr.png", label: "Flag")
            ]
        ),
        Country(
            id: "PE",
            code: "PE",
            name: "Peru",
            capital: "Lima",
            continent: "South America",
            funFact: "Peru is home to Machu Picchu.",
            clues: [
                Clue(type: .text, value: "A country with a rich indigenous heritage and textiles.", label: "Culture"),
                Clue(type: .text, value: "Ceviche is a national dish.", label: "Food"),
                Clue(type: .text, value: "Includes the Andes mountains and Amazon rainforest.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/e/eb/Machu_Picchu%2C_Peru.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/pe.png", label: "Flag")
            ]
        ),
        Country(
            id: "NZ",
            code: "NZ",
            name: "New Zealand",
            capital: "Wellington",
            continent: "Oceania",
            funFact: "New Zealand has two official names: New Zealand and Aotearoa.",
            clues: [
                Clue(type: .text, value: "Known for dramatic landscapes and outdoor adventure.", label: "Culture"),
                Clue(type: .text, value: "Lamb and dairy are common in everyday meals.", label: "Food"),
                Clue(type: .text, value: "An island nation southeast of Australia.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/2/24/Milford_Sound_NZ.jpeg", label: "Landmark"),
                Clue(type: .text, value: "Capital: Wellington", label: "Capital")
            ]
        ),
        Country(
            id: "ES",
            code: "ES",
            name: "Spain",
            capital: "Madrid",
            continent: "Europe",
            funFact: "Spain is home to the world\'s second most spoken native language.",
            clues: [
                Clue(type: .text, value: "Known for lively plazas and late-night dining.", label: "Culture"),
                Clue(type: .text, value: "Tapas are a popular way to eat socially.", label: "Food"),
                Clue(type: .text, value: "Occupies most of the Iberian Peninsula.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Sagrada_Familia_01.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/es.png", label: "Flag")
            ]
        ),
        Country(
            id: "DE",
            code: "DE",
            name: "Germany",
            capital: "Berlin",
            continent: "Europe",
            funFact: "Germany is known for its autobahn and engineering.",
            clues: [
                Clue(type: .text, value: "Famous for precision and a strong classical music heritage.", label: "Culture"),
                Clue(type: .text, value: "Bread culture is huge, with hundreds of varieties.", label: "Food"),
                Clue(type: .text, value: "Located in central Europe with many bordering countries.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Brandenburger_Tor_abends.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/de.png", label: "Flag")
            ]
        ),
        Country(
            id: "US",
            code: "US",
            name: "United States",
            capital: "Washington, D.C.",
            continent: "North America",
            funFact: "The United States has the world\'s largest economy by nominal GDP.",
            clues: [
                Clue(type: .text, value: "A melting pot of cultures with a strong tradition of individual liberty.", label: "Culture"),
                Clue(type: .text, value: "Burgers, barbecue, and regional cuisines define its food scene.", label: "Food"),
                Clue(type: .text, value: "Stretches from the Atlantic to the Pacific across a large continent.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/d3/Statue_of_Liberty%2C_NY.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/us.png", label: "Flag")
            ]
        ),
        Country(
            id: "GB",
            code: "GB",
            name: "United Kingdom",
            capital: "London",
            continent: "Europe",
            funFact: "The UK invented the world\'s first public railway.",
            clues: [
                Clue(type: .text, value: "Known for its monarchy, literary heritage, and dry humor.", label: "Culture"),
                Clue(type: .text, value: "Afternoon tea and fish and chips are iconic traditions.", label: "Food"),
                Clue(type: .text, value: "An island nation off the northwest coast of mainland Europe.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/9/93/Clock_Tower_-_Palace_of_Westminster%2C_London_-_May_2007.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/gb.png", label: "Flag")
            ]
        ),
        Country(
            id: "CN",
            code: "CN",
            name: "China",
            capital: "Beijing",
            continent: "Asia",
            funFact: "China\'s Great Wall stretches over 13,000 miles.",
            clues: [
                Clue(type: .text, value: "One of the world\'s oldest civilizations with rich traditions in calligraphy and philosophy.", label: "Culture"),
                Clue(type: .text, value: "Dumplings, noodles, and tea are deeply woven into daily life.", label: "Food"),
                Clue(type: .text, value: "The most populous country in East Asia, spanning deserts and mountains.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/1/10/20090529_Great_Wall_8185.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/cn.png", label: "Flag")
            ]
        ),
        Country(
            id: "RU",
            code: "RU",
            name: "Russia",
            capital: "Moscow",
            continent: "Europe",
            funFact: "Russia spans 11 time zones, making it the widest country on Earth.",
            clues: [
                Clue(type: .text, value: "Famous for ballet, literature, and long winters.", label: "Culture"),
                Clue(type: .text, value: "Borscht, blini, and hearty soups are traditional fare.", label: "Food"),
                Clue(type: .text, value: "The largest country by area, spanning two continents.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Above_the_Kremlin.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/ru.png", label: "Flag")
            ]
        ),
        Country(
            id: "TR",
            code: "TR",
            name: "Turkey",
            capital: "Ankara",
            continent: "Europe",
            funFact: "Turkey straddles two continents: Europe and Asia.",
            clues: [
                Clue(type: .text, value: "A crossroads of civilizations blending Eastern and Western traditions.", label: "Culture"),
                Clue(type: .text, value: "Kebabs, baklava, and strong coffee are beloved staples.", label: "Food"),
                Clue(type: .text, value: "Borders both the Mediterranean and the Black Sea.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/2/22/Hagia_Sophia_Mars_2013.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/tr.png", label: "Flag")
            ]
        ),
        Country(
            id: "PT",
            code: "PT",
            name: "Portugal",
            capital: "Lisbon",
            continent: "Europe",
            funFact: "Portugal is one of the oldest nations in Europe, founded in 1143.",
            clues: [
                Clue(type: .text, value: "Known for soulful folk music and a proud maritime history.", label: "Culture"),
                Clue(type: .text, value: "Salted cod dishes and custard tarts are national favorites.", label: "Food"),
                Clue(type: .text, value: "Located on the western edge of the Iberian Peninsula.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Belem_Tower%2C_Lisbon%2C_Portugal.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/pt.png", label: "Flag")
            ]
        ),
        Country(
            id: "NL",
            code: "NL",
            name: "Netherlands",
            capital: "Amsterdam",
            continent: "Europe",
            funFact: "About a third of the Netherlands lies below sea level.",
            clues: [
                Clue(type: .text, value: "Famous for cycling culture, tulips, and Golden Age paintings.", label: "Culture"),
                Clue(type: .text, value: "Cheese and herring are traditional favorites.", label: "Food"),
                Clue(type: .text, value: "A low-lying country on the North Sea coast of Western Europe.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/b/be/KeijssersNL.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/nl.png", label: "Flag")
            ]
        ),
        Country(
            id: "SE",
            code: "SE",
            name: "Sweden",
            capital: "Stockholm",
            continent: "Europe",
            funFact: "Sweden has the right of public access, allowing anyone to roam the countryside.",
            clues: [
                Clue(type: .text, value: "Known for minimalist design, innovation, and a love of nature.", label: "Culture"),
                Clue(type: .text, value: "Meatballs and crispbread are classic comfort foods.", label: "Food"),
                Clue(type: .text, value: "A Scandinavian country stretching far north into the Arctic.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/8/80/Stockholm_old_town_2002.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/se.png", label: "Flag")
            ]
        ),
        Country(
            id: "CH",
            code: "CH",
            name: "Switzerland",
            capital: "Bern",
            continent: "Europe",
            funFact: "Switzerland has four official languages: German, French, Italian, and Romansh.",
            clues: [
                Clue(type: .text, value: "Known for neutrality, precision watches, and banking.", label: "Culture"),
                Clue(type: .text, value: "Cheese fondue and chocolate are world-famous exports.", label: "Food"),
                Clue(type: .text, value: "A landlocked Alpine country in central Europe.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/6/60/Matterhorn_from_Domh%C3%BCtte_-_2.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/ch.png", label: "Flag")
            ]
        ),
        Country(
            id: "IE",
            code: "IE",
            name: "Ireland",
            capital: "Dublin",
            continent: "Europe",
            funFact: "Ireland is known as the Emerald Isle for its lush green landscape.",
            clues: [
                Clue(type: .text, value: "Known for storytelling, traditional music, and ancient castles.", label: "Culture"),
                Clue(type: .text, value: "Stews, soda bread, and pub culture are part of everyday life.", label: "Food"),
                Clue(type: .text, value: "An island in the North Atlantic, west of Great Britain.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cliffs_of_Moher.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/ie.png", label: "Flag")
            ]
        ),
        Country(
            id: "ZA",
            code: "ZA",
            name: "South Africa",
            capital: "Pretoria",
            continent: "Africa",
            funFact: "South Africa has three capital cities for its three branches of government.",
            clues: [
                Clue(type: .text, value: "Called the Rainbow Nation for its cultural diversity.", label: "Culture"),
                Clue(type: .text, value: "Braai (barbecue) is a cherished social tradition.", label: "Food"),
                Clue(type: .text, value: "Located at the southern tip of a large continent.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/a/a8/Table_Mountain_DanieVDM.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/za.png", label: "Flag")
            ]
        ),
        Country(
            id: "CO",
            code: "CO",
            name: "Colombia",
            capital: "Bogota",
            continent: "South America",
            funFact: "Colombia is the world\'s leading producer of emeralds.",
            clues: [
                Clue(type: .text, value: "Known for vibrant salsa music and colorful festivals.", label: "Culture"),
                Clue(type: .text, value: "Coffee from this country is among the finest in the world.", label: "Food"),
                Clue(type: .text, value: "The only South American country with coastlines on both the Pacific and Caribbean.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Cartagena_de_Indias_desde_el_cerro_La_Popa.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/co.png", label: "Flag")
            ]
        ),
        Country(
            id: "VN",
            code: "VN",
            name: "Vietnam",
            capital: "Hanoi",
            continent: "Asia",
            funFact: "Vietnam is the world\'s second-largest coffee exporter.",
            clues: [
                Clue(type: .text, value: "A country with a deep reverence for family and community.", label: "Culture"),
                Clue(type: .text, value: "Fresh herbs, rice noodles, and broth-based soups are everyday staples.", label: "Food"),
                Clue(type: .text, value: "A long, narrow country along the eastern coast of a Southeast Asian peninsula.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/1/16/Ha_Long_Bay%2C_Vietnam.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/vn.png", label: "Flag")
            ]
        ),
        Country(
            id: "ID",
            code: "ID",
            name: "Indonesia",
            capital: "Jakarta",
            continent: "Asia",
            funFact: "Indonesia is the world\'s largest archipelago with over 17,000 islands.",
            clues: [
                Clue(type: .text, value: "Home to hundreds of ethnic groups and a rich tradition of batik.", label: "Culture"),
                Clue(type: .text, value: "Rice with sambal and satay skewers are popular across the islands.", label: "Food"),
                Clue(type: .text, value: "A vast archipelago straddling the equator in Southeast Asia.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/8/8c/Borobudur-Nothwest-view.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/id.png", label: "Flag")
            ]
        ),
        Country(
            id: "PH",
            code: "PH",
            name: "Philippines",
            capital: "Manila",
            continent: "Asia",
            funFact: "The Philippines has over 7,600 islands.",
            clues: [
                Clue(type: .text, value: "Known for warm hospitality, fiestas, and a blend of Eastern and Western influences.", label: "Culture"),
                Clue(type: .text, value: "Adobo and rice are everyday comfort food.", label: "Food"),
                Clue(type: .text, value: "An archipelago in the western Pacific Ocean.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/0/05/Chocolate_Hills_overview.JPG", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/ph.png", label: "Flag")
            ]
        ),
        Country(
            id: "CU",
            code: "CU",
            name: "Cuba",
            capital: "Havana",
            continent: "North America",
            funFact: "Cuba is the largest island in the Caribbean.",
            clues: [
                Clue(type: .text, value: "Famous for classic cars, cigars, and vibrant street music.", label: "Culture"),
                Clue(type: .text, value: "Black beans, rice, and roast pork are daily staples.", label: "Food"),
                Clue(type: .text, value: "The largest island in the Caribbean Sea.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/f/f5/El_Capitolio_Havana.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/cu.png", label: "Flag")
            ]
        ),
        Country(
            id: "IS",
            code: "IS",
            name: "Iceland",
            capital: "Reykjavik",
            continent: "Europe",
            funFact: "Iceland runs almost entirely on renewable energy.",
            clues: [
                Clue(type: .text, value: "A nation of sagas, hot springs, and a strong literary tradition.", label: "Culture"),
                Clue(type: .text, value: "Lamb, seafood, and skyr are dietary staples.", label: "Food"),
                Clue(type: .text, value: "A volcanic island nation just south of the Arctic Circle.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/c/cb/Seljalandsfoss%2C_Su%C3%B0urland%2C_Islandia%2C_2014-08-16%2C_DD_201-203_HDR.JPG", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/is.png", label: "Flag")
            ]
        ),
        Country(
            id: "JM",
            code: "JM",
            name: "Jamaica",
            capital: "Kingston",
            continent: "North America",
            funFact: "Jamaica is the birthplace of reggae music.",
            clues: [
                Clue(type: .text, value: "Known worldwide for its music, sprinters, and laid-back culture.", label: "Culture"),
                Clue(type: .text, value: "Jerk-spiced meats and tropical fruits are everywhere.", label: "Food"),
                Clue(type: .text, value: "A Caribbean island south of Cuba.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/6/63/Dunns_River_Falls_Photo_D_Ramey_Logan.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/jm.png", label: "Flag")
            ]
        ),
        Country(
            id: "SG",
            code: "SG",
            name: "Singapore",
            capital: "Singapore",
            continent: "Asia",
            funFact: "Singapore is both a city and a country.",
            clues: [
                Clue(type: .text, value: "A multicultural hub known for cleanliness and efficiency.", label: "Culture"),
                Clue(type: .text, value: "Hawker centers serve incredible and affordable food from many cuisines.", label: "Food"),
                Clue(type: .text, value: "A tiny island city-state at the tip of a Southeast Asian peninsula.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Marina_Bay_Sands_in_the_evening_-_20101120.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/sg.png", label: "Flag")
            ]
        ),
        Country(
            id: "CL",
            code: "CL",
            name: "Chile",
            capital: "Santiago",
            continent: "South America",
            funFact: "Chile is home to the driest desert on Earth, the Atacama.",
            clues: [
                Clue(type: .text, value: "Known for its poets, wine culture, and strong traditions.", label: "Culture"),
                Clue(type: .text, value: "Seafood empanadas and fresh fish are everyday fare.", label: "Food"),
                Clue(type: .text, value: "A long, narrow country along the western coast of South America.", label: "Geography"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/d6/Torres_del_Paine_Cuernos.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://flagcdn.com/w320/cl.png", label: "Flag")
            ]
        )
    ]
}
