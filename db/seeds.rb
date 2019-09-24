puts "destroy all Ressources"
Ressource.destroy_all
puts "destroy all UserSkills"
UserSkill.destroy_all
puts "destroy all Commitments"
Commitment.destroy_all
puts "destroy all Messages"
Message.destroy_all
puts "destroy all ChatRooms"
ChatRoom.destroy_all
puts "destroy all Tasks"
Task.destroy_all
puts "destroy all Participations"
Participation.destroy_all
puts "destroy all Events"
Event.destroy_all
puts "destroy all Project"
Project.destroy_all
puts "destroy all Charities"
Charity.destroy_all
puts "destroy all Users"
User.destroy_all
puts "destroy all Skills"
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

puts 'creating Aurelie Delpeche'

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
lou.description = "J'ai hacké Facebook à l'âge de 13 ans."
lou.level = 'Piou-piou'
lou.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645063/qks9h7amqmy4qlxq3zly.jpg"
lou.email = 'louwelgryn@gmail.com'
lou.password = 'qwerty'
lou.save!

# User 2 - Skills

lou_skill1 = UserSkill.new
lou_skill1.skill = data_scientist
lou_skill1.user = lou
lou_skill1.save

lou_skill3 = UserSkill.new
lou_skill3.skill = product_manager
lou_skill3.user = lou
lou_skill3.save

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
antoine.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645064/ik1sj96palhz9wtojd0e.jpg"
antoine.email = "antoinegaillard@gmail.com"
antoine.password = "qwerty"
antoine.save!

# User 3 - Skills

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

puts 'creating Marie Stoppa / guest'

# User 4

marie = User.new
marie.name ="Marie Stoppa"
marie.description = "A la recherche d'une activité pour occuper mes dimanches après-midi"
marie.level = "Piou-piou"
marie.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645065/etktgn9rlfipzjbk6cva.jpg"
marie.email = "guest@doog.club"
marie.password = "password"
marie.save!

# User 4 - Skills

marie_skill1 = UserSkill.new
marie_skill1.skill = data_analyst
marie_skill1.user = marie
marie_skill1.save

puts 'creating Maxence Ballande'

# User 5

maxence = User.new
maxence.name ="Maxence Ballande"
maxence.description = "Tu parles sur moi y'a R"
maxence.level = "Piou-piou"
maxence.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645066/gzdvhwpkno68jhyp4gzr.jpg"
maxence.email = "maxenceballende@gmail.com"
maxence.password = "qwerty"
maxence.save!

# User 5 - Skills

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
arnaud.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645067/opjml0zwvkazwgrh9uym.jpg"
arnaud.email = "arnaud@gmail.com"
arnaud.password = "qwerty"
arnaud.save!

# User 6 - Skills

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
thomas.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645068/s0yq7bduaevdpkdhwa2i.jpg"
thomas.email = "thomasbozzo@gmail.com"
thomas.password = "qwerty"
thomas.save!

# User 7 - Skills

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
spa.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645070/mc4ixeqztz1znhciteq9.jpg"
spa.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645069/lmzpwtsg6rxedpeosenh.png"
spa.address = "39 Boulevard Berthier 75017 Paris"
spa.save!

puts "Creating charity AHP"

ahp = Charity.new
ahp.name = "Amicale des Hygiénistes Psychorigides"
ahp.description = "L'amicale promeut une société libérée de tous germes, fleurant bon l'eau de javel ou les arômes articiels de pin des Landes. Rejoignez-nous dans ce combat pour un monde plus pur mais n'oubliez pas de vous laver les mains avant."
ahp.referent_name = "Élodie Louineaux"
ahp.referent_position = "Fondatrice"
ahp.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645072/wupadtdcomcmfrskwkt2.jpg"
ahp.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645071/fytcvqbijp2r9aja1xfl.png"
ahp.address = "39 Boulevard de la Madeleine 75008 Paris"
ahp.save!

puts "Creating charity Article 1"

