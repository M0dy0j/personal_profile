import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> _sendEmail(String recipient, String subject, String body) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: recipient,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );
    await launchUrl(emailUri);
  }

  Future<void> _makeCall(String num) async {
    Uri url = Uri(scheme: 'tel', path: num);
    await launchUrl(url);
  }

  Future<void> _openGoogleWebsite(String url) async {
    try {
      await launch(url);
    } catch (e) {
      throw 'Could not launch $url';
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/P.JPG'),
            ),
            Text(
              'Mohammed Essam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Caveat",
              ),
            ),
            Text(
              'Flutter developer',
              style: TextStyle(
                color: Colors.blue[100],
                fontSize: 24,
                letterSpacing: 4,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blue.shade100,
              ),
            ),
            Container(
              height: 450,
              child: ListView(
                children: [
                  Card(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextButton(onPressed: (){_makeCall('0569330038');}, child: ListTile(
                        leading: Icon(Icons.phone, color: Colors.green, size: 30,),
                        title: Text('Phone', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),)
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){_sendEmail('mody.aug@gmail.com', 'Subject', 'Body');},
                      child: ListTile(
                        leading: Icon(Icons.email, color: Color(0xFFA22121), size: 30,),
                        title: Text('Gmail', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://mostaql.com/u/M0hammed_Essam');
                    },
                      child: ListTile(
                        leading: Icon(Icons.circle_outlined, color: Colors.blue, size: 30,),
                        title: Text('Mostaql', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://wa.me/+970569330038');
                    },
                      child: const ListTile(
                        leading: Icon(FontAwesomeIcons.whatsapp,color: Colors.green, size: 30,),
                        title: Text('Whatsapp', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://www.instagram.com/m0hammed._.essam/');
                    },
                      child: const ListTile(
                        leading: Icon(FontAwesomeIcons.instagram, color: Color(0xFFA22121), size: 30,),
                        title: Text('Instagram', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://t.me/M0hammed_Essam');
                    },
                      child: const ListTile(
                        leading: Icon(FontAwesomeIcons.telegram, color: Colors.blue, size: 30,),
                        title: Text('Telegram', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://www.snapchat.com/add/mody.ess');
                    },
                      child: const ListTile(
                        leading: Icon(FontAwesomeIcons.snapchat, color: Color(0xFFCECE4B), size: 30,),
                        title: Text('Snapchat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://www.facebook.com/profile.php?id=100004985297944');
                    },
                      child: ListTile(
                        leading: Icon(FontAwesomeIcons.facebook,color: Colors.blue, size: 30,),
                        title: Text('Facebook', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextButton(onPressed: (){ _openGoogleWebsite('https://ngl.link/m0hammed._.essam');
                    },
                      child: ListTile(
                        leading: Icon(Icons.open_in_browser, color: Color(0xFFA22121), size: 30,),
                        title: Text('NGL', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                      ),),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
