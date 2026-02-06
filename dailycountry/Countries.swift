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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/1/12/Mount_Fuji_from_Hotel_Lake_Kawaguchiko_2019-05-01.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/9/9e/CN_Tower_Toronto_2013.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Canada_%28Pantone%29.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Mount_Kenya.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Kenya.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/4/41/Flag_of_India.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Norway.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/f/fc/Flag_of_Mexico.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/0/03/Flag_of_Italy.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_South_Korea.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/5/5c/Parthenon_from_west.jpg", label: "Landmark"),
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Flag_of_Peru.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/9/9a/Flag_of_Spain.svg", label: "Flag")
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
                Clue(type: .image, value: "https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg", label: "Flag")
            ]
        )
    ]
}
