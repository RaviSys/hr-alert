# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Industry.create([
  {name: 'Information Technology'},
  {name: 'Entertainment'},
  {name: 'Automation'},
  {name: 'Foods and Bevrages'},
  {name: 'Electronics and Communications'},
  {name: 'Computer and Software'},
  {name: 'Education and Training'},
  {name: 'Hardware and Machenics'},
  {name: 'Agriculture'},
  {name: 'Tours and Travels'},
  {name: 'Arts and Crafts'},
  {name: 'Internet'},
  {name: 'Construction'},
  {name: 'Healthcare'},
  {name: 'Hospitality'},
  {name: 'Transportation'},
  {name: 'Timber'},
  {name: 'Insurance'}
])

Domain.create([
  {name: 'Web Development'},
  {name: 'Web Designing'},
  {name: 'Artificial Intellegence'},
  {name: 'Machine Learning'},
  {name: 'Digital Marketing'},
  {name: 'Content Writing'}
])