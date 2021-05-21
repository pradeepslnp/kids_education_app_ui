import 'package:flutter/material.dart';

import 'package:kids_education_app_ui/data.dart';

class AnimalCard extends StatelessWidget {
  AnimalCard({required this.animal, required this.onPressed});
  AnimalInfo animal;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        height: 230,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 50,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0)),
                  constraints: BoxConstraints(maxHeight: 200, maxWidth: 330)),
            ),
            Positioned(
              top: 25.0,
              child: Hero(
                tag: animal.name,
                transitionOnUserGestures: true,
                child: Image(
                  image: AssetImage(animal.iconImage),
                  width: 150.0,
                  height: 150.0,
                ),
              ),
            ),
            Positioned(
              top: 25.0,
              left: 160.0,
              child: Text(
                animal.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 160.0,
              child: Container(
                width: 200,
                height: 200,
                child: Opacity(
                  opacity: 0.8,
                  child: Center(
                    child: Text(animal.description,
                        style: TextStyle(
                          wordSpacing: 4,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
