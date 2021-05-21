import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_education_app_ui/data.dart';
import 'package:kids_education_app_ui/widget/custom_header.dart';

class DetailPage extends StatelessWidget {
  DetailPage({required this.animal});
  final AnimalInfo animal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            animal.name,
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: animal.color,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: animal.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: GestureDetector(
                child: Center(
                  child: Hero(
                      tag: animal.iconImage,
                      child: Image(image: AssetImage(animal.iconImage))),
                ),
                onTap: () => Get.back(),
              ),
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header(text: animal.name),
                      SubHeader(text: animal.description),
                      SizedBox(
                        height: 10,
                      ),
                      Header(text: 'Lifespan'),
                      SubHeader(text: animal.lifespan),
                      SizedBox(
                        height: 10,
                      ),
                      Header(text: 'Speed'),
                      SubHeader(text: animal.speed),
                      SizedBox(
                        height: 10,
                      ),
                      Header(text: 'Details'),
                      SubHeader(text: animal.paragraph),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
                    color: Colors.white,
                    child: animal.images.length != 0
                        ? Container(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            color: Colors.white,
                            width: double.infinity,
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Header(text: "Images"),
                                  Expanded(
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: animal.images.length,
                                        itemBuilder: (BuildContext context,
                                                int index) =>
                                            PictureCard(
                                              imageUrl: animal.images[index],
                                            )),
                                  )
                                ],
                              ),
                            ),
                          )
                        : Container(
                            color: Colors.white,
                          )))
          ],
        ),
      ),
    );
  }
}
