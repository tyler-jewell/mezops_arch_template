// ignore_for_file: prefer_const_constructors
import 'package:cars_repository/cars_repository.dart';
import 'package:cars_repository/src/local_cars_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Local Car Repository',
    () {
      const id = 'mock-id';
      const make = 'mock-make';

      test('add car', () {
        localCarRepository = LocalCarsRepository();
        expect(
          Car(id: id, make: make).toJson(),
          equals({'id': id, 'make': make}),
        );
      });
    },
  );
}
