import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _image1 =
        "https://picolio.auto123.com/auto123-media/Chevrolet-Corvette-Z06%20(1).jpeg";
    String _font1 =
        "https://www.shutterstock.com/image-illustration/modern-cars-studio-room-3d-260nw-735402217.jpg";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "assets/images/car.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      width: 200,
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/loading.gif",
                        image: _image1,
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 200,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(_font1),
                      child: Image.asset(
                        "assets/images/car.jpeg",
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
