import 'package:example_navigate/navigate_params/detail.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Detail(),
                    settings: const RouteSettings(
                      name: 'detail',
                      arguments: {'id': 10},
                    ),
                  ));
                },
                child: const Text('details'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/detail', arguments: {'id': 25});
                },
                child: const Text('Details by Named'),
              )
            ],
          ),
        ));
  }
}
