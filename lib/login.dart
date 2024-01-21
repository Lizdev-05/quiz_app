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
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final Function switchScreen;
  const LoginPage(this.switchScreen, {super.key});

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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, login to ",
                              style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 208, 199, 199),
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Quiz",
                              style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                hintText: "Enter Your Email",
                                hintStyle: GoogleFonts.roboto(
                                    color: Color.fromARGB(255, 180, 179, 179),
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                hintText: "Enter Your Password",
                                hintStyle: GoogleFonts.roboto(
                                    color: Color.fromARGB(255, 180, 179, 179),
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadiusDirectional.circular(8),
                              child: Container(
                                // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                                width: 350,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 130, 30, 160),
                                        Color.fromARGB(255, 176, 91, 21)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.bottomRight),
                                ),

                                child: TextButton(
                                  onPressed: () =>
                                      widget.switchScreen("question-screen"),
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            //
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'New to app? ',
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
                                          color: Colors.white, fontSize: 20),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'Sign Up',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                // top: height * .3 - (width * .1),
                // left: width * .3,

                top: height * .1 - (width * .3),
                left: width * .1 - (width * .1),
                child: SizedBox(
                  height: 600,
                  width: 450,
                  // child: Image.asset("images/quizz.png"),
                  child: Image.asset("images/quizloginn.png"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
