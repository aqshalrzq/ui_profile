import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //content gambar
              Stack(
                overflow: Overflow.visible,
                children: [
                  Image(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/background_image.jpg'),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned(
                    left: 20,
                    bottom: -60,
                    height: 120,
                    width: 120,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.pinkAccent[200],
                      backgroundImage: AssetImage("assets/background_pict.jpg"),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    right: 10,
                    child: TextButton(
                      onPressed: () => null,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                        child: new Text(
                          'Say Hello!',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              color: Colors.pinkAccent[100],
                              fontSize: 12),
                        ),
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.pinkAccent[100]),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                                side: BorderSide(color: Colors.pinkAccent[100]))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),

              //content nama dan username
              ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Text(
                  'Aqshal Rizqullah',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  '@aqshalrzq_',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ),

              //content bio
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 16,
                ),
                child: Text(
                  'gak kepingin kenalan ta?',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 6,
              ),

              // content biodata
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Malang, Jawa Timur',
                                    style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.apartment,
                                  color: Colors.grey,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Biru Software',
                                  style: GoogleFonts.lato(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '16 April 2003',
                                    style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'aqshalrizqullah89@gmail.com',
                                  style: GoogleFonts.lato(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),

              // content about me
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  right: 16,
                  left: 16
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(0, 3)
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 4),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pinkAccent[200],
                              backgroundImage: AssetImage("assets/background_pict.jpg"),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aqshal Rizqullah',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Text(
                                  '@aqshalrzq_',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24, right: 8, left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#aboutme',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.pinkAccent[200]),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Hello everyone, Nice to meet you! 👋',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Introducing, my name is Aqshal Rizqullah. I am someone who likes technology development. One of them is technology in the field of mobile application development. I have followed and learned many things, one of which is how to develop mobile applications using Java and Flutter both in Android Studio and Visual Studio Code.',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'In addition, I also develop what I love apart from technology. For example, how to learn to introduce a product, then how to lead a team on a project. Not only that, I also like to write about my experiences when developing mobile applications on the Instagram platform.',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // content connect with me
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    right: 16,
                    left: 16
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(0, 3)
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 4),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pinkAccent[200],
                              backgroundImage: AssetImage("assets/background_pict.jpg"),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aqshal Rizqullah',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Text(
                                  '@aqshalrzq_',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24, right: 8, left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#reachme',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.pinkAccent[200]),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Interested to get acquainted? 🤝 🤝 🤝',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "I have several social media accounts that you can contact. Apart from that, I also have a github account that I use to put some of the projects I've worked on and a Linkedin account that I use for work.",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width / 2.5,
                                        child: TextButton(
                                          onPressed: () => launchInstagram(),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 11,
                                                backgroundColor: Colors.pinkAccent[200],
                                                backgroundImage: NetworkImage("https://image.flaticon.com/icons/png/512/1409/1409946.png"),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                'Instagram',
                                                style: GoogleFonts.openSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    side: BorderSide(color: Colors.pinkAccent[200]))),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width / 2.5,
                                        child: TextButton(
                                          onPressed: () => launchFacebook(),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 11,
                                                backgroundColor: Colors.pinkAccent[200],
                                                backgroundImage: NetworkImage("https://image.flaticon.com/icons/png/512/145/145802.png"),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                'Facebook',
                                                style: GoogleFonts.openSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    side: BorderSide(color: Colors.pinkAccent[200]))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width / 2.5,
                                        child: TextButton(
                                          onPressed: () => launchGithub(),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 11,
                                                backgroundColor: Colors.white,
                                                backgroundImage: NetworkImage("https://image.flaticon.com/icons/png/512/25/25657.png"),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                'Github',
                                                style: GoogleFonts.openSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    side: BorderSide(color: Colors.pinkAccent[200]))),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width / 2.5,
                                        child: TextButton(
                                          onPressed: () => launchLinkedin(),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 11,
                                                backgroundColor: Colors.pinkAccent[200],
                                                backgroundImage: NetworkImage("https://image.flaticon.com/icons/png/512/145/145807.png"),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                'Linkedin',
                                                style: GoogleFonts.openSans(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18),
                                                    side: BorderSide(color: Colors.pinkAccent[200]))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // content overview projects
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    right: 16,
                    left: 16
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(0, 3)
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 4),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pinkAccent[200],
                              backgroundImage: AssetImage("assets/background_pict.jpg"),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aqshal Rizqullah',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Text(
                                  '@aqshalrzq_',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24, right: 8, left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#overviewproject',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.pinkAccent[200]),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'What projects have you done? 🙌 🙌 🙌',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'There are several projects that I have worked on. Because it matches my passion in the field of mobile application development, so most of the projects I work on are related to mobile applications. There are projects that have been published on the Google Play Store and most of them I put in the github repository.',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4, bottom: 8),
                        child: Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(width: 4,),
                              Container(
                                width: 180,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/app_biru.png"),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                width: 180,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/app_batukotaku.png"),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                width: 180,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/app_notaris.png"),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                width: 180,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/app_number.png"),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                width: 180,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/app_flutter.png"),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // content finally
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    right: 16,
                    left: 16
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(0, 3)
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 4),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pinkAccent[200],
                              backgroundImage: AssetImage("assets/background_pict.jpg"),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aqshal Rizqullah',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Text(
                                  '@aqshalrzq_',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24, right: 8, left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#finally',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.pinkAccent[200]),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'finally, arrived at the end of the post. 🖐 🖐 🖐',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Yes, that's a short story from me. Actually, this is an app I'm working on to better understand about the world of mobile programming with flutter. Interested in getting to know more?",
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 400,
                              child: Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image(
                                        width: MediaQuery.of(context).size.width,
                                        height: 400,
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/background_pict.jpg"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 400,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> onBackPressed() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 1,
            contentPadding: EdgeInsets.all(16),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text(
              'UI Profile',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            content: Text(
              'Danger! You are now almost leaving this app. Are you sure you want to leave and exit the UI Profile?',
              textAlign: TextAlign.justify,
              maxLines: 8,
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 14),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text(
                  'No!'.toUpperCase(),
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 14),
                ),
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.pinkAccent[200]))),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text(
                  'Yes!'.toUpperCase(),
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.pinkAccent[200],
                      fontSize: 14),
                ),
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.pinkAccent[200]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.pinkAccent[200]))),
                ),
              ),
            ],
          );
        });
  }

  launchInstagram() async {
    var instagramLink = "https://www.instagram.com/aqshal.rzq/";
    if (await canLaunch(instagramLink)) {
      await launch(instagramLink);
    }
  }

  launchFacebook() async {
    var facebookLink = "https://www.facebook.com/aqshal.rizqullah";
    if (await canLaunch(facebookLink)) {
      await launch(facebookLink);
    }
  }

  launchGithub() async {
    var githubLink = "https://github.com/aqshalrzq";
    if (await canLaunch(githubLink)) {
      await launch(githubLink);
    }
  }

  launchLinkedin() async {
    var linkedinLink = "https://www.linkedin.com/in/aqshalrzq/";
    if (await canLaunch(linkedinLink)) {
      await launch(linkedinLink);
    }
  }

}
