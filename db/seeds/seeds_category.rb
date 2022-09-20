@categories = [
    {
      "catname": "Sport",
      "img":"./assets/images/cat1.jpg",
    },
    {
      "catname": "Scooter",
      "img":"./assets/images/cat2.jpg",
    },
    {
      "catname": "Naked bike",
      "img":"./assets/images/cat3.jpg",
    },
    {
      "catname": "Custom-cruiser",
      "img":"./assets/images/cat4.jpg",
    },
    {
      "catname": "Cross-motocross",
      "img":"./assets/images/cat5.jpg",
    },
    {
      "catname": "Super motard",
      "img":"./assets/images/cat6.jpg",
    },
    {
      "catname": "Minibike-sport",
      "img":"./assets/images/cat7.jpg",
    },
    {
      "catname": "Minibike-cross",
      "img":"./assets/images/cat8.jpg",
    },
    {
      "catname": "Classic",
      "img":"./assets/images/cat9.jpg",
    }
]

@categories.each do |category|
  Category.create(category)
end
