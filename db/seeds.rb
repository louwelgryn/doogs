# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "destroy all UserSkill"
UserSkill.destroy_all
puts "destroy all Commitments"
Commitment.destroy_all
puts "destroy all Messages"
Message.destroy_all
puts "destroy all Chat_rooms"
ChatRoom.destroy_all
puts "destroy all Tasks"
Task.destroy_all
puts "destroy all Participations"
Participation.destroy_all
puts "destroy all Events"
Event.destroy_all
puts "destroy all Project"
Project.destroy_all
puts "destroy all Charity"
Charity.destroy_all
puts "destroy all User"
User.destroy_all
puts "destroy all Skill"
Skill.destroy_all

# Skills ----------------------------------------------------------------------

puts "creating skills"

data_analyst = Skill.new
data_analyst.name = "Data analyst"
data_analyst.save
web_designer = Skill.new
web_designer.name = "Web designer"
web_designer.save
data_scientist = Skill.new
data_scientist.name = "Data scientist"
data_scientist.save
product_manager = Skill.new
product_manager.name = "Product manager"
product_manager.save
developer_front = Skill.new
developer_front.name = "Developer front"
developer_front.save
developer_back = Skill.new
developer_back.name = "Developer back"
developer_back.save
full_stack_developer = Skill.new
full_stack_developer.name = "Full Stack Developer"
full_stack_developer.save
data_engineer = Skill.new
data_engineer.name = "Data engineer"
data_engineer.save

# Users ----------------------------------------------------------------------

puts 'creating 7 users and their skills'

puts 'creating Aurelie'

# User 1
aurelie = User.new
aurelie.name = 'Aurelie Delpeche'
aurelie.description = "Je manipule des données depuis que j'ai 7 ans."
aurelie.level = 'Piou-piou'
aurelie.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566392276/gnluzho9jn2khwwok13h.jpg"
aurelie.email = 'aureliedelpeche@gmail.com'
aurelie.password = 'qwerty'
aurelie.save!

# User 1 - Skills

aurelie_skill1 = UserSkill.new
aurelie_skill1.skill = product_manager
aurelie_skill1.user = aurelie
aurelie_skill1.save

puts 'creating Lou Welgryn'

# User 2
lou = User.new
lou.name = 'Lou Welgryn'
lou.description = "J'ai hacké facebook à l'âge de 13 ans."
lou.level = 'Piou-piou'
lou.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567506450/_JBU8547-1_Lou_Welgryn_iv1xmm.jpg"
lou.email = 'louwelgryn@gmail.com'
lou.password = 'qwerty'
lou.save!

# User 2 - Skills

lou_skill1 = UserSkill.new
lou_skill1.skill = data_scientist
lou_skill1.user = lou
lou_skill1.save

lou_skill2 = UserSkill.new
lou_skill2.skill = data_engineer
lou_skill2.user = lou
lou_skill2.save

puts 'creating Antoine Gaillard'

# User 3
antoine = User.new
antoine.name ="Antoine Gaillard"
antoine.description = "J'ai pas mal de temps libre."
antoine.level = "Piou-piou"
antoine.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/q_60/v1567506803/_JBU8996-1_Antoine_Gaillard_ipfh5q.jpg"
antoine.email = "antoinegaillard@gmail.com"
antoine.password = "qwerty"
antoine.save!

# User 3- Skills

antoine_skill1 = UserSkill.new
antoine_skill1.skill = full_stack_developer
antoine_skill1.user = antoine
antoine_skill1.save

antoine_skill2 = UserSkill.new
antoine_skill2.skill = web_designer
antoine_skill2.user = antoine
antoine_skill2.save

antoine_skill3 = UserSkill.new
antoine_skill3.skill = developer_front
antoine_skill3.user = antoine
antoine_skill3.save

antoine_skill4 = UserSkill.new
antoine_skill4.skill = developer_back
antoine_skill4.user = antoine
antoine_skill4.save

puts 'creating Marie Stoppa'

