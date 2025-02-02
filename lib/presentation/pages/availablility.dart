import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/mainProvider.dart';

class Availablility extends StatelessWidget {
  const Availablility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Rental Dates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
      // ),

      appBar: AppBar(
        title: Text(
          "Rental Dates",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24), // ✅ Stylish icon
          onPressed: () {
            Navigator.pop(context); // ✅ Navigates back
          },
        ),
        backgroundColor: Colors.white, // ✅ Matches container color
        elevation: 0, // ✅ Flat appbar for modern look
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // ✅ Aligns text to the left
                children: [
                  Text(
                    "See which Dates that you can feel your",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4), // ✅ Adds a small spacing
                  Text(
                    "Favourite CARS!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade800, // ✅ New background color
                      borderRadius: BorderRadius.circular(12), // ✅ Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
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
                          Text("20/2/2025",
                            style: TextStyle(color: Colors.white70),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Return Date: ",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            "22/2/2025",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )

          ],
        ),
      ),
    );
  }
}
