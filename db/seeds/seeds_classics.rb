@classics= [
  {
    "articleID": 931575,
    "brand": "Daelim",
    "model": "NS 125 III",
    "category_id": 9,
    "year": "2008",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2008/NS 125 III/Daelim_2008_NS 125 III.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 585830,
    "brand": "Daelim",
    "model": "S1",
    "category_id": 9,
    "year": "2017",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/S1/Daelim_2017_S1.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 227436,
    "brand": "Daelim",
    "model": "Steezer S",
    "category_id": 9,
    "year": "2016",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2016/Steezer S/Daelim_2016_Steezer S.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 368082,
    "brand": "Daelim",
    "model": "Witty 50",
    "category_id": 9,
    "year": "2016",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2016/Witty 50/Daelim_2016_Witty 50.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 929423,
    "brand": "Daelim",
    "model": "XQ1",
    "category_id": 9,
    "year": "2022",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2022/XQ1/Daelim_2022_XQ1.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
]

@classics.each do |classic|
  Motorcycle.create(classic)
end