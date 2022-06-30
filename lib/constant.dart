import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FontItems extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  const FontItems(
      {Key? key,
      required this.title,
      required this.color,
      required this.fontWeight,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
        ));
  }
}
