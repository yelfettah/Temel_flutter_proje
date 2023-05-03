import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*TextButton(
          onPressed: () {},
          style: ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(Colors.purple),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.red;
              }
            }),
            foregroundColor: MaterialStateProperty.all(Colors.blueAccent),
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: Text("Text buton aktif"),
        ),
        */
        
        TextButton(
          onPressed: () {},
          child: Text("Text button aktif edildi"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
            foregroundColor: MaterialStateProperty.all(Colors.red),
            overlayColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text buton icons aktif"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue, onPrimary: Colors.black),
          child: Text("ElevateButton Aktif"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Elevate Bottun Aktif"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Outline Button Aktif"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outline Button Aktif"),
        ),
      ],
    );
  }
}
