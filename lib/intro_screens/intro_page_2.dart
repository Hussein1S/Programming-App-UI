import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page_Two extends StatefulWidget {
  const Page_Two({Key? key}) : super(key: key);

  @override
  _Page_TwoState createState() => _Page_TwoState();
}

class _Page_TwoState extends State<Page_Two> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Best Place for YOU',
        style: TextStyle(
            fontSize: 25
        ),
      ),
       Center(child:
      Lottie.network("https://assets4.lottiefiles.com/packages/lf20_1elvfrxr.json"),
      ),
      ]
    )
    );
  }
}
