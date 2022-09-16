@supermotards = [
  {
    "articleID": 532126,
    "brand": "Daelim",
    "model": "E-Five",
    "category_id": 6,
    "year": "2007",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2007/E-Five/Daelim_2007_E-Five.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 398175,
    "brand": "Daelim",
    "model": "Freewing 125",
    "category_id": 6,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/Freewing 125/Daelim_2011_Freewing 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 638631,
    "brand": "Daelim",
    "model": "History",
    "category_id": 6,
    "year": "2004",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2004/History/Daelim_2004_History.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 77061,
    "brand": "Daelim",
    "model": "NS 125 DLX",
    "category_id": 6,
    "year": "2004",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2004/NS 125 DLX/Daelim_2004_NS 125 DLX.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 762709,
    "brand": "Daelim",
    "model": "Otello 125",
    "category_id": 6,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/Otello 125/Daelim_2011_Otello 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
]

@supermotards.each do |supermotard|
  Motorcycle.create(supermotard)
end