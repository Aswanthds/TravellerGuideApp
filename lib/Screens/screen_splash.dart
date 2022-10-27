import 'package:flutter/material.dart';
import 'package:travellerapp/Screens/Screen_Home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const ScreenHome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 50,
            ),
            const SpinKitDualRing(
              color: Color(0xFF93C572),
              size: 50.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Created : Aswanth DS'),
              ],
            )
          ],
          
        ),
        
      ),
    );
  }
}
