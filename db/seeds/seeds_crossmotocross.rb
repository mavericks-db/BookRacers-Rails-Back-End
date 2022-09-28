@crossmotocross = [
  {
    "articleID": 933570,
    "brand": "Daelim",
    "model": "Bonita 50",
    "category_id": 5,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/A-Four/Daelim_2011_A-Four.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 275877,
    "brand": "Daelim",
    "model": "Citi Ace 110",
    "category_id": 5,
    "year": "2016",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2016/Aroma 125/Daelim_2016_Aroma 125.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 501232,
    "brand": "Daelim",
    "model": "Cordi",
    "category_id": 5,
    "year": "2008",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/B-Bone/Daelim_2017_B-Bone.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },

  {
    "articleID": 444346,
    "brand": "Daelim",
    "model": "Dart 125",
    "category_id": 5,
    "year": "2017",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2016/Beagle 50/Daelim_2016_Beagle 50.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 594054,
    "brand": "Daelim",
    "model": "Delfino 125",
    "category_id": 5,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/Besbi/Daelim_2017_Besbi.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@crossmotocross.each do |cross|
  Motorcycle.create(cross)
end