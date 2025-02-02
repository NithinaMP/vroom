import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/mainProvider.dart';

class Addavailabilitystatus extends StatelessWidget {
  const Addavailabilitystatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rental Availability",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        backgroundColor: Colors.white,
        elevation: 2, // ✅ Adds subtle shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 22), // ✅ Stylish, smaller back icon
          onPressed: () => Navigator.pop(context),
          splashRadius: 20, // ✅ Smaller ripple effect
        ),
      ),

      body: Consumer<MainProvider>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 200,left: 20,right: 20),
              child: Center(
                child: Column(
                  children: [
                    TextField(
                      controller: value.pickupdateController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          label: Text("Enter Plickup Date")
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: value.returndateController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          label: Text("Enter Return Date")
                      ),
                    ),
                    SizedBox(height: 30,),
                    Consumer<MainProvider>(
                      builder: (context, submitValue, child) {
                        return SizedBox(
                          width: double.infinity, // ✅ Makes the button full width
                          height: 50, // ✅ Adjusts height for better appearance
                          child: ElevatedButton(
                            onPressed: () {
                              submitValue.addDetails();
                              submitValue.getDetails();
                              submitValue.clearDetails();
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // ✅ Stylish color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), // ✅ Smooth rounded corners
                              ),
                              elevation: 5, // ✅ Adds a shadow effect
                            ),
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                fontSize: 18, // ✅ Larger text
                                fontWeight: FontWeight.bold, // ✅ Bold for better readability
                                color: Colors.white, // ✅ White text for contrast
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
      ) ,

    );
  }
}
