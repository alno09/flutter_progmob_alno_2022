import 'package:flutter/material.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({super.key, required this.title});

  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  int _counter = 5;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Nama ?",
                hintText: "Kuplek",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5)
                )
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5)
            ),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Angkatan ?",
                hintText: "2017",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5)
                )
              ),
            ),
            ElevatedButton(
              child: Text('Open Drawer'),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //  onPressed: _incrementCounter,
      //  tooltip: 'Increment',
      //  child: const Icon(Icons.add),
    //  ),
    );
  }
}