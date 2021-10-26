import 'package:example_navigate/navigate/page1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home page')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // Nomea a página para que possar retorna
                      settings: const RouteSettings(name: 'page_1'),
                      // Define para qual página vai ser redirecionado
                      builder: (context) => const Page1(),
                    ),
                  );
                },
                child: const Text('Page 1'),
              ),
              // Navegação com rota nomeada
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Page1.routeName);
                  },
                  child: const Text('Page 1 com named'))
            ],
          ),
        ));
  }
}