# User 4
marie = User.new
marie.name ="Marie Stoppa"
marie.description = "I like to data data. I like to data !"
marie.level = "Piou-piou"
marie.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567506929/_JBU8196-1_Marie_Stoppa_kxm7cb.jpg"
marie.email = "mariestoppa@gmail.com"
marie.password = "qwerty"
marie.save!

# User 4- Skills

marie_skill1 = UserSkill.new
marie_skill1.skill = product_manager
marie_skill1.user = marie
marie_skill1.save

puts 'creating Maxence Ballande'

# User 5
maxence = User.new
maxence.name ="Maxence Ballande"
maxence.description = "Tu parles sur moi y'a R"
maxence.level = "Piou-piou"
maxence.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567507259/_JBU8747-1_xt8bxo.jpg"
maxence.email = "maxenceballende@gmail.com"
maxence.password = "qwerty"
maxence.save!

# User 5- Skills

maxence_skill1 = UserSkill.new
maxence_skill1.skill = product_manager
maxence_skill1.user = maxence
maxence_skill1.save

puts 'creating Arnaud de Castelbajac'

# User 6
arnaud = User.new
arnaud.name ="Arnaud de Castelbajac"
arnaud.description = "A la recherche d'une activité pour occuper mes dimanches après-midi"
arnaud.level = "Piou-piou"
arnaud.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567507210/_JBU8336-1_cafybx.jpg"
arnaud.email = "arnaud@gmail.com"
arnaud.password = "qwerty"
arnaud.save!

# User 6- Skills

arnaud_skill1 = UserSkill.new
arnaud_skill1.skill = product_manager
arnaud_skill1.user = arnaud
arnaud_skill1.save

puts 'creating Thomas Reilly'

# User 7
thomas = User.new
thomas.name ="Thomas Reilly"
thomas.description = "J'aime le développement web et le cinéma."
thomas.level = "Piou-piou"
thomas.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567507235/_JBU8663-1_l2rzoh.jpg"
thomas.email = "thomasbozzo@gmail.com"
thomas.password = "qwerty"
thomas.save!

# User 7- Skills

thomas_skill1 = UserSkill.new
thomas_skill1.skill = web_designer
thomas_skill1.user = thomas
thomas_skill1.save

thomas_skill2 = UserSkill.new
thomas_skill2.skill = developer_front
thomas_skill2.user = thomas
thomas_skill2.save

# Charities ----------------------------------------------------------------------

puts 'creating 6 charities'

puts "Creating charity SPA"

spa = Charity.new
spa.name = "Société Protectrice des Animaux"
spa.description = "L'association lutte au quotidien pour la protection animale. Suivez l'actualité dans notre combat pour le bien être des animaux. Recherchez votre compagnon idéal et aidez nous en réalisant un don ou en devenant bénévole."
spa.referent_name = "Marcel Bichon"
spa.referent_position = "Trésorier"
spa.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902315/spa_referent_image_dbdclk.jpg"
spa.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902315/spa_logo_bovwxt.png"
spa.address = "39 Boulevard Berthier 75017 Paris"
spa.save!

puts "Creating charity AHP"

ahp = Charity.new
ahp.name = "Amicale des Hygiénistes Psychorigides"
ahp.description = "L'amicale promeut une société libérée de tous germes, fleurant bon l'eau de javel ou les arômes articiels de pin des Landes. Rejoignez-nous dans ce combat pour un monde plus pur mais n'oubliez pas de vous laver les mains avant."
ahp.referent_name = "Hilda Chlorobenzène"
ahp.referent_position = "Fondatrice"
ahp.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/ahp_referent_image_sdtlng.jpg"
ahp.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/ahp_logo_uztqkm.png"
ahp.address = "39 Boulevard de la Madeleine 75008 Paris"
ahp.save!

puts "Creating charity Article 1"

article1 = Charity.new
article1.name = "Article 1"
article1.description = "Article 1 développe et encadre le parrainage de jeunes étudiants boursiers à haut potentiel par des professionnels."
article1.referent_name = "Boris Walbaum"
article1.referent_position = "Président"
article1.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/article1_referent_image_w5xyu4.jpg"
article1.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/article1_logo_tfgzpm.png"
article1.address = "29 Boulevard Bourdon 75004 Paris"
article1.save!

