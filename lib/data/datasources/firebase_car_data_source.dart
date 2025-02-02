class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({required this.model, required this.distance, required this.fuelCapacity,required this.pricePerHour});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model:map['model'],
      distance:map['distance'],
      fuelCapacity:map['fuelCapacity'],
      pricePerHour:map['pricePerHour'],

    );
  }

}



// class Car {
//  String model;
// double distance;
// double fuelCapacity;
//  double pricePerHour;
//
//   Car(this.model,this.distance,  this.fuelCapacity, this.pricePerHour);
// }

// 1- domain/entites
// 2- domain/repositories (interface/contract)
// 3- domain/usecases   getCarById  getCarByName

// 1- domain/models
// 2- domain/data sources (fetch api/firebase)
// 3- domain/repositories