@categories = [
    {
      "catname": "Sport",
      "image":"./assets/cat1.jpg",
    },
    {
      "catname": "Scooter",
      "image":"./assets/cat2.jpg",
    },
    {
      "catname": "Naked bike",
      "image":"./assets/cat3.jpg",
    },
    {
      "catname": "Custom-cruiser",
      "image":"./assets/cat4.jpg",
    },
    {
      "catname": "Cross-motocross",
      "image":"./assets/cat5.jpg",
    },
    {
      "catname": "Super motard",
      "image":"./assets/cat6.jpg",
    },
    {
      "catname": "Minibike-sport",
      "image":"./assets/cat7.jpg",
    },
    {
      "catname": "Minibike-cross",
      "image":"./assets/cat8.jpg",
    },
    {
      "catname": "Classic",
      "image":"./assets/cat9.jpg",
    }
]

@categories.each do |category|
  Category.create(category)
end
