import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Image.network("https://c.tenor.com/RGlL81BvDlEAAAAC/pusheen-cat.gif"),
    );
  }
}
