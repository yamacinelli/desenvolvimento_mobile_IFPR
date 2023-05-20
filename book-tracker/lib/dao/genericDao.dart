abstract class GenericDao<T> {

  T save(T model);

  T update(T model);

  delete(T model);

  Future<List<T>> findAll();
}