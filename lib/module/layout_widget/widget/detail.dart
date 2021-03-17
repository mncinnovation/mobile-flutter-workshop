import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'assets/logo/logo_celebritiesdotid.png',
              scale: 16 / 4,
            ),
          ),
        ),
        leadingWidth: 130,
        actions: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                'Foto',
                style: TextStyle(
                    color: Colors.red[600],
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
        elevation: 3,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Page Detail'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back'))
        ],
      ),
    );
  }
}
