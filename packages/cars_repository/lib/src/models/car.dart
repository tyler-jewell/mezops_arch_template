/// [Car] data model
class Car {
  /// [Car] model
  const Car({required this.id, required this.make});

  /// Creates a [Car] from a [Map]
  Car.fromJson(Map<String, Object?> json)
      : this(
          id: json['id']! as String,
          make: json['make']! as String,
        );

  /// [Car] id
  final String id;

  /// [Car] make
  final String make;

  @override
  String toString() {
    return 'Car { id: $id, task: $make}';
  }

  /// Creates a [Map] from a [Car]
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'make': make,
    };
  }
}
