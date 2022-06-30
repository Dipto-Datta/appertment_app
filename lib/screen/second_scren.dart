import 'package:appertment_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(150)),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1493397212122-2b85dda8106b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                child: IconButton(
                  icon: Icon(Icons.heart_broken),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 50, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 07.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FontItems(
                          title: "4.95",
                          color: Color.fromARGB(255, 125, 125, 125),
                          fontWeight: FontWeight.bold,
                          size: 30)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FontItems(
                      title: "LIVING PROOF",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      size: 40),
                ),
                Row(
                  children: [
                    FontItems(
                        title: "2 guests",
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        size: 14),
                    SizedBox(
                      width: 20,
                    ),
                    FontItems(
                        title: "1 bedrooms",
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        size: 14),
                    SizedBox(
                      width: 20,
                    ),
                    FontItems(
                        title: "1 bathroom",
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        size: 14),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
