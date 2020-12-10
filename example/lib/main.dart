import 'package:flutter/material.dart';
import 'package:ud_widgets/ud_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ud_widgets',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: UdAppBar(
          context: context,
          titleText: "UdAppBar",
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                UdText(
                  text: "UdText",
                ),
                SizedBox(height: 20),
                UdRadioButton(
                  title: "UdRadioButton",
                ),
                SizedBox(height: 20),
                UdAssetImage(
                  imagePath: "assets/images/others/noimage.png",
                  width: 100,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: UdText(
                      text: "UdAssetImage",
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                UdNetworkImage(
                  width: 100,
                  height: 100,
                  httpPath: "https://googleflutter.com/sample_image.jpg",
                  child: Align(
                    alignment: Alignment.center,
                    child: UdText(
                      text: "UdNetworkImage",
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                UdCard(
                  width: 315,
                  backgroundColor: Colors.pink,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        UdText(
                          text: "UdCard",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        SizedBox(height: 20),
                        UdBasicTextInputField(
                          width: double.infinity,
                          hintText: "UdBasicTextInputField",
                          textAlignment: TextAlign.start,
                          leftItem: Icon(
                            Icons.person,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                UdBasicButton(
                  title: "UdBasicButton",
                  width: 315,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
