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
        appBar: UdAppBar(context: context, titleText: "AppBar"),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                UdText(text: "Text"),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UdShape(
                      size: 50,
                      child: UdText(text: 'Shape', color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    UdShape(
                      size: 50,
                      radius: 4,
                      child: UdText(text: 'Shape', color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UdRadioButton(title: "Radio Button"),
                    SizedBox(width: 20),
                    UdRadioButton(title: "Radio Button", borderRadius: 2),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UdAssetImage(
                      imagePath: "assets/nature.jpg",
                      width: 100,
                      height: 100,
                      borderRadius: 50,
                    ),
                    SizedBox(width: 20),
                    UdNetworkImage(
                      width: 100,
                      height: 100,
                      httpPath: "https://googleflutter.com/sample_image.jpg",
                    ),
                  ],
                ),
                SizedBox(height: 30),
                UdCard(
                  width: 315,
                  borderRadius: 4,
                  backgroundColor: Color(0xff0077d7),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        UdText(
                          text: "Card",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        SizedBox(height: 20),
                        UdBasicTextInputField(
                          width: double.infinity,
                          hintText: "Text Input Field",
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
                SizedBox(height: 30),
                UdBasicButton(
                  title: "Button",
                  width: 315,
                  borderRadius: 4,
                  onTap: () {
                    udAlert(
                      context: context,
                      title: "Hello",
                      message: "This is a dialog message!",
                      button1Text: "Ok",
                      button1Function: () {
                        print("Dialog button 1 pressed");
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
