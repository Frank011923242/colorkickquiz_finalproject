import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BotNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
  BotNavBar({super.key, required this.onTabChange});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,

        tabBorderRadius: 16,
        onTabChange: (value) =>  widget.onTabChange!(value) ,

        tabs: [
          GButton(icon: Icons.home,
            text: 'Home',
          ),

          GButton(icon: Icons.score,
            text: 'Score',),

          GButton(icon: Icons.person,
            text: 'Me',)
        ],),
    );
  }
}
