import 'package:flutter/material.dart';
import 'package:responsivedashboard/pallete.dart';
import 'package:responsivedashboard/responsive/pallete.dart';
import 'package:responsivedashboard/responsive/responsive_layout.dart';

import '../desktop_body.dart';
import '../mobile_body.dart';
import '../tablet_body.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Pallete.gradient1, Pallete.gradient2, Pallete.gradient3],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResponsiveLayout(
                      mobileBody: const MobileScaffold(),
                      tabletBody: const TabletScaffold(),
                      desktopBody: DesktopScaffold())));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
