

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vroom/presentation/pages/availablility.dart';

import '../../data/car.dart';
import '../widgets/car_card.dart';
import '../widgets/more_card.dart';
import 'MapsDetailsPage.dart';

class CarDetailsPage extends StatefulWidget {
  final Car car;
  const CarDetailsPage({super.key, required this.car});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this);

    _animation = Tween<double>(begin: 1.0,end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {

        });
      });

    _controller!.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Icon(Icons.info_outline),
      //       Text("Information",style: TextStyle(fontWeight: FontWeight.bold),)
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, color: Colors.black),
            SizedBox(width: 8),
            Text(
              "Information",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black, size: 30), // ✅ Stylish icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white, // ✅ Matches theme
        elevation: 3, // ✅ Adds depth
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CarCard(car: Car(model: widget.car.model, distance: widget.car.distance, fuelCapacity: widget.car.fuelCapacity, pricePerHour: widget.car.pricePerHour),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xfff3f3f3),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 5
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(radius: 40,backgroundImage: AssetImage("assets/profile2.jpg"),),
                          SizedBox(height: 10,),
                          Text("Jane Cooper",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("\$4,253",style: TextStyle(color: Colors.grey),),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => MapDetailsPage(car: widget.car)));
                      },
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 5
                              )
                            ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Transform.scale(
                            scale: _animation!.value,
                            alignment: Alignment.center,
                            child: Image.asset("assets/gps.jpeg",fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(car: Car(model: widget.car.model+"-1", distance: widget.car.distance+100, fuelCapacity: widget.car.fuelCapacity+100, pricePerHour: widget.car.pricePerHour+10),
                  ),
                  SizedBox(height: 5,),
                  MoreCard(car: Car(model: widget.car.model+"-2", distance: widget.car.distance+200, fuelCapacity: widget.car.fuelCapacity+200, pricePerHour: widget.car.pricePerHour+20),
                  ),
                  SizedBox(height: 5,),
                  MoreCard(car: Car(model: widget.car.model+"-3", distance: widget.car.distance+300, fuelCapacity: widget.car.fuelCapacity+300, pricePerHour: widget.car.pricePerHour+30),
                  ),
                ],
              ),
            ),

           InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> Availablility()));
           },
             child: Container(
               height: 50,
               width: 250,
               child: Center(child: Text("Check Availability",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
               color: Colors.black87,
               ),
             ),
           )


          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:rentcar/data.models/car.dart';
// import 'package:rentcar/presentation/pages/MapsDetailsPage.dart';
// import 'package:rentcar/presentation/widgets/car_card.dart';
// import 'package:rentcar/presentation/widgets/more_card.dart';
//



//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../data/car.dart';
// import '../widgets/car_card.dart';
// import '../widgets/more_card.dart';
// import 'MapsDetailsPage.dart';
//
// class CarDetailsPage extends StatelessWidget {
//   final Car car;
//   const CarDetailsPage({super.key, required this.car});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.info_outline),
//             Text("Information",)
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             CarCard(car: Car(model: car.model, distance: car.distance, fuelCapacity: car.fuelCapacity, pricePerHour: car.pricePerHour),
//             ),
//             SizedBox(height: 20,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                           color: Color(0xfff3f3f3),
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.black12,
//                                 blurRadius: 10,
//                                 spreadRadius: 5
//                             )
//                           ]
//                       ),
//                       child: Column(
//                         children: [
//                           CircleAvatar(radius: 40,backgroundImage: AssetImage("assets/car1_1.png"),),
//                           SizedBox(height: 10,),
//                           Text("Jane Cooper",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text("\$4,253",style: TextStyle(color: Colors.grey),),
//
//
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 20,),
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: (){
//                         Navigator.push(
//                             context, MaterialPageRoute(builder: (context) => MapDetailsPage(car: car)));
//                       },
//                       child: Container(
//                         height: 170,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(image: AssetImage("assets/gps.jpeg"),
//                                 fit: BoxFit.cover),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.black12,
//                                   blurRadius: 10,
//                                   spreadRadius: 5
//                               )
//                             ]
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   MoreCard(car: Car(model: car.model+"-1", distance: car.distance+100, fuelCapacity: car.fuelCapacity+100, pricePerHour: car.pricePerHour+10),
//                   ),
//                   SizedBox(height: 5,),
//                   MoreCard(car: Car(model: car.model+"-2", distance: car.distance+200, fuelCapacity: car.fuelCapacity+200, pricePerHour: car.pricePerHour+20),
//                   ),
//                   SizedBox(height: 5,),
//                   MoreCard(car: Car(model: car.model+"-3", distance: car.distance+300, fuelCapacity: car.fuelCapacity+300, pricePerHour: car.pricePerHour+30),
//                   ),
//                 ],
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }
