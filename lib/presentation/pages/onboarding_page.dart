//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'car_list.dart';
//
// class OnboardingPage extends StatelessWidget {
//   const OnboardingPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff2c2b34),
//
//
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(image: AssetImage("assets/CAR_1.png"),
//                     // scale: .75,
//                     // alignment: Alignment.centerLeft,
//                     fit: BoxFit.cover
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Premium cars. \nEnjoy the Luxury",style:
//                   TextStyle(color: Colors.black54,fontSize: 32,fontWeight: FontWeight.bold),),
//                   SizedBox(height: 10,),
//                   Text("Premium and prestige car daily rental.\nExperience the thrill at a lower price",
//                     style: TextStyle(color: Colors.grey,fontSize: 16),),
//                   SizedBox(height: 20,),
//                   SizedBox(
//                     width: 320,
//                     height: 54,
//                     child: ElevatedButton(
//                       onPressed: (){
//                         Navigator.of(context).pushAndRemoveUntil(
//                             MaterialPageRoute(builder: (context) => CarListScreen()), (route) => false);
//                         Navigator.push(context, MaterialPageRoute(
//                             builder: (context) => CarListScreen()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.black,
//                         backgroundColor: Colors.white,
//                       ),child: Text('Let\'s Go',style: TextStyle(
//                         fontSize: 16,fontWeight: FontWeight.bold
//                     ),),),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:vroom/presentation/pages/loginPage.dart';
import 'car_list.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff2c2b34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/onboarding 4.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Premium cars.\nEnjoy the Luxury",
                    style: TextStyle(
                      color: Colors.white, // Changed to white for better contrast
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Premium and prestige car daily rental.\nExperience the thrill at a lower price.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Let's Go!",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
