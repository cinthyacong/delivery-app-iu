import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
          child: Container(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.only(top: 6.0, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade700,
              ),
              child: Text(
                "TOMATO",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.only(top: 6.0, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade700,
              ),
              child: Text(
                "MUSHROOM",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.only(top: 6.0, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade700,
              ),
              child: Text(
                "OLIVES",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.only(top: 6.0, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade700,
              ),
              child: Text("PEPPERONI",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.only(top: 6.0, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.shade700,
              ),
              child: Text("MOZZARELLA",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      )),
    );
  }
}
