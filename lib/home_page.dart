import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });
  var channel = MethodChannel("showToastByHafeed");
  showToast() {
    channel.invokeListMethod("showToast");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('method channel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'click to show mtheod channel toast',
            ),
            ElevatedButton(onPressed: showToast, child: Text('click'))
          ],
        ),
      ),
    );
  }
}
