import '../../../model/book.dart';

const createFavorite = '''
  CREATE TABLE favorite(
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    author VARCHAR(200) NOT NULL,
    imageUrl VARCHAR(250) NOT NULL,
  )
''';

const insertBook = [
  '''INSERT INTO favorite(name, author, imageUrl)
     VALUES ("Corte de asas e ruína (Vol. 3 Corte de espinhos e rosas – Edição especial)", "Sarah J. Maas", "https://m.media-amazon.com/images/I/71yuikaNMhL.jpg")''',
  '''INSERT INTO favorite(name, author, imageUrl)
     VALUES ("Neon Genesis Evangelion Collector's Edition Vol. 02", "", "https://m.media-amazon.com/images/I/51xJXGttg8L._SX355_BO1,204,203,200_.jpg")''',
  '''INSERT INTO favorite(name, author, imageUrl)
     VALUES ("O morro dos ventos uivantes", "", "O morro dos ventos uivantes")''',
  '''INSERT INTO favorite(name, author, imageUrl)
     VALUES ("O morro dos ventos uivantes", "", "O morro dos ventos uivantes")''',
  '''INSERT INTO favorite(name, author, imageUrl)
     VALUES ("O morro dos ventos uivantes", "", "O morro dos ventos uivantes")''',
];