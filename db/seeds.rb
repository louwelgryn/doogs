# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "destroy all UserSkill"
UserSkill.destroy_all
puts "destroy all Commitments"
Commitment.destroy_all
puts "destroy all Tasks"
Task.destroy_all
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

puts 'creating Sheldon Cooper'

# User 2
sheldon = User.new
sheldon.name = 'Sheldon Cooper'
sheldon.description = "J'ai hacké facebook à l'age de 13 ans."
sheldon.level = 'Piou-piou'
sheldon.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566901088/bzn2lrpovipwoqb8vaqh_jxzeq5.jpg"
sheldon.email = 'sheldoncooper@gmail.com'
sheldon.password = 'qwerty'
sheldon.save!

# User 2 - Skills

sheldon_skill1 = UserSkill.new
sheldon_skill1.skill = data_scientist
sheldon_skill1.user = sheldon
sheldon_skill1.save

sheldon_skill2 = UserSkill.new
sheldon_skill2.skill = data_engineer
sheldon_skill2.user = sheldon
sheldon_skill2.save

puts 'creating Mark Zuckerberg'

# User 3
mark = User.new
mark.name ="Mark Zuckerberg"
mark.description = "J'ai pas mal de temps libre."
mark.level = "Piou-piou"
mark.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566901128/gettyimages-944400620_ygsytz.jpg"
mark.email = "markzuckerberg@gmail.com"
mark.password = "qwerty"
mark.save!

# User 3- Skills

mark_skill1 = UserSkill.new
mark_skill1.skill = full_stack_developer
mark_skill1.user = mark
mark_skill1.save

mark_skill2 = UserSkill.new
mark_skill2.skill = web_designer
mark_skill2.user = mark
mark_skill2.save

mark_skill3 = UserSkill.new
mark_skill3.skill = developer_front
mark_skill3.user = mark
mark_skill3.save

mark_skill4 = UserSkill.new
mark_skill4.skill = developer_back
mark_skill4.user = mark
mark_skill4.save

puts 'creating Elizabeth Windsor'

# User 4
elizabeth = User.new
elizabeth.name ="Elizabeth Windsor"
elizabeth.description = "Je suis la reine du PM et de l'Angleterre, dans cet ordre."
elizabeth.level = "Piou-piou"
elizabeth.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567067009/a8rrhnuu21qfn1d6norz.jpg"
elizabeth.email = "elizabethwindsor@gmail.com"
elizabeth.password = "qwerty"
elizabeth.save!

# User 4- Skills

elizabeth_skill1 = UserSkill.new
elizabeth_skill1.skill = product_manager
elizabeth_skill1.user = elizabeth
elizabeth_skill1.save

puts 'creating Aya Nakamura'

# User 5
aya = User.new
aya.name ="Aya Nakamura"
aya.description = "Tu parles sur moi y'a R"
aya.level = "Piou-piou"
aya.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566998084/ayanakamura_shwg9f.jpg"
aya.email = "ayanakamura@gmail.com"
aya.password = "qwerty"
aya.save!

# User 5- Skills

aya_skill1 = UserSkill.new
aya_skill1.skill = product_manager
aya_skill1.user = aya
aya_skill1.save

puts 'creating Rihanna'

# User 6
rihanna = User.new
rihanna.name ="Rihanna"
rihanna.description = "A la recherche d'une activité pour occuper mes dimanches après-midi"
rihanna.level = "Piou-piou"
rihanna.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567007061/v1zvqxdncsoncowzbdak.jpg"
rihanna.email = "rihanna@gmail.com"
rihanna.password = "qwerty"
rihanna.save!

# User 6- Skills

rihanna_skill1 = UserSkill.new
rihanna_skill1.skill = data_analyst
rihanna_skill1.user = rihanna
rihanna_skill1.save

puts 'creating Ignatius Reilly'

# User 7
ignatius = User.new
ignatius.name ="Ignatius Reilly"
ignatius.description = "J'aime le développement web et le cinéma."
ignatius.level = "Piou-piou"
ignatius.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567067012/xqtpiqkofkiuzzdc54ub.jpg"
ignatius.email = "ignatiusreilly@gmail.com"
ignatius.password = "qwerty"
ignatius.save!

# User 7- Skills

ignatius_skill1 = UserSkill.new
ignatius_skill1.skill = web_designer
ignatius_skill1.user = ignatius
ignatius_skill1.save

ignatius_skill2 = UserSkill.new
ignatius_skill2.skill = developer_front
ignatius_skill2.user = ignatius
ignatius_skill2.save

# Charities ----------------------------------------------------------------------

puts 'creating 6 charities'

puts "Creating charity SPA"

