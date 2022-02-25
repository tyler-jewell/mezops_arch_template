import 'dart:async';

import 'package:cars_repository/cars_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Firebase [Car]s repository.
class FirebaseCarsRepository implements CarsRepository {
  /// The Firebase Firestore collection of cars.
  final carsRef =
      FirebaseFirestore.instance.collection('cars').withConverter<Car>(
            fromFirestore: (snapshot, _) => Car.fromJson(snapshot.data()!),
            toFirestore: (movie, _) => movie.toJson(),
          );

  @override
  Future<void> addCar(Car car) {
    return carsRef.add(car);
  }

  @override
  Future<void> deleteCar(Car car) async {
    return carsRef.doc(car.id).delete();
  }

  @override
  Stream<List<Car>> carStream() {
    return carsRef.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  @override
  Future<void> updateCar(Car car) {
    return carsRef.doc(car.id).update(car.toJson());
  }
}
