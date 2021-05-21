import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_education_app_ui/widget/animal-card.dart';
import 'package:flutter/cupertino.dart';
import '../data.dart';
import '../screens/detail_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<AnimalInfo> animal = [];
  @override
  void initState() {
    animal = animallist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Learn',
            style: TextStyle(color: Colors.blue, fontSize: 30.0),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            Icon(
              Icons.filter_list,
              color: Colors.amber,
            )
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(5.0),
          itemCount: animal.length,
          itemBuilder: (context, index) => AnimalCard(
            animal: animal[index],
            onPressed: () {
              print('object');
              Get.to(DetailPage(animal: animal[index]));
            },
          ),
        ),
      ),
    );
  }
}
