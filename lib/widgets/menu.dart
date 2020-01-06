import 'package:flutter/material.dart';

import 'my_menu_items.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('fayyaddev@gmail.com'),
              accountName: Text('Yassir Fayyad'),
              currentAccountPicture: Image.asset('assets/images/smile.png'),
            ),
            SizedBox(height: 5,),
            Divider(color:Colors.white,),
           MyMenuItems('Home Screen'),
           MyMenuItems('Second Screen'),
           MyMenuItems('Third Screen'),
          ],
        ),
      ),
    );
  }
}
