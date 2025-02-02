import 'package:flutter/material.dart';
import 'package:vroom/presentation/pages/User/UserCardetails.dart';

class Usercarinfo extends StatelessWidget {
  const Usercarinfo({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.black,
      // ),
      appBar: AppBar(
        title: Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Colors.white,
        // foregroundColor: Colors.black,
        elevation: 2, // ✅ Adds a subtle shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black, size: 30), // ✅ Modern icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
           Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SizedBox(height: height/3.5,),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 60,
                child: Icon(Icons.manage_accounts_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("My Username",
                    style:TextStyle(color: Colors.black,fontSize: 25),),
                  Text("My Location",
                    style:TextStyle(color: Colors.black,fontWeight: FontWeight.w100,fontSize: 15),)
                ],
              ),
            ),

          ],
        ),

           Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 95,
        width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          color: Colors.black
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: Icon(Icons.car_rental_rounded,size: 32,color: Colors.white,),
              title: Text("My Wheels",style: TextStyle(fontFamily: "benne",fontSize: 18,color: Colors.white),),
              subtitle: Text("Add car details,location,price and more",style: TextStyle(fontFamily: "baloo",fontSize: 13,color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.white,),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Usercardetails()));

              },
            ),

          ],
        ),
      ),
    ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 95,
                width: width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Colors.black
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      leading: Icon(Icons.sign_language_outlined,size: 32,color: Colors.white,),
                      title: Text("Sign Out",style: TextStyle(fontFamily: "benne",fontSize: 18,color: Colors.white),),
                      // subtitle: Text("Add car details,location,price and more",style: TextStyle(fontFamily: "baloo",fontSize: 13,color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.white,),
                      onTap: () {

                      },
                    ),

                  ],
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
