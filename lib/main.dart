import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String src =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/BMW_M5_IMG_0887.jpg/800px-BMW_M5_IMG_0887.jpg?20170918155446";
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IntrinsicHeight(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/images/car.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          child: Image.network(
                        src,
                        fit: BoxFit.cover,
                      )),
                    ),
                    Expanded(
                      child: Container(
                          color: Colors.red.shade900,
                          child: const CircleAvatar(
                            backgroundColor: Colors.amberAccent,
                            foregroundColor: Colors.red,
                            backgroundImage: NetworkImage(src),
                            child: Text(
                              "E",
                              style: TextStyle(
                                  fontSize: 56, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ]),
            ),
            Container(
              height: 150,
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif",
                image: src,
                fit: BoxFit.cover,
              ),
            ),
            const Expanded(child: Placeholder()),
          ],
        ),
      ),
    ));
  }
}