puts "Creating charity Open Food Facts"

open_food_facts = Charity.new
open_food_facts.name = "Open Food Facts"
open_food_facts.description = "Open Food Facts est une base de données sur les produits alimentaires faite par tout le monde, pour tout le monde. Elle vous permet de faire des choix plus informés, et comme les données sont ouvertes (open data), tout le monde peut les utiliser pour tout usage."
open_food_facts.referent_name = "Lisa Kasskroute"
open_food_facts.referent_position = "Président"
open_food_facts.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/open_food_facts_referent_image_psnrz0.jpg"
open_food_facts.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902315/open_food_facts_logo_ujhbkc.png"
open_food_facts.address = "21 rue des Iles 94100 Saint Maur Des Fosses"
open_food_facts.save!

puts "Creating charity Nature en Occitanie"

nature_en_occitanie = Charity.new
nature_en_occitanie.name = "Nature en Occitanie"
nature_en_occitanie.description = "Nature En Occitanie agit depuis 1969 pour la protection de la faune et de la flore sauvages ainsi que pour la préservation des milieux naturels de la région."
nature_en_occitanie.referent_name = "Johnny Appleseed"
nature_en_occitanie.referent_position = "Coordinateur du pôle Biodiversité"
nature_en_occitanie.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567068755/neo_referent_wst6bb.jpg"
nature_en_occitanie.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567068755/neo_logo_vejre9.jpg"
nature_en_occitanie.address = "5 Rue du Moulin Joly 75011 Paris"
nature_en_occitanie.save!

puts "Creating charity Bretagne Vivante"

bretagne_vivante = Charity.new
bretagne_vivante.name = "Bretagne Vivante"
bretagne_vivante.description = "Créée en 1958, association Loi 1901 reconnue d’utilité publique en 1968, agréée pour la protection de l’environnement, Bretagne Vivante est membre fondateur de grandes structures nationales et régionales telles que France Nature Environnement, Réserves Naturelles de France et le Réseau d’Éducation à l’Environnement en Bretagne (REEB)."
bretagne_vivante.referent_name = "Maïwenn Kermadec"
bretagne_vivante.referent_position = "Bryologue"
bretagne_vivante.remote_referent_image_url= "https://res.cloudinary.com/duro4nxuo/image/upload/v1567069302/bretagne_referent_bn0sgm.jpg"
bretagne_vivante.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567069302/bretagne_logo_p9k0dt.jpg"
bretagne_vivante.address = "71 rue didot 75014 paris"
bretagne_vivante.save!



# Projects ----------------------------------------------------------------------

puts 'creating 6 projects'

puts "creating project Open Food Facts"

project_open_food_facts = Project.new
project_open_food_facts.name = "Scannez vos produits pour sauver la planète"
project_open_food_facts.description = "À partir des données récupérées sur open food facts et auprès des industriels, l'objectif est de mettre en place un calculateur d'empreinte carbone. En fonction de plusieurs critères pré déterminés (emballages, composition, transport...) nous voulons pouvoir donner un label noir, rouge ou vert en fonction des gaz à effet de serre qui ont été émis pour la production du produit scanné."
project_open_food_facts.charity = open_food_facts
project_open_food_facts.development_goal = "Mesures relatives à la lutte contre les changements climatiques"
project_open_food_facts.status = "Terminé"
project_open_food_facts.start_date = Date.new(2019,1,1)
project_open_food_facts.end_date = Date.new(2019,3,1)
project_open_food_facts.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566899900/7793640219_open-food-facts-le-wikipedia-de-l-alimentation_1_blmly1.jpg"
project_open_food_facts.save!

puts "creating project Article1"

project_article1 = Project.new
project_article1.name = "Algorithme de recommandation pour le parrainage étudiant"
project_article1.description = "Optimiser le matching parrain-filleul pour Frateli afin de prévoir si un matching va réussir ou échouer grâce à un outil algorithmique d’aide à la décision pour améliorer le taux de réussite du parrainage."
project_article1.charity = article1
project_article1.development_goal = "Éducation de qualité"
project_article1.status = "En attente"
project_article1.start_date = Date.new(2019,9,1)
project_article1.end_date = Date.new(2019,11,12)
project_article1.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566901231/Cover-twitter_gvezw9.jpg"
project_article1.save

