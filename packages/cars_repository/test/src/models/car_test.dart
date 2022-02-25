// ignore_for_file: prefer_const_constructors
import 'package:cars_repository/cars_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Car', () {
    const id = 'mock-id';
    const make = 'mock-make';

    test('toJson transfotransformationrm', () {
      expect(
        Car(id: id, make: make).toJson(),
        equals({'id': id, 'make': make}),
      );
    });

    test('fromJson transformation', () {
      expect(
        Car.fromJson({'id': id, 'make': make}).id,
        equals(id),
      );
      expect(
        Car.fromJson({'id': id, 'make': make}).make,
        equals(make),
      );
    });

    test('fromJson transformation', () {
      expect(
        Car(id: id, make: make).toString(),
        equals('Car { id: $id, task: $make}'),
      );
    });
  });
}
