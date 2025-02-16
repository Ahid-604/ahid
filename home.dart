// مثال لكيفية استخدام Row و Stack في تصميم بسيط

import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مثال للتصميم'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // صف أول
            Row(
              children: <Widget>[
                Expanded(
                  // يستخدم لتوزيع المساحة بالتساوي
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16), // مساحة فاصلة بين الصفوف

            // صف ثاني
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // مثال على Stack
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.grey,
                ),
                Positioned(
                  // لتحديد موقع العنصر داخل Stack
                  top: 20,
                  left: 20,
                  child: Text(
                    'نص فوق العنصر',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