article1 = Charity.new
article1.name = "Article 1"
article1.description = "Article 1 développe et encadre le parrainage de jeunes étudiants boursiers à haut potentiel par des professionnels."
article1.referent_name = "Boris Walbaum"
article1.referent_position = "Président"
article1.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645074/fpw6j1k3kxoas9w6yovr.jpg"
article1.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645073/xh0momxk7fjfz4mp6qc2.png"
article1.address = "29 Boulevard Bourdon 75004 Paris"
article1.save!

puts "Creating charity Open Food Facts"

open_food_facts = Charity.new
open_food_facts.name = "Open Food Facts"
open_food_facts.description = "Open Food Facts est une base de données sur les produits alimentaires faite par tout le monde, pour tout le monde. Elle vous permet de faire des choix plus informés, et comme les données sont ouvertes (open data), tout le monde peut les utiliser pour tout usage."
open_food_facts.referent_name = "Lisa Barthélémy"
open_food_facts.referent_position = "Présidente"
open_food_facts.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568643223/doogs/stephanie-liverani-Zz5LQe-VSMY-unsplash_nkwhoq.jpg"
open_food_facts.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645075/cyajh40zlgefxk2cdz54.png"
open_food_facts.address = "21 rue des Iles 94100 Saint Maur Des Fosses"
open_food_facts.save!

puts "Creating charity Fédération Nature Occitanie"

nature_en_occitanie = Charity.new
nature_en_occitanie.name = "Fédération Nature Occitanie"
nature_en_occitanie.description = "La Fédération Nature Occitanie agit depuis 1968 pour la protection de la faune et de la flore sauvages ainsi que pour la préservation des milieux naturels de la région."
nature_en_occitanie.referent_name = "Hervé Martin"
nature_en_occitanie.referent_position = "Coordinateur du pôle Biodiversité"
nature_en_occitanie.remote_referent_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645079/ub2xthnaphsnwulkcclq.jpg"
nature_en_occitanie.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568639908/doogs/nature_wjfxfw.jpg"
nature_en_occitanie.address = "5 Rue du Moulin Joly 75011 Paris"
nature_en_occitanie.save!

puts "Creating charity Bretagne Environnement"

bretagne_vivante = Charity.new
bretagne_vivante.name = "Bretagne Environnement"
bretagne_vivante.description = "Créée en 1969, association Loi 1901 reconnue d’utilité publique, agréée pour la protection de l’environnement, Bretagne Environnement se bat pour la sauvegarde des écosystèmes bretons, notamment les écosystèmes aquatiques."
bretagne_vivante.referent_name = "Maïwenn Kermadec"
bretagne_vivante.referent_position = "Bryologue"
bretagne_vivante.remote_referent_image_url= "https://res.cloudinary.com/duro4nxuo/image/upload/v1568643223/doogs/alex-avalos-zmzb1gU1DS4-unsplash_qlxyf6.jpg"
bretagne_vivante.remote_logo_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568639952/doogs/beautiful-landscape-and-river_mdb9h0.png"
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
project_open_food_facts.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645082/gehyo64dvgqdhca3ady0.jpg"
project_open_food_facts.save!

puts "creating project Article1"

project_article1 = Project.new
project_article1.name = "Algorithme de recommandation pour le parrainage étudiant"
project_article1.description = "Optimiser le matching parrain-filleul pour Frateli afin de prévoir si un matching va réussir ou échouer grâce à un outil algorithmique d’aide à la décision pour améliorer le taux de réussite du parrainage."
project_article1.charity = article1
project_article1.development_goal = "Éducation de qualité"
project_article1.status = "En cours"
project_article1.start_date = Date.new(2019,8,15)
project_article1.end_date = Date.new(2019,11,12)
project_article1.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645083/aph40qrls8izvnplqg5v.jpg"
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
project_spa.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645084/abjdz3ofb0rf3szp9ivb.jpg"
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
project_ahp.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645086/sg3tz35ajhjo4bethi0u.jpg"
project_ahp.save

puts "creating project Nature en Occitanie"

