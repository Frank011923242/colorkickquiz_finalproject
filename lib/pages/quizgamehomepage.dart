
import 'package:finalproject_colorkickquiz/pages/shoepage.dart';
import 'package:flutter/material.dart';

import '../buttomnavbar/botnavbar.dart';

import '../tabpage/hometab.dart';
import '../tabpage/profiletab.dart';
import '../tabpage/scoretab.dart';



class ShoeQuizHome extends StatefulWidget {
  const ShoeQuizHome({super.key});

  @override
  State<ShoeQuizHome> createState() => _ShoeQuizHomeState();
}

class _ShoeQuizHomeState extends State<ShoeQuizHome> {
  //select the index is to control
  int _selectindex=0;
  // this method to be updated the selected index

  void navigateBottomBar(int index){
    setState(() {
      _selectindex = index;
    });
  }
  final List<Widget> _pages =  [

    const HomeTab(),

    const Scoretab(),

    const ProfileTab(),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BotNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed:(){
              Scaffold.of(context).openDrawer();
            },
          ),
        ),



      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset(
              'asset/images/logo.png',
              height: 1000,
            ),
            ),

            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 25),
              child: Divider(
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                  leading: Icon(Icons.home,),
                  title: Text('Home',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ShoeQuizHome()));
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                  leading: Icon(Icons.inventory,),
                  title: Text('Shoes',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ShoePages()));
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                  leading: Icon(Icons.info,),
                  title: Text('info',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ShoePages()));
                  }
              ),
            )

          ],
        ),
      ),
      body: _pages[_selectindex],

    );



  }
}

