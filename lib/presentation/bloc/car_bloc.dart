
import 'package:bloc/bloc.dart';

import '../../domain/usecases/get_cars.dart';
import 'car_event.dart';
import 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(CarsLoading()) {
    on<LoadCars>((event, emit) async {
      emit(CarsLoading()); // Emit the initial loading state.
      try {
        // Assuming `getCars` is a callable class or replace `.call()` with the correct method.
        final cars = await getCars();
        emit(CarsLoaded(cars)); // Emit the loaded state with the list of cars.
      } catch (e) {
        emit(CarsError(e.toString())); // Emit the error state with a message.
      }
    });
  }
}
