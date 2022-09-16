@minibikesports = [
  {
    "articleID": 651501,
    "brand": "Daelim",
    "model": "S-Five",
    "category_id": 7,
    "year": "2010",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2010/S-Five/Daelim_2010_S-Five.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 147812,
    "brand": "Daelim",
    "model": "S-One",
    "category_id": 7,
    "year": "2010",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2010/S-One/Daelim_2010_S-One.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 392443,
    "brand": "Daelim",
    "model": "S2 125",
    "category_id": 7,
    "year": "2006",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2006/S2 125/Daelim_2006_S2 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 54040,
    "brand": "Daelim",
    "model": "S2 125 Fi Freewing",
    "category_id": 7,
    "year": "2008",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2008/S2 125 Fi Freewing/Daelim_2008_S2 125 Fi Freewing.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 721086,
    "brand": "Daelim",
    "model": "S3",
    "category_id": 7,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/S3/Daelim_2011_S3.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
]

@minibikesports.each do |minibikesport|
  Motorcycle.create(minibikesport)
end