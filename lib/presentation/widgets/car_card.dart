//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../data/car.dart';
// import '../pages/MapsDetailsPage.dart';
// import '../pages/car_details_page.dart';
//
// class CarCard extends StatelessWidget {
//   final Car car;
//   const CarCard({super.key, required this.car});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => CarDetailsPage(car: car))
//         );
//       },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//             color: Color(0xfff3f3f3),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow:[
//               BoxShadow(
//                   color: Colors.black12,blurRadius: 10,spreadRadius: 5
//               )]
//         ),
//         child: Column(
//           children: [
//             Image.asset("assets/CAR_1.png",height: 120,),
//             Text(car.model, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             SizedBox(height: 10,),
//             Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Row(children: [
//                       Icon(Icons.gps_fixed),
//                       // Image.asset("assets/CAR 1.png"),
//                       Text("${car.distance.toStringAsFixed(0)}km")
//                     ],),
//                     SizedBox(width: 10,),
//                     Row(children: [
//                       Icon(Icons.local_gas_station),
//
//                       // Image.asset("assets/CAR 1.png"),
//                       Text("${car.fuelCapacity.toStringAsFixed(0)}L")
//                     ],)
//                   ],
//                 ),
//                 Text("\$${car.pricePerHour.toStringAsFixed(2)}/h",
//                   style: TextStyle(fontSize: 16),),
//               ],)
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import '../../data/car.dart';
import '../pages/car_details_page.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CarDetailsPage(car: car)),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xfff3f3f3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset("assets/CAR_1.png", height: 120, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Text(
              car.model,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.gps_fixed, size: 16),
                    const SizedBox(width: 5),
                    Text("${car.distance.toStringAsFixed(0)} km"),
                    const SizedBox(width: 10),
                    const Icon(Icons.local_gas_station, size: 16),
                    const SizedBox(width: 5),
                    Text("${car.fuelCapacity.toStringAsFixed(0)} L"),
                  ],
                ),
                Text(
                  "\$${car.pricePerHour.toStringAsFixed(2)}/h",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