project_neo = Project.new
project_neo.name = "Cartographier les petites bêtes"
project_neo.description = "Nos naturalistes récoltent énormément d'informations sur la petite faune (insectes) du territoire de l'Occitanie. Ces informations sont géoréférences, nous souhaitons pouvoir les valoriser sur de belles cartes dynamiques en ligne."
project_neo.charity = nature_en_occitanie
project_neo.development_goal = "Vie terrestre"
project_neo.status = "En attente"
project_neo.start_date = Date.new(2019,5,12)
project_neo.end_date = Date.new(2019,10,18)
project_neo.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645087/fvyav0c74zpsw8ovgknk.jpg"
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
project_bv.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645089/y5jlf1ib8vyx7azxmv9d.jpg"
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
chatroom_ahp.name = "Amicale des Hygiénistes Psychorigides chat"
chatroom_ahp.project = project_ahp
chatroom_ahp.save

puts 'creating chatroom Nature en Occitanie'

chatroom_neo = ChatRoom.new
chatroom_neo.name = "Nature en Occitanie chat"
chatroom_neo.project = project_neo
chatroom_neo.save

puts 'creating chatroom Bretagne vivante'

chatroom_bv = ChatRoom.new
chatroom_bv.name = "Bretagne vivante Chat"
chatroom_bv.project = project_bv
chatroom_bv.save


# Commitments ----------------------------------------------------------------------

puts 'Creating commitments for Open Food Facts'

commitment1_project1 = Commitment.new
commitment1_project1.skill = product_manager
commitment1_project1.project = project_open_food_facts
commitment1_project1.save

commitment2_project1 = Commitment.new
commitment2_project1.skill = developer_front
commitment2_project1.project = project_open_food_facts
commitment2_project1.save

commitment3_project1 = Commitment.new
commitment3_project1.skill = data_scientist
commitment3_project1.user = thomas
commitment3_project1.project = project_open_food_facts
commitment3_project1.save

puts 'Creating commitments for SPA'

commitment1_project2 = Commitment.new
commitment1_project2.skill = product_manager
commitment1_project2.project = project_spa
commitment1_project2.save!

commitment2_project2 = Commitment.new
commitment2_project2.skill = developer_front
commitment2_project2.project = project_spa
commitment2_project2.save!

puts 'Creating commitments for Article 1'

commitment1_project3 = Commitment.new
commitment1_project3.skill = product_manager
commitment1_project3.user = lou
commitment1_project3.project = project_article1
commitment1_project3.save!

commitment2_project3 = Commitment.new
commitment2_project3.skill = developer_back
commitment2_project3.user = antoine
commitment2_project3.project = project_article1
commitment2_project3.save!

commitment3_project3 = Commitment.new
commitment3_project3.skill = data_analyst
commitment3_project3.user = marie
commitment3_project3.project = project_article1
commitment3_project3.save!

commitment4_project3 = Commitment.new
commitment4_project3.skill = developer_front
commitment4_project3.user = maxence
commitment4_project3.project = project_article1
commitment4_project3.save!

puts 'Creating commitments for AHP'

commitment1_project4 = Commitment.new
commitment1_project4.skill = product_manager
commitment1_project4.project = project_ahp
commitment1_project4.save!

commitment2_project4 = Commitment.new
commitment2_project4.skill = data_scientist
commitment2_project4.project = project_ahp
commitment2_project4.save!

commitment3_project4 = Commitment.new
commitment3_project4.skill = data_scientist
commitment3_project4.project = project_ahp
commitment3_project4.save!

commitment4_project4 = Commitment.new
commitment4_project4.skill = data_analyst
commitment4_project4.project = project_ahp
commitment4_project4.save!

puts 'Creating commitments for BV'

commitment1_project6 = Commitment.new
commitment1_project6.skill = product_manager
commitment1_project6.project = project_bv
commitment1_project6.save!

commitment2_project6 = Commitment.new
commitment2_project6.skill = developer_back
commitment2_project6.project = project_bv
commitment2_project6.save!

commitment3_project6 = Commitment.new
commitment3_project6.skill = data_scientist
commitment3_project6.project = project_bv
commitment3_project6.save!

commitment4_project6 = Commitment.new
commitment4_project6.skill = data_analyst
commitment4_project6.project = project_bv
commitment4_project6.save!

puts 'Creating commitments for NEO'

commitment1_project5 = Commitment.new
commitment1_project5.skill = product_manager
commitment1_project5.user = aurelie
commitment1_project5.project = project_neo
commitment1_project5.save!

