import 'package:cars_repository/cars_repository.dart';

/// Local [Car]s repository.
class LocalCarsRepository implements CarsRepository {
  /// List of local [Car]s
  List<Car> carList = <Car>[];

  /// Add a local [Car]
  void addLocalCar(Car car) {
    carList.add(car);
  }

  @override
  Stream<List<Car>> cars() {
    return carList;
  }
}
