import 'dart:convert';

import 'package:api_project/models/photo.dart';
import 'package:api_project/models/photo_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:api_project/widgets/menu.dart';
import 'package:http/http.dart' as http;

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('API Project'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchPhoto(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Center(
                  child: snapshot.hasData
                      ? PhotoList(photos: snapshot.data)
                      : CircularProgressIndicator());
            },
          ),
        ));
  }
  
}

//*------------------------------------------------------------- */
//fetch data from internet
Future<List<Photo>> fetchPhoto() async {
  final response = await http.get('http://jsonplaceholder.typicode.com/photos');

  final responseBody = response.body;
  return compute(parsePhoto, responseBody);
}


/*--------------------------------------------------------- */
//isolate data using compute

List<Photo> parsePhoto(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String , dynamic>>();
  return parsed.map<Photo>((x) => Photo.fromJson(x)).toList();
}
