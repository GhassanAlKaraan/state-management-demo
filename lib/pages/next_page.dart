import 'package:demo10/components/add_button.dart';
import 'package:demo10/components/remove_button.dart';
import 'package:demo10/my_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data_class.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});

  final utils = Utility();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                Consumer<DataClass>(
                  builder: (context, dataClass, child) {
                    return Text(
                      "${dataClass.x}",
                      style: const TextStyle(fontSize: 22),
                    );
                  },
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
                AddButton(onTap: () {
                  // Provider.of<DataClass>(context, listen: false).incrementX();
                  if (context.read<DataClass>().x < 5) {
                    context.read<DataClass>().incrementX();
                    // Provider.of<DataClass>(context, listen: false).incrementX();
                  } else {
                    utils.showAlert(context, "5 is the maximum");
                  }
                }),
                RemoveButton(onTap: () {
                  // Provider.of<DataClass>(context, listen: false).decrementX();

                  if (context.read<DataClass>().x > -5) {
                    context.read<DataClass>().decrementX();
                  } else {
                    utils.showAlert(context, "-5 is the minimum");
                  }
                }),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
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
