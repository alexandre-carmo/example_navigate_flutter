import 'package:example_navigate/navigate/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page 3')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // Nomea a página para que possar retorna
                      settings: const RouteSettings(name: 'page_4'),
                      // Define para qual página vai ser redirecionado
                      builder: (context) => const Page4(),
                    ),
                  );
                },
                child: const Text('Page 4'),
              )
            ],
          ),
        ));
  }
}
