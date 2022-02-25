import 'dart:async';
import 'package:cars_repository/cars_repository.dart';

/// Car repository.
abstract class CarsRepository {
  /// add a new [Car] to the repository
  Future<void> addCar(Car car);

  /// delete [Car] from repository
  Future<void> deleteCar(Car car);

  /// get stream of [Car]s from repository
  Stream<List<Car>> carStream();

  /// get stream of [Car]s from repository
  Future<List<Car>> cars();

  /// update [Car] in repository
  Future<void> updateCar(Car car);
}