puts "creating project Spa"

project_spa = Project.new
project_spa.name = "Adoptez-moi"
project_spa.description = "Pour augmenter la visibilité des animaux qui attendent d’être adoptés, le bot Adoptez-moi récupère les informations de chiens et de chats qui patientent sur le site de la SPA puis les partage sur Twitter."
project_spa.charity = spa
project_spa.development_goal = "Vie terrestre"
project_spa.status = "En cours"
project_spa.start_date = Date.new(2019,7,5)
project_spa.end_date = Date.new(2019,11,10)

project_spa.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902057/photo-1494256997604-768d1f608cac_ktmift.jpg"
project_spa.save

puts "creating project Ahp"

project_ahp = Project.new
project_ahp.name = "Data for food"
project_ahp.description = "Retrouver les restaurant avec des problèmes d'hygiènes grâce aux commentaires TripAdvisor. L'objectif est de scraper et d'analyser plus de 80000 commentaires sur des restaurants pour détecter les restaurants insalubres, de manière automatisée par du Natural Language Processing. "
project_ahp.charity = ahp
project_ahp.development_goal = "Éducation de qualité"
project_ahp.status = "En attente"
project_ahp.start_date = Date.new(2019,8,1)
project_ahp.end_date = Date.new(2020,2,29)

project_ahp.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902207/katie-smith-uQs1802D0CQ-unsplash_ax9lud.jpg"
project_ahp.save

puts "creating project Nature en Occitanie"

project_neo = Project.new
project_neo.name = "Cartographier les petites bêtes"
project_neo.description = "Nos naturalistes récoltent énormément d'informations sur la petite faune (insectes) du territoire de l'Occitanie. Ces informations sont géoréférences, nous souhaitons pouvoir les valoriser sur de belles cartes dynamiques en ligne."
project_neo.charity = nature_en_occitanie
project_neo.development_goal = "Vie terrestre"
project_neo.status = "En cours"
project_neo.start_date = Date.new(2019,5,12)
project_neo.end_date = Date.new(2019,10,18)
project_neo.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567069943/project_neo_gsavww.jpg"
project_neo.save!

puts "creating project Bretagne Vivante"

project_bv = Project.new
project_bv.name = "Sus aux algues vertes"
project_bv.description = "Nous avons mesuré le taux de nitrates dans plus d'une cinquantaine de cours d'eau du Finistère et avons besoin de data analysts pour faire émerger des tendances de pollution aux nitrates par bassins versants."
project_bv.charity = bretagne_vivante
project_bv.development_goal = "Vie aquatique"
project_bv.status = "Terminé"
project_bv.start_date = Date.new(2018,2,9)
project_bv.end_date = Date.new(2018,6,12)
project_bv.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567070322/project_bv_i3xnzi.jpg"
project_bv.save!

# Chatroom ----------------------------------------------------------------------

puts 'creating 6 chatrooms'

puts 'creating chatroom Open food facts'

chatroom_open_food_facts = ChatRoom.new
chatroom_open_food_facts.name = "Open Food Facts Chat"
chatroom_open_food_facts.project = project_open_food_facts
chatroom_open_food_facts.save

puts 'creating chatroom Article1'

chatroom_article1 = ChatRoom.new
chatroom_article1.name = "Article1 chat"
chatroom_article1.project = project_article1
chatroom_article1.save

puts 'creating chatroom spa'

chatroom_spa = ChatRoom.new
chatroom_spa.name = "SPA"
chatroom_spa.project = project_spa
chatroom_spa.save

puts 'creating chatroom ahp'

chatroom_ahp = ChatRoom.new
chatroom_ahp.name = "Amicale des Hygiénistes Psychorigides chat "
chatroom_ahp.project = project_ahp
chatroom_ahp.save

puts 'creating chatroom Nature en Oxitanie'

