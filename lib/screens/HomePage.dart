import 'package:estudo01/components/AppBarVerticalEHorizontal.dart';
import 'package:estudo01/repositories/count_repository.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CountRepository countRepository;

  @override
  Widget build(BuildContext context) {
    countRepository = Provider.of<CountRepository>(context);
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (context) => CountRepository(),
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          backgroundColor: const Color.fromARGB(153, 48, 105, 230),
          leading: Icon(Icons.menu, color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.people_alt,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.gif_box,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                countRepository.reset();
              },
              icon: const Icon(
                Icons.production_quantity_limits,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
              child: Container(
                color: Color.fromARGB(153, 48, 105, 230),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    ElevatedButton(
                      autofocus: false,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: const StadiumBorder(),
                        shadowColor: Colors.transparent,
                        fixedSize: const Size(200, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      autofocus: false,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: const StadiumBorder(),
                        shadowColor: Colors.transparent,
                        fixedSize: const Size(250, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Relatorios',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      autofocus: false,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: const StadiumBorder(),
                        shadowColor: Colors.transparent,
                        fixedSize: const Size(250, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Produtos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: largura * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          autofocus: true,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            shape: const StadiumBorder(),
                            shadowColor: Colors.black,
                            fixedSize: Size(250, 50),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Relatórios',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          autofocus: true,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            shape: const StadiumBorder(),
                            shadowColor: Colors.black,
                            fixedSize: const Size(250, 50),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Relatórios',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          autofocus: true,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            shape: const StadiumBorder(),
                            shadowColor: Colors.black,
                            fixedSize: const Size(250, 50),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Relatórios',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(153, 48, 105, 230),
                    height: altura * 0.1,
                    width: largura * 0.9,
                    child: const Center(
                      child: Text(
                        'Cachorrão dos programas',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
