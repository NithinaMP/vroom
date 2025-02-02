//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get_it/get_it.dart';
// import 'package:vroom/presentation/bloc/car_bloc.dart';
//
// import 'data/models/repositories/car_repository_impl.dart';
// import 'domain/repositories/car_repository.dart';
// import 'domain/usecases/get_cars.dart';
//
// GetIt getIt = GetIt.instance;
//
// void initInjection(){
//   try{
//     getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
//     getIt.registerLazySingleton(
//             () => FirebaseCarDataSource(firestore: getIt<FirebaseFirestore>()));
//
//     getIt.registerLazySingleton<CarRepository>(
//             () => CarRepositoryImpl( getIt<FirebaseCarDataSource>()));
//
//     getIt.registerLazySingleton<GetCars>(
//             () => GetCars(getIt<CarRepository>()));
//
//     getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));
//
//
//
//   }catch(e){
//     throw e;
//   }
// }