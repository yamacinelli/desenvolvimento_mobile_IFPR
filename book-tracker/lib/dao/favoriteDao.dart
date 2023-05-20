import 'package:aula/dao/database/book/bookTable.dart';
import 'package:aula/dao/genericDao.dart';
import 'package:aula/model/book.dart';

class FavoriteDao implements GenericDao<Book> {

  @override
  delete(Book model) {
    favorites.remove(model);
  }

  @override
  Future<List<Book>> findAll() {
    return Future.value(favorites);
  }

  @override
  Book save(Book model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Book update(Book model) {
    // TODO: implement update
    throw UnimplementedError();
  }

}