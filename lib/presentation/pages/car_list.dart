
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/car.dart';
import '../widgets/car_card.dart';
import 'User/UserCarInfo.dart';

class CarListScreen extends StatelessWidget {
  // CarListScreen({Key? key}) : super(key: key);
  final List<Car> cars =[
    Car(model: 'Lamborghini Aventador', distance: 870, fuelCapacity: 90, pricePerHour: 999),
    Car(model: 'Lamborghini Aventador', distance: 870, fuelCapacity: 90, pricePerHour: 999),
    Car(model: 'Lamborghini Aventador', distance: 870, fuelCapacity: 90, pricePerHour: 999),
    Car(model: 'Lamborghini Aventador', distance: 870, fuelCapacity: 90, pricePerHour: 999),


  ];

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("VROOM!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Usercarinfo()));
          },
            child: CircleAvatar(radius: 40,backgroundImage: AssetImage("assets/profile.png"),)),
      // SizedBox(height: 10,),
      // Text("Jane Cooper",style: TextStyle(fontWeight: FontWeight.bold),
      // ),

          // Icon(Icons.account_circle_outlined)
        ],
      ),

      body:  ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index){
            return CarCard(car: cars[index]);

          }
      ),

    );

    // BlocBuilder<CarBloc, CarState>(
    //     builder: (context, state){
    //     if(state is CarsLoading){
    //       return Center(child: CircularProgressIndicator(),);
    // }
    //     else if(state is CarsLoaded){
    //       ListView.builder(
    //           itemCount: state.cars.length,
    //           itemBuilder: (context, index){
    //             return CarCard(car: state.cars[index]);
    //
    //           }
    //     );
    // }
    //     else if(state is CarsError){
    //       return Center(child: Text('error : ${state.message}'),);
    // }
    //     return Container();
    // }),
    // );

    // ListView.builder(
    //     itemCount: cars.length,
    //     itemBuilder: (context, index){
    //       return CarCard(car: cars[index]);
    //
    //     }
    //     ),

    // );
  }
}
