
import '../../data/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();

}