import 'package:flutter/material.dart';

class MyMenuItems extends StatelessWidget {
  final String _tilte;
  MyMenuItems(this._tilte);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            child: ListTile(
            title: Text(_tilte),
            onTap: (){
              if(_tilte == 'Home Screen'){
              Navigator.of(context).pushNamed('/');
              }
              if(_tilte == 'Second Screen'){
                Navigator.of(context).pushNamed('/second');
              }

              if(_tilte == 'Third Screen'){
                Navigator.of(context).pushNamed('/third');
              }
              

              
            },
          ),
          
        )
      ],
    );
  }
}
