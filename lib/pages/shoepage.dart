

import 'package:finalproject_colorkickquiz/pages/quizgamehomepage.dart';
import 'package:flutter/material.dart';

import '../searchbox/searchbox.dart';




class ShoePages extends StatefulWidget {
  const ShoePages({super.key});

  @override
  State<ShoePages> createState() => _ShoePagesState();
}

class _ShoePagesState extends State<ShoePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 500,
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
      body: Container(
          child: Column (
            children: [
              SearchBox(),
            ],
          )


      ),





    );
  }
}


