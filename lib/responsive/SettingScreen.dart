import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsivedashboard/responsive/LoginScreen.dart';
import 'package:responsivedashboard/responsive/desktop_body.dart';
import 'package:responsivedashboard/responsive/mobile_body.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool valueNotify1 = true;
  bool valueNotify2 = false;
  bool valueNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valueNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valueNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valueNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(193, 119, 12, 78),
        title: Text('Settings'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(136, 60, 60, 61),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            buildAccountOption(context, 'Change Password'),
            buildAccountOption(context, 'Content Settings'),
            buildAccountOption(context, 'Social'),
            buildAccountOption(context, 'Language'),
            buildAccountOption(context, 'Privacy and Security'),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Color.fromARGB(136, 60, 60, 61),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            buildNotificationOption(
                'Theme Dark', valueNotify1, onChangeFunction1),
            buildNotificationOption(
                'Acount Activity', valueNotify2, onChangeFunction2),
            buildNotificationOption(
                'Opportunity', valueNotify3, onChangeFunction3),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(136, 60, 60, 61),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'SIGN OUT',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Sign Out'),
                            content: Text('Dou you want to Sign Out?'),
                            actions: [
                              TextButton(
                                child: Text('YES'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                              ),
                              TextButton(
                                child: Text('NO'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SettingScreen()),
                                  );
                                },
                              ),
                            ],
                          );
                        });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Column(mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Option1'),
                    Text('Option2'),
                  ]),
              actions: [
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}

Padding buildNotificationOption(
    String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: Color.fromARGB(136, 60, 60, 61),
            trackColor: Colors.grey,
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            },
          ),
        ),
      ],
    ),
  );
}
