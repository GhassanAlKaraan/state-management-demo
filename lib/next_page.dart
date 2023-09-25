import 'package:demo10/components/add_button.dart';
import 'package:demo10/components/remove_button.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.shopping_cart),
        title: const Text("Next Page"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Total: ",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  x.toString(),
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AddButton(onTap: () {}), //todo: add function
                RemoveButton(onTap: () {}), //todo: add function
                ElevatedButton(
                    onPressed: () {}, //todo: add function
                    child: const Row(
                      children: [
                        Icon(Icons.arrow_left),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Home Page",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
