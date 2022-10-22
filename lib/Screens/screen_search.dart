import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellerapp/Screens/Screen_Home.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0.5,
      title: Row(
        children: [
          Text(
            'Traveller Guide',
            style: GoogleFonts.satisfy(
                color: const Color(0xFF000000), fontSize: 25),
          )
        ],
      ),
      backgroundColor: const Color(0xFF93C572),
    ),
    body: Text('Hello'),);
  }
}