chatroom_neo = ChatRoom.new
chatroom_neo.name = "Nature en Oxitanie chat"
chatroom_neo.project = project_neo
chatroom_neo.save

puts 'creating chatroom Bretagne vivante'

chatroom_bv = ChatRoom.new
chatroom_bv.name = "Bretagne vivante Chat"
chatroom_bv.project = project_bv
chatroom_bv.save


# Commitments ----------------------------------------------------------------------

puts 'Commiting people to projects'

puts 'Creating empty commitments to open_food_facts (finished)'

commitment_user1_project1 = Commitment.new
commitment_user1_project1.skill = product_manager
commitment_user1_project1.project = project_open_food_facts
commitment_user1_project1.save

commitment_user2_project1 = Commitment.new
commitment_user2_project1.skill = developer_front
commitment_user2_project1.project = project_open_food_facts
commitment_user2_project1.save

puts 'Assigning lou to open_food_facts'

commitment_user3_project1 = Commitment.new
commitment_user3_project1.skill = data_scientist
commitment_user3_project1.user = lou
commitment_user3_project1.project = project_open_food_facts
commitment_user3_project1.save

puts 'Creating empty comitment to spa (ongoing)'

commitment_user1_project2 = Commitment.new
commitment_user1_project2.skill = product_manager
commitment_user1_project2.project = project_spa
commitment_user1_project2.save!

commitment_user2_project2 = Commitment.new
commitment_user2_project2.skill = developer_front
commitment_user2_project2.project = project_spa
commitment_user2_project2.save!

puts 'Commiting Aurelie Delpeche and arnaud to neo (ongoing)'

commitment_user1_project5 = Commitment.new
commitment_user1_project5.skill = product_manager
commitment_user1_project5.user = aurelie
commitment_user1_project5.project = project_neo
commitment_user1_project5.save!

commitment_user1_project5 = Commitment.new
commitment_user1_project5.skill = data_analyst
commitment_user1_project5.project = project_neo
commitment_user1_project5.save!

# Empty Commitments ----------------------------------------------------------------------

puts 'Creating empty commitments'

puts 'creating empty commitment for ahp and assigning antoine, UK Queen and thomas'

commitment_user1_project3 = Commitment.new
commitment_user1_project3.skill = product_manager
commitment_user1_project3.project = project_ahp
commitment_user1_project3.save!

commitment_user2_project3 = Commitment.new
commitment_user2_project3.skill = developer_back
commitment_user2_project3.user = antoine
commitment_user2_project3.project = project_ahp
commitment_user2_project3.save!

commitment_user3_project3 = Commitment.new
commitment_user3_project3.skill = data_analyst
commitment_user3_project3.user = marie
commitment_user3_project3.project = project_ahp
commitment_user3_project3.save!

commitment_user4_project3 = Commitment.new
commitment_user4_project3.skill = developer_front
commitment_user4_project3.user = thomas
commitment_user4_project3.project = project_ahp
commitment_user4_project3.save!

puts 'creating empty commitments for article1'

commitment_user1_project4 = Commitment.new
commitment_user1_project4.skill = product_manager
commitment_user1_project4.project = project_article1
commitment_user1_project4.save!

commitment_user2_project4 = Commitment.new
commitment_user2_project4.skill = data_scientist
commitment_user2_project4.project = project_article1
commitment_user2_project4.save!

commitment_user3_project4 = Commitment.new
commitment_user3_project4.skill = data_scientist
commitment_user3_project4.project = project_article1
commitment_user3_project4.save!

commitment_user4_project4 = Commitment.new
commitment_user4_project4.skill = data_analyst
commitment_user4_project4.project = project_article1
commitment_user4_project4.save!

puts 'creating empty commitments for neo'

commitment_user3_project5 = Commitment.new
commitment_user3_project5.skill = data_scientist
commitment_user3_project5.project = project_neo
commitment_user3_project5.save!

commitment_user4_project5 = Commitment.new
commitment_user4_project5.skill = web_designer
commitment_user4_project5.project = project_neo
commitment_user4_project5.save!

puts 'creating empty commitments for bv'

