@scooters = [
  {
    "articleID": 764532,
    "brand": "Daelim",
    "model": "A-Four",
    "category_id": 2,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/A-Four/Daelim_2011_A-Four.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
    "reserved": false,
  },
  {
    "articleID": 791088,
    "brand": "Daelim",
    "model": "Aroma 125",
    "category_id": 2,
    "year": "2016",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2016/Aroma 125/Daelim_2016_Aroma 125.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
    "reserved": false,
  },
  {
    "articleID": 738713,
    "brand": "Daelim",
    "model": "B-Bone",
    "category_id": 2,
    "year": "2017",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/B-Bone/Daelim_2017_B-Bone.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
    "reserved": false,
  },
  {
    "articleID": 828248,
    "brand": "Daelim",
    "model": "Beagle 50",
    "category_id": 2,
    "year": "2016",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2016/Beagle 50/Daelim_2016_Beagle 50.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
    "reserved": false,
  },
  {
    "articleID": 101066,
    "brand": "Daelim",
    "model": "Besbi",
    "category_id": 2,
    "year": "2017",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2017/Besbi/Daelim_2017_Besbi.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
    "reserved": false,
  }
]

@scooters.each do |scooter|
  Motorcycle.create(scooter)
end