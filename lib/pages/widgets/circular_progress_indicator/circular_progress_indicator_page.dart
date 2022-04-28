import 'package:flutter/material.dart';

class CircularProgressIndicatorPage extends StatefulWidget {
  const CircularProgressIndicatorPage({Key? key}) : super(key: key);

  @override
  State<CircularProgressIndicatorPage> createState() =>
      _CircularProgressIndicatorPageState();
}

class _CircularProgressIndicatorPageState
    extends State<CircularProgressIndicatorPage> {
  var visible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeVisible() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Progress Indicator'),
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.amber,
        color: Colors.red,
        strokeWidth: 4,
        onRefresh: () async {
          changeVisible();

          await Future.delayed(const Duration(seconds: 5));

          changeVisible();
        },
        child: ListView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Center(
                  child: Visibility(
                    visible: visible,
                    child: const CircularProgressIndicator(
                      backgroundColor: Colors.amber,
                      color: Colors.red,
                      strokeWidth: 6,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