spa = Charity.new
spa.name = "Société Protectrice des Animaux"
spa.description = "L'association lutte au quotidien pour la protection animale. Suivez l'actualité dans notre combat pour le bien être des animaux. Recherchez votre compagnon idéal et aidez nous en réalisant un don ou en devenant bénévole."
spa.referent_name = "Marcel Bichon"
spa.referent_position = "Trésorier"
spa.referent_image = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902315/spa_referent_image_dbdclk.jpg"
spa.logo = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902315/spa_logo_bovwxt.png"
spa.save!

puts "Creating charity AHP"

ahp = Charity.new
ahp.name = "Amicale des Hygiénistes Psychorigides"
ahp.description = "L'amicale promeut une société libérée de tous germes, fleurant bon l'eau de javel ou les arômes articiels de pin des Landes. Rejoignez-nous dans ce combat pour un monde plus pur mais n'oubliez pas de vous laver les mains avant."
ahp.referent_name = "Hilda Chlorobenzène"
ahp.referent_position = "Fondatrice"
ahp.referent_image = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/ahp_referent_image_sdtlng.jpg"
ahp.logo = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/ahp_logo_uztqkm.png"
ahp.save!

puts "Creating charity Article 1"

article1 = Charity.new
article1.name = "Article 1"
article1.description = "Article 1 développe et encadre le parrainage de jeunes étudiants boursiers à haut potentiel par des professionnels."
article1.referent_name = "Boris Walbaum"
article1.referent_position = "Président"
article1.referent_image = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/article1_referent_image_w5xyu4.jpg"
article1.logo = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/article1_logo_tfgzpm.png"
article1.save!

puts "Creating charity Open Food Facts"

open_food_facts = Charity.new
open_food_facts.name = "Open Food Facts"
open_food_facts.description = "Open Food Facts est une base de données sur les produits alimentaires faite par tout le monde, pour tout le monde. Elle vous permet de faire des choix plus informés, et comme les données sont ouvertes (open data), tout le monde peut les utiliser pour tout usage."
open_food_facts.referent_name = "Lisa Kasskroute"
open_food_facts.referent_position = "Président"
open_food_facts.referent_image = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902314/open_food_facts_referent_image_psnrz0.jpg"
open_food_facts.logo = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566902315/open_food_facts_logo_ujhbkc.png"
open_food_facts.save!

puts "Creating charity Nature en Occitanie"

nature_en_occitanie = Charity.new
nature_en_occitanie.name = "Nature en Occitanie"
nature_en_occitanie.description = "Nature En Occitanie agit depuis 1969 pour la protection de la faune et de la flore sauvages ainsi que pour la préservation des milieux naturels de la région."
nature_en_occitanie.referent_name = "Johnny Appleseed"
nature_en_occitanie.referent_position = "Coordinateur du pôle Biodiversité"
nature_en_occitanie.referent_image = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567068755/neo_referent_wst6bb.jpg"
nature_en_occitanie.logo = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567068755/neo_logo_vejre9.jpg"
nature_en_occitanie.save!

puts "Creating charity Bretagne Vivante"

bretagne_vivante = Charity.new
bretagne_vivante.name = "Bretagne Vivante"
bretagne_vivante.description = "Créée en 1958, association Loi 1901 reconnue d’utilité publique en 1968, agréée pour la protection de l’environnement, Bretagne Vivante est membre fondateur de grandes structures nationales et régionales telles que France Nature Environnement, Réserves Naturelles de France et le Réseau d’Éducation à l’Environnement en Bretagne (REEB)."
bretagne_vivante.referent_name = "Maïwenn Kermadec"
bretagne_vivante.referent_position = "Bryologue"
bretagne_vivante.referent_image = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567069302/bretagne_referent_bn0sgm.jpg"
bretagne_vivante.logo = "https://res.cloudinary.com/duro4nxuo/image/upload/v1567069302/bretagne_logo_p9k0dt.jpg"
bretagne_vivante.save!

# Projects ----------------------------------------------------------------------

puts 'creating 6 projects'

puts "creating project Open Food Facts"

project_open_food_facts = Project.new
project_open_food_facts.name = "Et si scanner vos produits vous permettait de découvrir leur impact sur la planète ?"
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

# Commitments ----------------------------------------------------------------------

puts 'Commiting people to projects'

puts 'Commiting Aya Nakamura, Sheldon Cooper and Mark Zuckerberg to open_food_facts (finished)'

commitment_user1_project1 = Commitment.new
commitment_user1_project1.skill = product_manager
commitment_user1_project1.user = aya
commitment_user1_project1.project = project_open_food_facts
commitment_user1_project1.save

commitment_user2_project1 = Commitment.new
commitment_user2_project1.skill = developer_front
commitment_user2_project1.user = mark
commitment_user2_project1.project = project_open_food_facts
commitment_user2_project1.save

commitment_user3_project1 = Commitment.new
commitment_user3_project1.skill = data_scientist
commitment_user3_project1.user = sheldon
commitment_user3_project1.project = project_open_food_facts
commitment_user3_project1.save

