import 'package:flutter/material.dart';
import 'package:thirdapp/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Third Application',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List mydata = ['appble', 'banana', 'papaya'];
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              title: Text(mydata[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage()));
              },
            ));
          },
          itemCount: mydata.length,
        ));
  }
}
