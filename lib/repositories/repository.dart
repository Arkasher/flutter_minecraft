import 'package:mc_launcher/models/model.dart';

abstract class Repository<T extends Model> {

  T get(var primaryKey);
  Future<T> save(T model);
  Future<T> update(var primaryKey, T model);
  Future<void> delete(var primaryKey);
}