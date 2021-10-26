import 'package:example_navigate/navigate/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static final String routeName = '/page1';

  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page 1')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // Nomea a página para que possar retorna
                      settings: const RouteSettings(name: 'page_2'),
                      // Define para qual página vai ser redirecionado
                      builder: (context) => const Page2(),
                    ),
                  );
                },
                child: const Text('Page 2'),
              )
            ],
          ),
        ));
  }
}
