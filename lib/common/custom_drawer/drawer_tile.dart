import 'package:flutter/material.dart';
import 'package:saude_no_bolso/screen/appointments_screen.dart';
import 'package:saude_no_bolso/screen/exams_screen.dart';
import 'package:saude_no_bolso/screen/login_screen.dart';
import 'package:saude_no_bolso/screen/profile_screen.dart';
import 'package:saude_no_bolso/screen/qrcode_screen.dart';
import 'package:saude_no_bolso/screen/settings_patient_screen.dart';

class DrawerTile extends StatelessWidget {
  DrawerTile({this.iconData, this.title, this.pageNumber});

  final IconData iconData;
  final String title;
  final int pageNumber;

  List _screens = [
    ProfileScreen(),
    ExamsScreen(),
    QrCodeScreen(),
    AppointmentsScreen(),
    SettingsScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _screens[this.pageNumber]),
          );
        },
        child: Row(
          children: [
            Icon(
              iconData,
              size: 25,
              color: Colors.grey[700],
            ),
            Text(
              title,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            )
          ],
        ));
  }
}
