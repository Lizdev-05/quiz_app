// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   late double height, width;
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;

//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           color: Color.fromARGB(255, 189, 189, 189),
//           child: Stack(
//             children: [
//               SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: height * .4,
//                     ),
//                     Container(
//                       decoration: const BoxDecoration(
//                         color: Color.fromARGB(255, 189, 189, 189),
//                       ),
//                       child: Container(
//                         height: height * .6,
//                         decoration: const BoxDecoration(
//                             color: Color.fromARGB(255, 58, 0, 139),
//                             borderRadius: BorderRadius.horizontal(
//                                 right: Radius.circular(40),
//                                 left: Radius.circular(40))),
//                       ),
//                     ),
//                     Positioned(
//                       top: height * .5 - (width * .2),
//                       left: width * .3,
//                       child: SizedBox(
//                         // height: width * .4,
//                         // width: width * .4,
//                         child: Image.asset("images/quizz.png"),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Positioned(
//                 top: height * .4 - (width * .2),
//                 left: width * .3,
//                 child: SizedBox(
//                   // height: width * .4,
//                   // width: width * .4,
//                   child: Image.asset("images/quizz.png"),
//                   width: 150,
//                   height: 150,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 189, 189, 189),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height * .4,
                    ),
                    Container(
                      height: height * .6,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 58, 0, 139),
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(40),
                          left: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: height * .3 - (width * .1),
                left: width * .3,
                child: SizedBox(
                  height: 200,
                  width: 160,
                  child: Image.asset("images/quizz.png"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
