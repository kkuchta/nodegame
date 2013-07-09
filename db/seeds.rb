# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cabin = Node.create({
  description:"You are inside a small cabin."
})

meadow = Node.create({
  description:"You are in a small mountain meadow."
})

forest = Node.create({
  description:"You are in a dark and scary forest"
})

cabin_door_out = Path.create({
  start_node:cabin,
  end_node:meadow,
  state:'open',
  start_description: "There is one door."
})

cabin_door_in = Path.create({
  start_node:meadow,
  end_node:cabin,
  state:'open',
  start_description: "There is a cabin with one door"
})

path_to_forest = Path.create({
  start_node:meadow
  end_node:forest,
  state:'open',
  start_description: "A faded path disappears into a forest to the north."


