import 'package:flutter/material.dart';
import 'package:api_project/widgets/menu.dart';


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('API Project'),
      ),
      body: Center(child: Text('Third Screen'),
    )
    );
}
}