import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';



class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          elevation: 0.5,
          title: Row(
            children: [
              Text(
                'Profile',
                style: GoogleFonts.satisfy(
                    color: const Color(0xFF000000), fontSize: 25),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              buildTop(),
              buildContent(),
            ],
          ),
        ));
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://www.freecodecamp.org/news/content/images/2021/06/w-qjCHPZbeXCQ-unsplash.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildTop() =>
      Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
        Container(
          child: buildCoverImage(),
          margin: EdgeInsets.only(bottom: profileHeight / 2),
        ),
        Positioned(
            top: coverHeight - profileHeight / 2, child: buildProfileImage()),
      ]);

  Widget buildProfileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
          'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'));

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'James Cameron',
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 8),
          Text(
            'Flutter Developer',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.grey.shade700),
          ),
          const SizedBox(height: 16),
          Divider(),
          const SizedBox(height: 16),
          buildAbout(),
          const SizedBox(height: 16),
          Row(children: [
            buildSocialIcon(FontAwesomeIcons.facebookMessenger),
            

            
          ],)
        ],
      );

  Widget buildAbout() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              textAlign: TextAlign.start,
              style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt, dolor ipsam vel laboriosam vero praesentium ducimus dignissimos aliquam tempore aperiam, dolore laborum blanditiis earum. Eveniet vitae dolores quidem eius debitis.',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 5,
        child: Center(
            child: Icon(
          icon,
          size: 32,
        )),
      );

      
}
