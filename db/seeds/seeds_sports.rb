@sports = [
    {
    "articleID": 389572,
    "brand": "Daelim",
    "model": "Altino 125 ES",
    "category_id": 1,
    "year": "2004",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2004/Altino 125 ES/Daelim_2004_Altino 125 ES.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 200985,
    "brand": "Daelim",
    "model": "Daystar 125 FI",
    "category_id": 1,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/Daystar 125 FI/Daelim_2011_Daystar 125 FI.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 344347,
    "brand": "Daelim",
    "model": "RoadSport",
    "category_id": 1,
    "year": "2015",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2015/RoadSport/Daelim_2015_RoadSport.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 717785,
    "brand": "Daelim",
    "model": "Roadwin R 125 F.I.",
    "category_id": 1,
    "year": "2008",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2008/Roadwin R 125 F.I./Daelim_2008_Roadwin R 125 F.I..jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 904767,
    "brand": "Daelim",
    "model": "VJF 250",
    "category_id": 1,
    "year": "2017",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/VJF 250/Daelim_2017_VJF 250.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@sports.each do |sport|
  Motorcycle.create(sport)
end