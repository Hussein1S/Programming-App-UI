import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page_one extends StatefulWidget {
  const Page_one({Key? key}) : super(key: key);

  @override
  _Page_oneState createState() => _Page_oneState();
}

class _Page_oneState extends State<Page_one> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WELCOME',
            style: TextStyle(
                fontSize: 25
            ),
          ),
          Center(child:
              Lottie.network('https://assets10.lottiefiles.com/packages/lf20_iorpbol0.json')
          ),
        ],
      ),
    );

  }
}
