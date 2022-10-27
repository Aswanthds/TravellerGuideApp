import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  // Color _iconColor = Colors.white, _appBar = const Color(0xFAB1F087);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarcom(),
      bottomNavigationBar: bottomNavigationBar(),
      // ignore: prefer_const_constructors

      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundimg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          cardof(),
        ],
      ),
    );
  }

  Widget cardof() => Padding(
        padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(20.0, 16.0),
              topRight: Radius.elliptical(20.0, 16.0),
              bottomLeft: Radius.elliptical(20.0, 16.0),
              bottomRight: Radius.elliptical(20.0, 16.0),
            ),
          ),
          elevation: 10.0,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        height: 150,
                        width: 200,
                        'https://www.thestar.com/content/dam/thestar/life/travel/2022/07/08/an-insiders-guide-to-london-england-where-to-find-inspiring-art-cool-shops-and-classic-sunday-roast/london_england_credit_tomas_marek_istock.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 0.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text('London',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                        'An insiders guide to London, England: Where to find inspiring art, cool shops and classic Sunday roast'),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: Text('View'),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  //   Stack(
  //     children: [
  //       Ink.image(
  //         image: NetworkImage(item.urlImage),
  //         height: 150,
  //         width: 200,
  //         fit: BoxFit.cover,
  //       ),
  //       Positioned(
  //         bottom: 16,
  //         right: 16,
  //         left: 16,
  //         child: Text(
  //           item.title,
  //           style: GoogleFonts.aBeeZee(
  //               color: Colors.white,
  //               fontSize: 24,
  //               fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Padding(
  //     padding: const EdgeInsets.all(16).copyWith(bottom: 0),
  //     child: Text(
  //       item.subtitle,
  //       style: TextStyle(
  //         fontSize: 16,
  //       ),
  //     ),
  //   ),
  //   // const SizedBox(height: 50),
  //   Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       ButtonBar(
  //         alignment: MainAxisAlignment.start,
  //         children: [
  //           TextButton(
  //             onPressed: () {},
  //             child: Text('View'),
  //           ),
  //         ],
  //       ),
  //       IconButton(
  //         onPressed: () {},
  //         icon: Icon(Icons.add_circle_outline),
  //       )
  //     ],
  //   ),
  // ],

  Widget bottomNavigationBar() => Container(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            backgroundColor: Colors.white70,
            color: const Color(0xFF000000),
            activeColor: Colors.black,
            tabBackgroundColor: Colors.transparent,
            padding: const EdgeInsets.all(16),
            tabBorderRadius: 50,
            onTabChange: (value) => print(value),
            gap: 4,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search_outlined,
                text: 'Search',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favourite',
              ),
              GButton(
                icon: Icons.settings_outlined,
                text: 'Settings',
              ),
            ],
          ),
        ),
      );

  AppBar appBarcom() => AppBar(
        elevation: 0.5,
        title: Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenHome()));
              },
              child: Text(
                'Traveller Guide',
                style: GoogleFonts.satisfy(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      );

  Widget secondSection() => Container(
        child: Row(children: [
          const Text('Time to Visit'),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Text('More'))
        ]),
      );
}
