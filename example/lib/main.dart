import 'package:flutter/material.dart';
import 'package:ud_widgets/ud_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ud_widgets',
      home: UdWidgetsDemo(),
    );
  }
}

class UdWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UdScaffold(
      backgroundColor: Colors.white,
      appBar: UdAppBar(
        context: context,
        titleText: "AppBar",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              UdGapY(value: 20),
              UdText(text: "Text"),
              UdGapY(value: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UdShape(
                    size: 50,
                    child: UdText(text: 'Shape', color: Colors.white),
                  ),
                  UdGapX(value: 20),
                  UdShape(
                    size: 50,
                    radius: 4,
                    child: UdText(text: 'Shape', color: Colors.white),
                  ),
                ],
              ),
              UdGapY(value: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UdRadioButton(title: "Radio Button"),
                  UdGapX(value: 20),
                  UdRadioButton(title: "Radio Button", borderRadius: 2),
                ],
              ),
              UdGapY(value: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UdAssetImage(
                    imagePath: "assets/nature.jpg",
                    width: 100,
                    height: 100,
                    borderRadius: 50,
                  ),
                  UdGapX(value: 20),
                  UdTapper(
                    onTap: () {},
                    child: UdNetworkImage(
                      width: 100,
                      height: 100,
                      httpPath: "https://googleflutter.com/sample_image.jpg",
                    ),
                  ),
                ],
              ),
              UdGapY(value: 30),
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
                      UdGapY(value: 20),
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
              UdGapY(value: 30),
              UdBasicButton(
                title: "Button",
                width: 315,
                borderRadius: 4,
                onTap: () {
                  udAlertFunction(
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
    );
  }
}
