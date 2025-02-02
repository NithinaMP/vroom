// import 'dart:collection';
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
//
// class MainProvider extends ChangeNotifier{
// final FirebaseFirestore db = FirebaseFirestore.instance;
//
//   TextEditingController pickupdateController = TextEditingController();
//   TextEditingController returndateController = TextEditingController();
//
//
// void addDetails() {
//   print("Add details to firebase");
//   String id = DateTime
//       .now()
//       .microsecondsSinceEpoch
//       .toString();
//   HashMap<String, dynamic> addMap = HashMap();
//   addMap["ID"] = id;
//   addMap["Pickup"] = pickupdateController.text;
//   addMap["Return"] = returndateController.text;
//
//   db.collection("DETAILS").doc(id).set(addMap);
//   notifyListeners();
// }
//
//
// }
//
// // userID, carID, pickupDate, returnDate, status: pending



import 'dart:collection';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // ✅ Import Firestore
import 'package:flutter/cupertino.dart';

import '../model/statusModel.dart';

class MainProvider extends ChangeNotifier {
  final FirebaseFirestore db = FirebaseFirestore.instance; // ✅ Firestore instance

  TextEditingController pickupdateController = TextEditingController();
  TextEditingController returndateController = TextEditingController();

  void addDetails(){
    print("Add details to firebase");
    String id = DateTime
        .now()
        .microsecondsSinceEpoch
        .toString();
    HashMap<String, dynamic> addMap = HashMap();
    addMap["ID"] = id;
    addMap["Pickup"] = pickupdateController.text;
    addMap["Return"] = returndateController.text;
    db.collection("Status").doc(id).set(addMap);
    // getDetails();
    notifyListeners();

  }

  List<CarStatusModel>carstatusList = [];
  void getDetails() {
    db.collection("Status").get().then((value) { // ✅ Fixed syntax
      if (value.docs.isNotEmpty) {
        carstatusList.clear();
        for (var element in value.docs) {
          print("aaaa");

          Map<String, dynamic> map = element.data(); // ✅ Ensure correct type

          carstatusList.add(CarStatusModel(
            element.id,
            map["Pickup"] ?? "",
            map["Return"] ?? "",
          ));

          print("$map");
          notifyListeners(); // ✅ No need to call multiple times inside loop
        }
        print("finishhh");
        notifyListeners(); // ✅ Call once after loop
      }
    }).catchError((error) {
      print("Error fetching details: $error"); // ✅ Added error handling
    });
  }



 void clearDetails(){
    pickupdateController.clear();
    returndateController.clear();
    notifyListeners();
 }

  }