commitment2_project5 = Commitment.new
commitment2_project5.skill = data_analyst
commitment2_project5.user = arnaud
commitment2_project5.project = project_neo
commitment2_project5.save!

commitment3_project5 = Commitment.new
commitment3_project5.skill = data_scientist
commitment3_project5.project = project_neo
commitment3_project5.save!

commitment4_project5 = Commitment.new
commitment4_project5.skill = web_designer
commitment4_project5.project = project_neo
commitment4_project5.save!


# Tasks for Article 1 -------------------------------------------------------------------

puts "creating tasks for Article 1"

task1 = Task.new
task1.name = "Cleaner base de données"
task1.project = project_article1
task1.user = marie
task1.description = "Il faut nettoyer la base de données pour commencer à travailler"
task1.status = "A faire"
task1.priority_level = "Urgente"
task1.end_date = Date.new(2019,9,23)
task1.save!

task2 = Task.new
task2.name = "Rencontre avec un mentor"
task2.project = project_article1
task2.user = marie
task2.description = "Rencontrer un mentor pour comprendre ce qu'ils attendent de l'accompagnement"
task2.status = "A faire"
task2.priority_level = "Normale"
task2.end_date = Date.new(2019,9,30)
task2.save!

task3 = Task.new
task3.name = "Présentation projet"
task3.project = project_article1
task3.user = marie
task3.description = "Première entrée en matière"
task3.status = "Achevée"
task3.priority_level = "Normale"
task3.end_date = Date.new(2019,9,30)
task3.save!

task4 = Task.new
task4.name = "Roadmap du projet"
task4.project = project_article1
task4.user = lou
task4.description = "Faire une première roadmap avec des milestones et deadlines"
task4.status = "A faire"
task4.priority_level = "Urgente"
task4.end_date = Date.new(2019,9,24)
task4.save!

task5 = Task.new
task5.name = "Appeler Article1"
task5.project = project_article1
task5.user = lou
task5.description = "Première entrée en matière"
task5.status = "Achevée"
task5.priority_level = "Normale"
task5.end_date = Date.new(2019,9,23)
task5.save!

task6 = Task.new
task6.name = "Bilan 1ère semaine"
task6.project = project_article1
task6.user = lou
task6.description = "Premier bilan des premières semaines d'exploration"
task6.status = "A faire"
task6.priority_level = "Normale"
task6.end_date = Date.new(2019,9,24)
task6.save!

task7 = Task.new
task7.name = "Schéma de la db"
task7.project = project_article1
task7.user = maxence
task7.description = "Faire un premier schéma de base de données"
task7.status = "A faire"
task7.priority_level = "Prioritaire"
task7.end_date = Date.new(2019,9,24)
task7.save!

task8 = Task.new
task8.name = "Exemple"
task8.project = project_article1
task8.user = maxence
task8.description = "Premier bilan des premières semaines d'exploration"
task8.status = "Achevée"
task8.priority_level = "Normale"
task8.end_date = Date.new(2019,9,24)
task8.save!


# Events for Article 1 -------------------------------------------------------------------

puts 'creating events for Article 1'

event = Event.new
event.name = "meeting"
event.start_time = DateTime.now
event.end_time = DateTime.now + 2.hour
event.project = project_article1
event.save!

event1 = Event.new
event1.name = "Point DB Marie"
event1.start_time = DateTime.new(2019,9,9,12)
event1.end_time = DateTime.now + 2.hour
event1.status = "reunion"
event1.project = project_article1
event1.save!

participation1_event1 = Participation.new
participation1_event1.user = lou
participation1_event1.event = event1
participation1_event1.start_time = event1.start_time
participation1_event1.save!

participation3_event1 = Participation.new
participation3_event1.user = marie
participation3_event1.event = event1
participation3_event1.start_time = event1.start_time
participation3_event1.save!

event2 = Event.new
event2.name = "Déj pdg Article1 "
event2.start_time = DateTime.new(2019,9,13,12)
event2.end_time = DateTime.now + 2.hour
event2.status = "perso"
event2.project = project_article1
event2.save!

