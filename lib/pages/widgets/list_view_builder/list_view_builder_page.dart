import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listCount = 20;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBuilder'),
      ),
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              ListView.builder(
                itemCount: listCount,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // physics: const AlwaysScrollableScrollPhysics(),
                reverse: true,
                padding: const EdgeInsets.only(top: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.maxFinite,
                    height: 20,
                    color: index + 1 == listCount ? Colors.red : Colors.amber,
                  );
                },
              ),
              ListView.separated(
                // physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 50),
                shrinkWrap: true,
                itemCount: listCount,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.maxFinite,
                    height: 20,
                    color: index + 1 == listCount
                        ? const Color.fromARGB(255, 65, 74, 232)
                        : const Color.fromARGB(255, 142, 196, 17),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    height: 5,
                    color: const Color.fromARGB(255, 244, 174, 54),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
