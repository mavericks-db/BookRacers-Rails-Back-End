@customcruisers = [
  {
    "articleID": 743942,
    "brand": "Daelim",
    "model": "Daystar",
    "category_id": 4,
    "year": "2015",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2015/Daystar/Daelim_2015_Daystar.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 257372,
    "brand": "Daelim",
    "model": "Daystar 125 F.I.",
    "category_id": 4,
    "year": "2008",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2008/Daystar 125 F.I./Daelim_2008_Daystar 125 F.I..jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 895346,
    "brand": "Daelim",
    "model": "VL 125 Classic",
    "category_id": 4,
    "year": "2001",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2001/VL 125 Classic/Daelim_2001_VL 125 Classic.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 833095,
    "brand": "Daelim",
    "model": "VS 125",
    "category_id": 4,
    "year": "2000",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2000/VS 125/Daelim_2000_VS 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 439421,
    "brand": "Daelim",
    "model": "VT 125",
    "category_id": 4,
    "year": "1999",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/1999/VT 125/Daelim_1999_VT 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@customcruisers.each do |customcruiser|
  Motorcycle.create(customcruiser)
end
