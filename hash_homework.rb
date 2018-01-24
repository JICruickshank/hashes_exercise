stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

stops.push("Edinburgh Waverley")

stops.unshift("Glasgow Queen Street")

stops.insert(4, "Polmont")

p stops.index("Linlithgow") # index is 5

p stops

stops.delete("Livingston")

p stops

stops.delete_at(2) # delete Cumbernauld

p stops

p stops.length # There ars seven stops

# Falkirk High

p stops[2]
p stops.select {|stop| stop == "Falkirk High"} # returns an array, does this count?
p stops.fetch(2)

p stops.reverse # reverse the array

for stop in stops # print each stop with for loop
  p stop
end







users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

p users["Jonathan"][:twitter] # Jonathan twitter

p users["Erik"][:home_town] # Erik home

p users["Erik"][:favourite_numbers] # Erik numbers

p users["Avril"][:pets]["colin"] # Avril pet

p users["Erik"][:favourite_numbers].min # Erik number

p users["Erik"][:favourite_numbers].push(7) # Add 7

users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town] # Erik home change

users["Erik"][:pets]["fluffy"] = :dog
p users["Erik"] # give Erik another dog

users["Jay"] = {home_town: "Manchester"} # add myself (there's already a Jonathan!)
p users["Jay"]


united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital] # change Welsh capital

united_kingdom.push({name: "Northern Ireland", population: 1_811_000, capital: "Belfast"})
p united_kingdom[3] # add N.I.

for country in united_kingdom
  p country[:name]
end # print each country name
total = 0
for country in united_kingdom
  total += country[:population]
end
p total # print total of UK
