// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Starbucks',
//       home: const HelloWorld(),
//     );
//   }
// }

// class HelloWorld extends StatelessWidget {
//   const HelloWorld({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Starbucks',
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/bg.jpeg'),
//                   fit: BoxFit.cover, // Mengatur gambar agar mengisi container
//                 ),
//               ),
//             ),
//             Center(
//               child: Column(
//                 mainAxisAlignment:
//                     MainAxisAlignment.center, // Center column secara vertikal
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.all(
//                         20.0), // Margin disekitar container
//                     child: Card(
//                       elevation: 3,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(
//                             20.0), // Padding didalam container
//                         child: Column(
//                           children: [
//                             ClipOval(
//                               child: Image.asset(
//                                 "assets/images/logo.jpeg",
//                                 width: 100,
//                                 height: 100,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             const Text(
//                               'Fadia Azra Kadarisman',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: 'Roboto',
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             const Text(
//                               'Mythological Figure and icon of Starbucks. Passionate about brewing the perfect cup of coffee every day.',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontFamily: 'Roboto',
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             const SizedBox(height: 10),
//                             TextButton(
//                                 onPressed: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) { // build dialog/popup
//                                   return AlertDialog(
//                                     shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(15),
//                                     ),
//                                     content: const Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Text(
//                                       'Siren',
//                                       style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                         fontFamily: 'Roboto',
//                                       ),
//                                       ),
//                                       SizedBox(height: 20), // space between title and description
//                                       Text(
//                                       'The Siren is a mythological figure and the icon of Starbucks. She represents the allure and mystery of the sea, and her image is a symbol of the company\'s commitment to providing the perfect cup of coffee every day. The Siren has been a part of Starbucks\' identity since the company was founded in 1971, and she continues to be a central figure in the brand\'s story.',
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontFamily: 'Roboto',
//                                       ),
//                                       textAlign: TextAlign.center,
//                                       ),
//                                     ],
//                                     ),
//                                     actions: [
//                                     TextButton(
//                                       onPressed: () {
//                                       Navigator.of(context).pop();
//                                       },
//                                       child: const Text(
//                                       'Close',
//                                       style: TextStyle(
//                                         color: Colors.blue,
//                                         fontSize: 16,
//                                         fontFamily: 'Roboto',
//                                       ),
//                                       ),
//                                     ),
//                                     ],
//                                   );
//                                   },
//                                 );
//                                 },
//                               child: const Text(
//                                 'See More',
//                                 style: TextStyle(
//                                   color: Colors.blue,
//                                   fontSize: 16,
//                                   fontFamily: 'Roboto',
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(29, 28, 25, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('assets/images/pp.jpg'),
                      ),
                      Text(
                        "Fadia Azra Kadarisman",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "Vocational High School Student at SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()), // Ensure 'Page2' is correctly implemented.
                          );
                        },
                        child: Text('See More', style: TextStyle(color: Colors.white)), // Added text style to improve visibility.
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}