commitment_user1_project6 = Commitment.new
commitment_user1_project6.skill = product_manager
commitment_user1_project6.project = project_bv
commitment_user1_project6.save!

commitment_user2_project6 = Commitment.new
commitment_user2_project6.skill = developer_back
commitment_user2_project6.project = project_bv
commitment_user2_project6.save!

commitment_user3_project6 = Commitment.new
commitment_user3_project6.skill = data_scientist
commitment_user3_project6.project = project_bv
commitment_user3_project6.save!

commitment_user4_project6 = Commitment.new
commitment_user4_project6.skill = data_analyst
commitment_user4_project6.project = project_bv
commitment_user4_project6.save!

# Tasks ----------------------------------------------------------------------

puts "creating tasks"

# task1_project1 = Task.new
# task1_project1.name = "Test du bot"
# task1_project1.project = project_spa
# task1_project1.user = marie
# task1_project1.description = "La v1 du bot est codée. Il faut mettre en oeuvre une batterie de tests pour s'assurer que tout roule."
# task1_project1.status = "A faire"
# task1_project1.priority_level = "Urgente"
# task1_project1.end_date = Date.new(2019,9,23)
# task1_project1.save!

# task2_project1 = Task.new
# task2_project1.name = "API Twitter"
# task2_project1.project = project_spa
# task2_project1.user = thomas
# task2_project1.description = "Il faut potasser l'API Twitter et identifier les params dont on aura besoin pour le bot."
# task2_project1.status = "A faire"
# task2_project1.priority_level = "Normale"
# task2_project1.end_date = Date.new(2019,10,12)
# task2_project1.save!

task1_project2 = Task.new
task1_project2.name = "Photos"
task1_project2.project = project_neo
task1_project2.user = aurelie
task1_project2.description = "Scraper les sites de photos libres de droits pour récupérer des tofs correctes de petites bêtes pour nos cards."
task1_project2.status = "A faire"
task1_project2.priority_level = "Prioritaire"
task1_project2.end_date = Date.new(2019,9,28)
task1_project2.save!

# task2_project2 = Task.new
# task2_project2.name = "Mapbox et JS"
# task2_project2.project = project_neo
# task2_project2.user = antoine
# task2_project2.description = "On a besoin de décrypter l'API de Mapbox pour arriver à afficher des cards animées avec du bon vieux JS des familles."
# task2_project2.status = "Terminée"
# task2_project2.priority_level = "Normale"
# task2_project2.end_date = Date.new(2019,6,8)
# task2_project2.save!

# Super User ----------------------------------------------------------------------

puts "creating Super User Marie"

mariette = User.new
mariette.name ="mariette Zuckerberg"
mariette.description = "J'ai pas mal de temps libre."
mariette.level = "Piou-piou"
mariette.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566901128/gettyimages-944400620_ygsytz.jpg"
mariette.email = "mariettezuckerberg@gmail.com"
mariette.password = "qwerty"
mariette.save!

mariette_skill1 = UserSkill.new
mariette_skill1.skill = full_stack_developer
mariette_skill1.user = mariette
mariette_skill1.save

mariette_skill2 = UserSkill.new
mariette_skill2.skill = web_designer
mariette_skill2.user = mariette
mariette_skill2.save

mariette_skill3 = UserSkill.new
mariette_skill3.skill = developer_front
mariette_skill3.user = mariette
mariette_skill3.save

mariette_skill4 = UserSkill.new
mariette_skill4.skill = developer_back
mariette_skill4.user = mariette
mariette_skill4.save

mariette_skill5 = UserSkill.new
mariette_skill5.skill = data_analyst
mariette_skill5.user = mariette
mariette_skill5.save

mariette_skill6 = UserSkill.new
mariette_skill6.skill = data_scientist
mariette_skill6.user = mariette
mariette_skill6.save

mariette_skill7 = UserSkill.new
mariette_skill7.skill = product_manager
mariette_skill7.user = mariette
mariette_skill7.save

puts 'creating events'
event = Event.new
event.name = "meeting"
event.start_time = DateTime.now
event.end_time = DateTime.now + 2.hour
event.project = project_spa
event.save!

puts 'finished!'



