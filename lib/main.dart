import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calclator',
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Text(
                  '0',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: btn('C')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('/')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('X')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('AC')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(child: btn('7')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('8')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('9')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('-')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(child: btn('4')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('5')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('6')),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(child: btn('+')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    Expanded(child: btn('1')),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(child: btn('2')),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(child: btn('0')),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: btn('3')),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(child: btn('.')),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(child: btn('=')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget btn(String text) {
  return ElevatedButton(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 20),
      ),
      backgroundColor: MaterialStateProperty.all(
        Colors.black,
      ),
    ),
    onPressed: () {},
    child: Text(
      text,
    ),
  );
}
