import 'package:boat_app/colors.dart';
import 'package:boat_app/views/headphone_details_page.dart';
import 'package:boat_app/widgets/headphones_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headphones eComm',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
        fontFamily: GoogleFonts.inter().fontFamily,
        // primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              child: ListView(children: [
                const DrawerHeader(
                    child: Text(
                  "Headphones App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                )),
                ListTile(
                    title: const Text("Recommended",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                ListTile(
                    title:
                        const Text("Popluar", style: TextStyle(fontSize: 20)),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                ListTile(
                    title: const Text("New", style: TextStyle(fontSize: 20)),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ]),
            ),
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              leading: Builder(
                  builder: (context) => // Ensure Scaffold is in context
                      IconButton(
                          icon: const Icon(Icons.menu, size: 30,),
                          onPressed: () => Scaffold.of(context).openDrawer())),
              actions: const [
                Icon(Icons.search_sharp, size: 30),
                SizedBox(width: 10),
                Icon(Icons.favorite_border_outlined, size: 30),
                SizedBox(width: 10),
              ],
            ),
            body: Stack(children: [
              //background colors
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: PrimaryBeige,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 20),
                  child: Column(children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Headphones",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HeadphonesDetailsPage()),
                              );
                            },
                            child: const HeadphonesCard(
                                price: 56.98,
                                headphonesName: "BoAt Headphones",
                                imgUrl:
                                    "assets/images/boAt_headphones_home.png")),
                      ],
                    )),
                    const BottomNavBar()
                  ]))
            ])));
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Text("JBL",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        Text("BoAt",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
        Text("Noise",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        Text("Sony",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
