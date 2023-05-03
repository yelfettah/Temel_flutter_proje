import 'package:flutter/material.dart';

void main(List<String> args) {}



class DropDownKullanimi extends StatefulWidget {
  const DropDownKullanimi({super.key});

  @override
  State<DropDownKullanimi> createState() => _DropDownKullanimiState();
}

class _DropDownKullanimiState extends State<DropDownKullanimi> {
  @override
  String? _secilenSehir = null;
  List<String> _TumSehirler = ["Istanbul","Izmır","Ankara","Bursa"];
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButton<String>(
            
            icon: Icon(Icons.arrow_drop_down_circle_sharp),
            iconSize: 25,
            hint: Text("Şehir seçiniz"),
            /*items: [
              DropdownMenuItem(
                child: Text(
                  "İstanbul Şehri",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                  ),
                ),
                value: 'Istanbul',
              ),
              DropdownMenuItem(
                child: Text(
                  "Ankara Şehri",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                  ),
                ),
                value: 'Ankara',
              ),
              DropdownMenuItem(
                child: Text(
                  "İzmir Şehri",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                  ),
                ),
                value: 'Izmir',
              ),
            ],
            */
            items:_TumSehirler.map(( String oAnkiSehir) =>DropdownMenuItem(child:Text(oAnkiSehir),value:oAnkiSehir ,) ).toList(),
            value: _secilenSehir,
            onChanged: (String? yeni) {
              setState(() {
                print("$yeni çalıştı");
                _secilenSehir = yeni;
              });
            },
          ),
        ],
      ),
    );
  }
}