participation1_event2 = Participation.new
participation1_event2.user = lou
participation1_event2.event = event2
participation1_event2.start_time = event2.start_time
participation1_event2.save!

event3 = Event.new
event3.name = "Bilan 1"
event3.start_time = DateTime.new(2019,9,10,11)
event3.end_time = DateTime.now + 2.hour
event3.project = project_article1
event3.status = "réunion"
event3.save!

participation1_event3 = Participation.new
participation1_event3.user = lou
participation1_event3.event = event3
participation1_event3.start_time = event3.start_time
participation1_event3.save!

participation2_event3 = Participation.new
participation2_event3.user = marie
participation2_event3.event = event3
participation2_event3.start_time = event3.start_time
participation2_event3.save!


# Messages for Article 1 -------------------------------------------------------------------

puts 'creating messages for Article 1'

puts 'creating message 1'

message1 = Message.new
message1.chat_room = chatroom_article1
message1.user = marie
message1.content = "Bonjour à tous je m'appelle Marie et je suis ravie de vous rencontrer pour travailler sur ce projet"
message1.save!

puts 'creating message 2'

message2 = Message.new
message2.chat_room = chatroom_article1
message2.user = maxence
message2.content = "Hello Marie, moi c'est Maxence ! Je suis ravi d'apporter mes compétences de geek passsionné pour aider des jeunes à trouver leur voix"
message2.save!

puts 'creating message 3'

message3 = Message.new
message3.chat_room = chatroom_article1
message3.user = antoine
message3.content = "Enchanté. Moi c'est Antoine et j'ai hâte de commencer !"
message3.save!

puts 'creating message 4'

message4 = Message.new
message4.chat_room = chatroom_article1
message4.user = lou
message4.content = "Hello la dream team ! ça vous dit qu'on s'organise un verre pour tous se rencontrer ? Le 3 septembre par exemple ?"
message4.save!

puts 'creating message 5'

message5 = Message.new
message5.chat_room = chatroom_article1
message5.user = maxence
message5.content = "Top !"
message5.save!

puts 'creating message 6'

message6 = Message.new
message6.chat_room = chatroom_article1
message6.user = marie
message6.content = "J'espère que vous vous êtes bien remis de la soirée de la veille ! J'ai commencé à nettoyer la base de données, vous pouvez télécharger le fichier csv 'Donnnées brutes'"
message6.save!

puts 'creating message 7'

message7 = Message.new
message7.chat_room = chatroom_article1
message7.user = antoine
message7.content = "Hello Marie ! Merci beaucoup je regarde dès que j'ai 5 minutes"
message7.save!

puts 'creating message 8'

message8 = Message.new
message8.chat_room = chatroom_article1
message8.user = maxence
message8.content = "Je décuve encore quelques heures et je m'y mets !"
message8.save!

puts 'creating message 9'

message9 = Message.new
message9.chat_room = chatroom_article1
message9.user = marie
message9.content = "Parfait ! Faites moi vos retours quand vous pouvez :)"
message9.save!


# Files for Article 1 -------------------------------------------------------------------

puts "creating files for Article 1"

file1 = Ressource.new
file1.name = "Schéma de la DB"
file1.project = project_article1
file1.remote_source_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568642570/doogs/db_schema_uebuxp.jpg"
file1.user = marie
file1.save!

file2 = Ressource.new
file2.name = "Cahier des charges"
file2.project = project_article1
file2.remote_source_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568642570/doogs/cahier-charges_pzgfir.pdf"
file2.user = antoine
file2.save!

file3 = Ressource.new
file3.name = "Données brutes"
file3.project = project_article1
file3.remote_source_url = "https://res.cloudinary.com/duro4nxuo/raw/upload/v1568642569/doogs/dbarticle1_imjjvv.csv"
file3.user = marie
file3.save!


# Super User ----------------------------------------------------------------------

puts "creating Super User Mariette"

mariette = User.new
mariette.name ="mariette Zuckerberg"
mariette.description = "J'ai pas mal de temps libre."
mariette.level = "Piou-piou"
mariette.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1568645094/mxtt3ws0mk2lss1zaqjl.jpg"
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

puts 'finished!'
