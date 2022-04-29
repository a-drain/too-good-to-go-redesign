import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

final List<String> restaurants = <String>[
  "Bob's Burgers",
  'Bravo Kitchen',
  'Brazil Grill',
  'Chicken-To-Go',
  "Chuck's Dinner",
  'Korean BBQ',
  'Tacos de Pancho',
];

const String placeholderText =
    "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet.";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Too Good To Go';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  height: 75,
                  child: SizedBox(
                    child: ListTile(
                      leading: Image.asset("images/restaurant.png"),
                      title: Text(restaurants[index]),
                      subtitle: const Text(placeholderText),
                    ),
                  ));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          )),
    );
  }
}