puts 'Commiting Elizabeth Windsor and Ignatius Reilly to spa (ongoing)'

commitment_user1_project2 = Commitment.new
commitment_user1_project2.skill = product_manager
commitment_user1_project2.user = elizabeth
commitment_user1_project2.project = project_spa
commitment_user1_project2.save!

commitment_user2_project2 = Commitment.new
commitment_user2_project2.skill = developer_front
commitment_user2_project2.user = ignatius
commitment_user2_project2.project = project_spa
commitment_user2_project2.save!

puts 'Commiting Aurelie Delpeche and Mark to neo (ongoing)'

commitment_user1_project5 = Commitment.new
commitment_user1_project5.skill = product_manager
commitment_user1_project5.user = aurelie
commitment_user1_project5.project = project_neo
commitment_user1_project5.save!

commitment_user1_project5 = Commitment.new
commitment_user1_project5.skill = full_stack_developer
commitment_user1_project5.user = mark
commitment_user1_project5.project = project_neo
commitment_user1_project5.save!

# Empty Commitments ----------------------------------------------------------------------

puts 'Creating empty commitments'

puts 'creating empty commitments for ahp'

commitment_user1_project3 = Commitment.new
commitment_user1_project3.skill = product_manager
commitment_user1_project3.project = project_ahp
commitment_user1_project3.save!

commitment_user2_project3 = Commitment.new
commitment_user2_project3.skill = developer_front
commitment_user2_project3.project = project_ahp
commitment_user2_project3.save!

commitment_user3_project3 = Commitment.new
commitment_user3_project3.skill = data_analyst
commitment_user3_project3.project = project_ahp
commitment_user3_project3.save!

commitment_user4_project3 = Commitment.new
commitment_user4_project3.skill = data_analyst
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
commitment_user4_project5.skill = data_analyst
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

task1_project1 = Task.new
task1_project1.name = "Test du bot"
task1_project1.project = project_spa
task1_project1.user = ignatius
task1_project1.description = "La v1 du bot est codée. Il faut mettre en oeuvre une batterie de tests pour s'assurer que tout roule."
task1_project1.status = "A faire"
task1_project1.priority_level = "Urgente"
task1_project1.end_date = Date.new(2019,9,23)

task2_project1 = Task.new
task2_project1.name = "API Twitter"
task2_project1.project = project_spa
task2_project1.description = "Il faut potasser l'API Twitter et identifier les params dont on aura besoin pour le bot."
task2_project1.status = "A faire"
task2_project1.priority_level = "Normale"
task2_project1.end_date = Date.new(2019,10,12)

task1_project2 = Task.new
task1_project2.name = "Photos"
task1_project2.project = project_neo
task1_project2.description = "Scraper les sites de photos libres de droits pour récupérer des tofs correctes de petites bêtes pour nos cards."
task1_project2.status = "A faire"
task1_project2.priority_level = "Prioritaire"
task1_project2.end_date = Date.new(2019,9,28)

task2_project2 = Task.new
task1_project2.name = "Mapbox et JS"
task2_project2.project = project_neo
task1_project2.user = mark
task1_project2.description = "On a besoin de décrypter l'API de Mapbox pour arriver à afficher des cards animées avec du bon vieux JS des familles."
task2_project2.status = "Terminée"
task2_project2.priority_level = "Normale"
task2_project2.end_date = Date.new(2019,6,8)

# Super User ----------------------------------------------------------------------

puts "creating Super User Marie"

marie = User.new
marie.name ="Marie Zuckerberg"
marie.description = "J'ai pas mal de temps libre."
marie.level = "Piou-piou"
marie.remote_image_url = "https://res.cloudinary.com/duro4nxuo/image/upload/v1566901128/gettyimages-944400620_ygsytz.jpg"
marie.email = "mariezuckerberg@gmail.com"
marie.password = "qwerty"
marie.save!

marie_skill1 = UserSkill.new
marie_skill1.skill = full_stack_developer
marie_skill1.user = marie
marie_skill1.save

marie_skill2 = UserSkill.new
marie_skill2.skill = web_designer
marie_skill2.user = marie
marie_skill2.save

marie_skill3 = UserSkill.new
marie_skill3.skill = developer_front
marie_skill3.user = marie
marie_skill3.save

marie_skill4 = UserSkill.new
marie_skill4.skill = developer_back
marie_skill4.user = marie
marie_skill4.save

marie_skill5 = UserSkill.new
marie_skill5.skill = data_analyst
marie_skill5.user = marie
marie_skill5.save

marie_skill6 = UserSkill.new
marie_skill6.skill = data_scientist
marie_skill6.user = marie
marie_skill6.save

marie_skill7 = UserSkill.new
marie_skill7.skill = product_manager
marie_skill7.user = marie
marie_skill7.save

puts 'finished!'

