import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';



class My_New_Widget extends StatefulWidget {
  const My_New_Widget({super.key});

  @override
  State<My_New_Widget> createState() => _My_New_WidgetState();
}

class _My_New_WidgetState extends State<My_New_Widget> {
  int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter appBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona Basılma Miktarı",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(_sayac.toString(),
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}
