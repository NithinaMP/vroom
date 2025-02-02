import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vroom/presentation/pages/User/AddAvailabilityStatus.dart';

import '../../../provider/mainProvider.dart';

class Usercardetails extends StatelessWidget {
  const Usercardetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My Wheels",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
      // ),
      appBar: AppBar(
        title: Text(
          "My Cars",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Colors.white,
        elevation: 2, // ✅ Adds a subtle shadow
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40, // ✅ Ensures it's a perfect circle
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black12, // ✅ Light grey background
                shape: BoxShape.circle, // ✅ Circular shape
              ),
              child: Center(
                child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 22),
              ),
            ),
          ),
        ),
      ),



      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Addavailabilitystatus()));
      },
      child: Icon(Icons.add),),
    
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
              height: 170,
              width: width ,
              child: Image.asset("assets/car1_1.png"),
              
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
               
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Fuel capacity : 78L",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),),
                SizedBox(width: 20,),
                Text("FERRARI 488",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(width: 20,),Text("78kmpl/8.77kmpl",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),)
              ],
            ),
            SizedBox(height: 25,),
            Text("Availability Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            SizedBox(height: 10,),

            // Consumer<MainProvider>(
            //     builder: (context, value, child) {
            //       return ListView.builder(
            //           itemCount: value.carstatusList.length,
            //           shrinkWrap: true,
            //           physics: ScrollPhysics(),
            //           itemBuilder: (BuildContext context, int index){
            //             return Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Container(
            //
            //                 height: 50,
            //                 width: width/3,
            //                 color: Colors.black54,
            //                 // decoration: BoxDecoration(
            //                 //   borderRadius: BorderRadius.circular(15),
            //                 // ),
            //                 child: ListTile(
            //                   subtitle:Center(
            //                     child: Row(
            //                       children: [
            //                         SizedBox(width: width/8,),
            //                         Text("Pickup Date:",style: TextStyle(fontWeight: FontWeight.bold),),
            //                         Text(value.carstatusList[index].Pickup),
            //                         SizedBox(width: width/3),
            //                         Text("Return Date",style: TextStyle(fontWeight: FontWeight.bold),),
            //                         Text(value.carstatusList[index].Return)
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             );
            //           });
            //     }
            // )

            Consumer<MainProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.carstatusList.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.black54, // ✅ New background color
                          borderRadius: BorderRadius.circular(12), // ✅ Rounded corners
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 6,
                              offset: Offset(2, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pickup Date: ",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text(
                                value.carstatusList[index].Pickup,
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Return Date: ",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text(
                                value.carstatusList[index].Return,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            )




          ],
        ),
      ),

    );
  }
}
