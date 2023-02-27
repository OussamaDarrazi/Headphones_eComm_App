import 'package:boat_app/colors.dart';
import 'package:flutter/material.dart';

class HeadphonesDetailsPage extends StatelessWidget {
  const HeadphonesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 30,
          ),
        ),
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: PrimaryBeige,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "BoAt Headphones",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/image 4.png"))),
                  ),
                  const Text(
                      "If you are looking for a wallet-friendly wireless headset then this boAt headset is ideal for you. A complete charging session ensures that you receive a playback time of up to 8 hours. Moreover, it allows wired and wireless connectivity with AUX and Bluetooth. Furthermore, the earcups are adjustable, padded, and comfortable."),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "\$56.98",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                              EdgeInsets.only(left: 40, right: 40)),
                          foregroundColor:
                              MaterialStatePropertyAll<Color>(Colors.black),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(PrimaryBeige)),
                      onPressed: null,
                      child: Text(
                        "Buy Now",
                        style: TextStyle(fontSize: 15),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
