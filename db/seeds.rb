# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all User"
User.destroy_all
puts "destroy all Projects"
Projects.destroy_all
puts "destroy all Charity"
Charity.destroy_all
puts "destroy all Skills"
Skill.destroy_all

puts "creating skills"

data_analyst = Skill.new
data_analyst.name = "Data analyst"
web_designer = Skill.new
web_designer.name = "Web designer"
data_scientist = Skill.new
data_scientist.name = "Data scientist"
product_manager = Skill.new
product_manager.name = "Product manager"
developper_front = Skill.new
developper_front.name = "Developper front"
developper_back = Skill.new
developper_back.name = "Developper back"
full_stack_developper = Skill.new
full_stack_developper.name = "Full Stack Developper"
data_engineer = Skill.new
data_engineer.name = "Data engineer"

puts "creating project Open Food Facts"
project_open_food_facts = Project.new
project_open_food_facts.name = "Et si scanner vos produits vous permettait de découvrir leur impact sur la planète ?"
project_open_food_facts.description = " À partir des données récupérées sur open food facts et auprès des industriels, l'objectif est de mettre en place un calculateur d'empreinte carbone. En fonction de plusieurs critères pré déterminés (emballages, composition, transport,...) nous voulons pouvoir donner un label noir, rouge ou vert en fonction des gaz à effet de serre qui ont été émis pour la production du produit scanné. "
project_open_food_facts.association = open_food_facts
project_open_food_facts.development_goal = "Mesures relatives à la lutte contre les changements climatiques"
project_open_food_facts.status = "finished"
project_open_food_facts.start_date = Date.new(2019,01,01)
project_open_food_facts.end_date = Date.new(2019,03,01)
project_open_food_facts.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566899900/7793640219_open-food-facts-le-wikipedia-de-l-alimentation_1_blmly1.jpg"



