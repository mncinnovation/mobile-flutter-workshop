import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          LottieBuilder.asset('assets/img/10071-halloween-cute-witch-flying.json'),
          Text(
            'Be Creative',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
