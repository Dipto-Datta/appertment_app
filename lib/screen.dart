import 'package:appertment_app/screen/second_scren.dart';
import 'package:appertment_app/widget/scrole_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(left: 50, top: 20),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FontItems(
                        title: "Discover\nYour Place\nTo Stay",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        size: 55),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AllScreen(),
                        ));
                      },
                      icon: Icon(Icons.notifications),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 60,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_hdr),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.transparent)),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Search",
                      fillColor: Color.fromARGB(63, 221, 219, 219)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                    height: 135,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemdetails.length,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          newMethod(itemdetail: itemdetails[index]),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          Image.asset("assets/images/02.jpg"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Menu scroll items

  Widget newMethod({required Items itemdetail}) => Column(
        children: [
          Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 211, 211),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    itemdetail.icon,
                    size: 45,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: FontItems(
                title: itemdetail.title,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                size: 12),
          )
        ],
      );
}
