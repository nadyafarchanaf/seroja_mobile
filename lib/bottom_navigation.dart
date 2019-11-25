import 'package:flutter/material.dart';

import 'package:seroja/beranda.dart';
import 'color.dart';


class BottomNavigationBarApp extends StatelessWidget {
  final int bottomNavigationBarIndex;
  final BuildContext context;

  const BottomNavigationBarApp(this. context, this.bottomNavigationBarIndex);

  void onTabTapped(int index) {
    Navigator.of(context).push(
      MaterialPageRoute<Null>(builder: (BuildContext context) {
        return Beranda();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavigationBarIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      selectedLabelStyle: TextStyle(color: CustomColor.BlueDark),
      selectedItemColor: CustomColor.BlueDark,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/home.png',
              color: (bottomNavigationBarIndex == 0)
                  ? CustomColor.BlueDark
                  : CustomColor.TextGrey,
            ),
          ),
          title: Text('Beranda'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/task.png',
              color: (bottomNavigationBarIndex == 1)
                  ? CustomColor.BlueDark
                  : CustomColor.TextGrey,
            ),
          ),
          title: Text('Riwayat'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/icon-user.png',
              color: (bottomNavigationBarIndex == 2)
                  ? CustomColor.BlueDark
                  : CustomColor.TextGrey,
            ),
          ),
          title: Text('Profil'),
        ),
      ],
      onTap: onTabTapped,
    );
  }
}
