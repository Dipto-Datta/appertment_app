import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 50),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Stack(
                children: [
                  FontItems(
                      title: "Discover\nYour Place\nTo Stay",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      size: 55),
                  Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                        iconSize: 30,
                      ))
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(),
            ),
            ListView.builder(itemBuilder: (context, index) => Text("data")),
          ],
        ),
      ),
    );
  }
}
