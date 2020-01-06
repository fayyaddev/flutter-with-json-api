import 'dart:convert';
import 'dart:math';
import 'package:api_project/models/photo.dart';
import 'package:flutter/material.dart';
import 'package:api_project/widgets/menu.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('API Project'),
      ),
      body: Center(
        child: myList.length > 0
            ? Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return _buildMyList(myList[index]);
                  },
                  itemCount: myList.length,
                ),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addPhoto(),
      ),
    );
  }

  //*-------------------------------------------------- */
  //build my list item by function

  Widget _buildMyList(String img) {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Card(
          child: Image.network(img),
          elevation: 5,
        ));
  }

  /*-------------------------------------------------- */
  //add photo by click on add button
  _addPhoto() async {
    final num = Random().nextInt(1000);
    final response =
        await http.get('http://jsonplaceholder.typicode.com/photos/$num');
    final parsedResponse = jsonDecode(response.body);
    final photo = Photo(
        id: parsedResponse['id'],
        albumId: parsedResponse['albumId'],
        title: parsedResponse['title'],
        url: parsedResponse['url'],
        thumbnailUrl: parsedResponse['thumbnailUrl']);
        
    setState(() {
      myList.add(photo.url);
    });
    print(myList.length);
  }
}
