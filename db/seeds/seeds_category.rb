@categories = [
    {
      "catname": "Sport"
    },
    {
      "catname": "Scooter"
    },
    {
      "catname": "Naked bike"
    },
    {
      "catname": "Custom-cruiser"
    },
    {
      "catname": "Cross-motocross"
    },
    {
      "catname": "Super motard"
    },
    {
      "catname": "Minibike-sport"
    },
    {
      "catname": "Minibike-cross"
    },
    {
      "catname": "Classic"
    }
]

@categories.each do |category|
  Category.create(category)
end
