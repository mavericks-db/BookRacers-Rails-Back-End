@nakedbikes = [
  {
    "articleID": 578980,
    "brand": "Daelim",
    "model": "RoadSport 125",
    "category_id": 3,
    "year": "2015",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2015/RoadSport 125/Daelim_2015_RoadSport 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 215814,
    "brand": "Daelim",
    "model": "Roadwin",
    "category_id": 3,
    "year": "2010",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2010/Roadwin/Daelim_2010_Roadwin.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 597540,
    "model": "Roadwin 125",
    "brand": "Daelim",
    "category_id": 3,
    "year": "2011",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2011/Roadwin 125/Daelim_2011_Roadwin 125.jpg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 171212,
    "brand": "Daelim",
    "model": "VJF 125 RoadSport",
    "category_id": 3,
    "year": "2013",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2013/VJF 125 RoadSport/Daelim_2013_VJF 125 RoadSport.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 91441,
    "brand": "Daelim",
    "model": "VJF 125 RoadWin",
    "category_id": 3,
    "year": "2013",
    "image": "http://api-motorcycle.makingdatameaningful.com/files/Daelim/2013/VJF 125 RoadWin/Daelim_2013_VJF 125 RoadWin.jpeg",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@nakedbikes.each do |nakedbike|
  Motorcycle.create(nakedbike)
end