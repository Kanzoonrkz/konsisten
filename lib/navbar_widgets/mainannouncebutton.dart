import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:konsisten/constant.dart';

class MainAnnounceButton extends StatefulWidget {
  const MainAnnounceButton({Key? key}) : super(key: key);

  @override
  _MainAnnounceButtonState createState() => _MainAnnounceButtonState();
}

class _MainAnnounceButtonState extends State<MainAnnounceButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: PrimaryBlue,
          child: SvgPicture.asset(
            'assets/icons/nav_beegHorn.svg',
            width: 28,
          ),
        ),
      ),
    );
  }
}
