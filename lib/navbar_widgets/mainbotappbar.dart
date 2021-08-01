import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBotAppBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;
  const MainBotAppBar({
    required this.index,
    required this.onChangedTab,
    required Key key,
  }) : super(key: key);

  @override
  _MainBotAppBarState createState() => _MainBotAppBarState();
}

class _MainBotAppBarState extends State<MainBotAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildNavItem(
            index: 0,
            icon: SvgPicture.asset('assets/icons/nav_home.svg'),
          ),
          buildNavItem(
            index: 1,
            icon: SvgPicture.asset('assets/icons/nav_history.svg'),
          ),
          buildNavItem(
            index: 2,
            icon: SvgPicture.asset('assets/icons/nav_activity.svg'),
          ),
          buildNavItem(
            index: 3,
            icon: SvgPicture.asset('assets/icons/nav_profile.svg'),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem({
    required int index,
    required SvgPicture icon,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.red : Colors.black,
        // TODO: Color change on svg
      ),
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}
