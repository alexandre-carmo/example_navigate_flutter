import 'package:example_navigate/navigate/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page 2')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      // Nomea a página para que possar retorna
                      settings: const RouteSettings(name: 'page_3'),
                      // Define para qual página vai ser redirecionado
                      builder: (context) => const Page3(),
                    ),
                  );
                },
                child: const Text('Page 3'),
              )
            ],
          ),
        ));
  }
}
