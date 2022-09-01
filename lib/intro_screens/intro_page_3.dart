import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page_Three extends StatefulWidget {
  const Page_Three({Key? key}) : super(key: key);

  @override
  _Page_ThreeState createState() => _Page_ThreeState();
}

class _Page_ThreeState extends State<Page_Three> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('Learn Coding Easily',
        style: TextStyle(
            fontSize: 25
        ),
      ),
       Center(child:
      Lottie.network('https://assets10.lottiefiles.com/packages/lf20_es4p9zph.json')
      ),
      ]
    ),
    );
  }
}
