-- Create the database if it doesn't exist (PostgreSQL is case-insensitive for names)
CREATE DATABASE article;

-- Connect to the database
\c article;

-- Article table
DROP TABLE IF EXISTS article;
CREATE TABLE article (
  id SERIAL PRIMARY KEY, -- SERIAL is the PostgreSQL auto-increment
  title VARCHAR(45) COLLATE "en_US.UTF-8" NOT NULL,
  content TEXT COLLATE "en_US.UTF-8" NOT NULL, -- TEXT instead of LONGTEXT
  author_id INT DEFAULT 0,
  updated_at TIMESTAMP DEFAULT NULL, -- TIMESTAMP instead of DATETIME
  created_at TIMESTAMP DEFAULT NULL
);

-- Insert data into the article table
INSERT INTO article (id, title, content, author_id, updated_at, created_at) VALUES
(1, 'Makan Ayam', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>\n\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\n\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.</p>\n\n<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\n\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the</p>\n\n', 1, '2017-05-18 13:50:19', '2017-05-18 13:50:19'),(2,'Makan Ikan','<h1>Odio Mollis Turpis Dictumst</h1>\n\n<p><em>Ut</em> arcu tempor auctor pellentesque vitae lacinia potenti amet tellus sagittis molestie aliquam <strong>est</strong> mi facilisi amet, pretium <strong>torquent</strong> platea curabitur dolor pretium ultricies semper, phasellus commodo montes ut metus neque commodo platea a platea. Urna luctus cubilia faucibus class dolor nonummy orci dictumst amet ligula posuere hendrerit feugiat. Cursus dignissim ligula ultricies <em>leo</em> curae; nibh.</p>\n\n<p>Auctor sodales non euismod eros sodales rhoncus justo sit. Tristique primis <em>montes</em> condimentum <em>luctus</em> sagittis pretium Fringilla ligula sociosqu nibh.</p>\n\n<p>Mus Hymenaeos ultricies primis lacus pretium id. Ullamcorper dapibus magnis tellus maecenas eget purus magna maecenas sollicitudin sagittis convallis senectus maecenas <strong>sociis</strong> purus orci mollis ridiculus velit tristique nulla enim sodales cubilia eleifend.</p>\n\n<p><em>Risus</em> quam lacus sociosqu Malesuada. Mattis pretium etiam egestas. Interdum ultrices <em>luctus</em> luctus rutrum pellentesque amet, tincidunt.</p>\n\n<p>Accumsan at sociis dolor Fusce lacus lorem imperdiet tristique. Est sed. Sapien proin <em>in</em> vivamus sociosqu tempus. Risus. Feugiat. Et nam dapibus <strong>tristique</strong> donec id, mollis euismod. Lorem, nisi.</p>\n\n<p>Ut torquent curabitur blandit sociis nam sollicitudin tristique convallis aptent accumsan aliquam dictum imperdiet lacus imperdiet fermentum cum at urna neque sem curabitur facilisi hymenaeos dapibus. Diam vehicula. Urna hendrerit duis.</p>\n\n<p>Eget Convallis non senectus justo varius, sociis semper ullamcorper donec, molestie curae; metus ut sagittis. Mattis feugiat consectetuer inceptos ac.</p>\n\n<p>Natoque libero egestas vitae egestas aenean viverra nostra ornare. Per. <em>Aenean</em> cum elit ridiculus per.</p>\n\n<p>Massa hymenaeos Gravida parturient Cubilia laoreet, morbi duis interdum neque. Eu natoque elementum placerat sagittis Tincidunt facilisi sollicitudin tristique auctor donec arcu. Purus libero netus.</p>\n\n<p>Curae; erat eget fames sociosqu, egestas auctor est orci luctus. Nibh elit non aenean pulvinar elementum rutrum eleifend habitasse dictum dapibus velit urna cras. Massa elit ac, nascetur. <strong>Ut</strong> vestibulum montes. Lorem a.</p>\n\n<p>Ultricies varius. Dapibus nam sagittis porta augue per. Hac velit. Elementum penatibus. Condimentum velit. Amet integer litora tempor mus eros curabitur Libero.</p>\n\n<p>Dapibus senectus magna. Arcu, dignissim tempor nascetur lobortis conubia ornare netus vivamus. Nascetur ad habitasse elementum rutrum parturient sapien pretium penatibus. Posuere etiam massa nisi. Imperdiet et sem habitasse.</p>\n\n<p>Lorem lectus natoque fames molestie fermentum at leo. Cubilia, fringilla nibh libero tempus. <strong>Hac</strong> platea, volutpat Pretium ultrices dictum. Malesuada ut integer senectus eros phasellus congue nam sociosqu Suspendisse a, a commodo commodo scelerisque.</p>\n\n<p>Convallis sollicitudin non dui elit cubilia quis ullamcorper praesent tincidunt viverra mauris <em>integer</em> nostra gravida enim pellentesque faucibus sociosqu dapibus erat cursus.</p>\n\n<p>Interdum id cras mauris class Cubilia sagittis faucibus consectetuer Per ante lacus. Eget donec nec phasellus. Eu metus tempor suscipit eleifend. Fames at.</p>\n\n Mattis bibendum <em>faucibus</em> nullam. Porta.</p>\n\n<p>Pede neque mollis. Per netus interdum mus eleifend <em>massa</em> aliquet etiam feugiat eget penatibus dapibus cras penatibus ac. Dictum elementum fermentum fermentum. In netus dictumst.</p>\n\n<p>Lacus habitant lobortis. Potenti. Vulputate enim habitasse, tellus <em>parturient</em> litora a orci sociis tellus. Vel cursus nec dolor. Orci lectus tristique augue ad, aenean fringilla volutpat natoque ante. Pretium hymenaeos ridiculus penatibus nisi. Curae;.</p>\n\n<p>Mus. Aenean potenti sit nisi, dui. Consequat. Porta pellentesque lorem, dignissim nibh Diam in pretium venenatis. Quisque molestie.</p>\n\n<p>Vitae felis cum non torquent. Condimentum magna vitae erat diam. Sed duis pharetra dictum a facilisi euismod nullam, dis, risus tellus hac aliquam.</p>\n\n<p>Tellus. Nunc <strong>neque</strong> proin libero <em>praesent</em> nisl torquent integer torquent feugiat urna metus taciti montes enim. Torquent Laoreet, suscipit magna litora cras mattis suspendisse per.</p>\n\n<p>Diam et. Dui purus congue <strong>a</strong> senectus arcu adipiscing netus hendrerit ridiculus cubilia non. Viverra morbi augue luctus ipsum scelerisque habitasse eleifend egestas <em>tempor</em> diam sociosqu imperdiet penatibus <strong>vehicula</strong> placerat eu.</p>\n\n<p>Fusce leo ligula scelerisque malesuada purus adipiscing vehicula praesent, lorem fames massa adipiscing condimentum magna rhoncus purus mattis sem, fringilla natoque potenti pharetra eu nisi est.</p>\n\n<p>Metus mauris luctus sit fermentum cras facilisis. Dapibus augue lobortis sem fames sed quisque sollicitudin risus etiam. Lacus. Leo. Congue eros <em>nam</em> ultrices feugiat. Ante condimentum mus. <em>Curabitur</em> porttitor. Ante varius nullam ullamcorper <strong>gravida</strong> egestas.</p>\n\n<p>Iaculis hymenaeos Phasellus nulla at primis Dis commodo semper ornare turpis amet nulla. Morbi Consectetuer cum a facilisi metus quam interdum imperdiet netus ante urna.</p>',1,'2017-05-18 13:50:19','2017-05-18 13:50:19'),(3,'Makan Sayur','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id odio tortor. Pellentesque in efficitur velit. Aenean nec iaculis turpis. Ut eget lorem et velit lacinia mollis finibus vel felis. Sed ut elit leo. Curabitur eu ultrices ligula. Integer pulvinar nisl vitae lacinia porttitor. Maecenas mollis lacus quis turpis semper consequat.\n\nNullam sit amet augue non erat consectetur faucibus vitae eu nisi. Suspendisse non consectetur justo. Duis sed feugiat risus. Pellentesque euismod tellus pellentesque quam condimentum mollis. Phasellus est metus, tempus sit amet viverra tincidunt, lacinia at est. Aenean quis lacus nunc. Suspendisse accumsan nisl sit amet vestibulum molestie. Praesent quis justo congue, condimentum odio non, sollicitudin diam. Sed aliquam risus et urna pulvinar imperdiet. Praesent ac est velit. Sed sit amet volutpat enim, vehicula posuere diam.\n\nNunc sodales, arcu sed euismod sollicitudin, risus nisl fringilla nibh, nec venenatis dolor mi et lorem. Donec dapibus tempus porttitor. Suspendisse et tincidunt dolor. Suspendisse rhoncus faucibus tortor, in condimentum lacus gravida ac. Mauris eleifend blandit erat in interdum. Proin elementum nisi posuere quam scelerisque laoreet. Sed rutrum urna ante, vitae molestie diam lacinia a. In pretium mauris quam. Praesent vehicula odio dui, at sagittis orci bibendum quis.\n\nMauris a euismod ligula. Pellentesque sollicitudin vitae ante eget commodo. Etiam quis interdum lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a sapien eros. Nam varius quis lorem id ultrices. Etiam posuere tortor nec aliquam convallis. Praesent id tincidunt velit. Cras commodo ex a orci pellentesque bibendum. Duis at ex eu diam tincidunt placerat. Duis odio ante, rutrum ac laoreet eget, fringilla id metus. Vivamus non nisi vestibulum, lacinia elit in, consequat dui. Proin mattis felis metus, ut dignissim tellus finibus eget. Curabitur auctor leo mattis est blandit, eu consectetur sem maximus.\n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras imperdiet magna lacus, vel luctus quam pulvinar a. In massa turpis, vestibulum vel tortor laoreet, malesuada porttitor nisi. Sed faucibus vulputate nunc, ac semper dui auctor in. Nunc convallis efficitur malesuada. Nulla facilisi. In et tristique est, vel aliquam massa. Donec iaculis, urna rhoncus pharetra tincidunt, arcu risus consequat lacus, sed dapibus nisi elit luctus tellus. You need a little dummy text for your mockup? How quaint.\n\nI bet you’re still using Bootstrap too…',1,'2017-05-18 13:50:19','2017-05-18 13:50:19');

-- Article-category table
DROP TABLE IF EXISTS article_category;
CREATE TABLE article_category (
  id SERIAL PRIMARY KEY,
  article_id INT NOT NULL,
  category_id INT NOT NULL,
  UNIQUE (article_id, category_id) -- Composite unique constraint
);

-- Insert data into the article_category table (omitted for brevity)
INSERT INTO article_category (article_id, category_id)
VALUES 
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 2),
  (2, 3),
  (3, 3),
  (4, 3),
  (5, 2),
  (6, 1),
  (6, 2); 


-- Author table
DROP TABLE IF EXISTS author;
CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  name VARCHAR(200) COLLATE "en_US.UTF-8" DEFAULT '', 
  created_at TIMESTAMP DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL
);

-- Insert data into the author table (omitted for brevity)
INSERT INTO author (name, created_at, updated_at) VALUES ('Iman Tumorang', '2017-05-18 13:50:19', '2017-05-18 13:50:19');

-- Category table
DROP TABLE IF EXISTS category;
CREATE TABLE category (
  id SERIAL PRIMARY KEY,
  name VARCHAR(45) COLLATE "en_US.UTF-8" NOT NULL,
  tag VARCHAR(45) COLLATE "en_US.UTF-8" NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL
);

-- Insert data into the category table (omitted for brevity)
INSERT INTO category (name, tag, created_at, updated_at) VALUES
  ('Makanan', 'food', '2017-05-18 13:50:19', '2017-05-18 13:50:19'),
  ('Kehidupan', 'life', '2017-05-18 13:50:19', '2017-05-18 13:50:19'),
  ('Kasih Sayang', 'love', '2017-05-18 13:50:19', '2017-05-18 13:50:19');

