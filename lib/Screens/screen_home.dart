import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travellerapp/Screens/screen_profile.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem(
      {required this.urlImage, required this.title, required this.subtitle});
}

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  Color _iconColor = Colors.white, _appBar = const Color(0xFAB1F087);

  List<CardItem> items = [
    CardItem(
        urlImage:
            'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg ',
        title: ' London , UK',
        subtitle:
            'London , UK One of the Beautiful place to live and to Visit.'),
    CardItem(
        urlImage:
            'https://static.toiimg.com/thumb/msid-52040615,width-748,height-499,resizemode=4,imgsize-167596/Burj-al-arab.jpg',
        title: ' Dubai ',
        subtitle: 'Dubai One of the Beautiful place to live and to Visit.'),
    CardItem(
        urlImage:
            'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
        title: ' Munnar',
        subtitle:
            'Munnar,Idukki ,Kerala , India is one of the Beautiful place to live and to Visit.'),
   
  ];

  @override
  Widget build(BuildContext context) {
    var listView = ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => cardCom(item: items[index]),
      separatorBuilder: (context, _) => const SizedBox(width: 12),
      itemCount: 3,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarcom(),
      bottomNavigationBar: bottomNavigationBar(),
      // ignore: prefer_const_constructors

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundimg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: listView,
      ),
    );
  }

  Widget cardCom({required CardItem item}) => Padding(
        padding: const EdgeInsets.only(bottom:100),
        child: Container(
          width: 200,
          height: 150,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            color: _iconColor,
            elevation: 10.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Ink.image(
                      image: NetworkImage(item.urlImage),
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text(
                        item.title,
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    item.subtitle,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('View'),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_outline),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );

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
        actions: <Widget>[
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenProfile()));
            }),
            child: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg')),
          )
        ],
      );
}
