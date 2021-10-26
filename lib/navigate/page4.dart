import 'package:example_navigate/navigate/page1.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page 4')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Remove todas a páginas até a primeira
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        // Nomea a página para que possar retorna
                        settings: const RouteSettings(name: 'page_1'),
                        // Define para qual página vai ser redirecionado
                        builder: (context) => const Page1(),
                      ),
                      // (route) => false); // Remove todas a páginas e deixa somente a atual
                      (route) => route.isFirst);
                },
                child: const Text('Page 1'),
              )
            ],
          ),
        ));
  }
}
