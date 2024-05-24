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
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(153, 48, 105, 230),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dashboard',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.dashboard,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
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
                              fontWeight: FontWeight.bold,
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
                              fontWeight: FontWeight.bold,
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
                              fontWeight: FontWeight.bold,
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
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: altura * 0.1,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(153, 48, 105, 230),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.notifications,
                                          color: Colors.white,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                autofocus: true,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(153, 48, 105, 230),
                                  shape: const StadiumBorder(),
                                  shadowColor: Colors.black,
                                  fixedSize: Size(250, 80),
                                  side: BorderSide(
                                    width: 1.0,
                                    color: Color.fromARGB(153, 48, 105, 230),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Relatórios',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                autofocus: true,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(153, 48, 105, 230),
                                  shape: const StadiumBorder(),
                                  shadowColor: Colors.black,
                                  fixedSize: const Size(250, 80),
                                  side: BorderSide(
                                    width: 1.0,
                                    color: Color.fromARGB(153, 48, 105, 230),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Relatórios',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                autofocus: true,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(153, 48, 105, 230),
                                  shape: const StadiumBorder(),
                                  side: const BorderSide(
                                    width: 1.0,
                                    color: Color.fromARGB(153, 48, 105, 230),
                                  ),
                                  shadowColor: Colors.black,
                                  fixedSize: const Size(250, 80),
                                ),
                                onPressed: () {},
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Relatórios',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        height: altura * 0.1,
                        width: largura * 0.9,
                        child: const Center(
                          child: Text(
                            'Cachorrão dos programas',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
