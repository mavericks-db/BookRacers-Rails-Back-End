@minibikecross = [
  {
    "articleID": 443396,
    "brand": "Daelim",
    "model": "S300",
    "category_id": 8,
    "year": "2018",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2018/S300/Daelim_2018_S300.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 282828,
    "brand": "Daelim",
    "model": "S4 50",
    "category_id": 8,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/S4 50/Daelim_2011_S4 50.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 472642,
    "brand": "Daelim",
    "model": "S5 50",
    "category_id": 8,
    "year": "2013",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2013/S5 50/Daelim_2013_S5 50.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 25615,
    "brand": "Daelim",
    "model": "Steezer",
    "category_id": 8,
    "year": "2017",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/Steezer/Daelim_2017_Steezer.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 103279,
    "brand": "Daelim",
    "model": "VS 125",
    "category_id": 8,
    "year": "2014",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2014/VS 125/Daelim_2014_VS 125.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@minibikecross.each do |mini|
  Motorcycle.create(mini)
end