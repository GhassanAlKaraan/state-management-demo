import 'package:demo10/components/add_button.dart';
import 'package:demo10/components/remove_button.dart';
import 'package:demo10/data_class.dart';
import 'package:demo10/my_utils.dart';
import 'package:demo10/pages/next_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final utils = Utility();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.shopping_cart),
        title: const Text("Shopping Cart"),
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
                  if (context.read<DataClass>().x < 5) {
                    context.read<DataClass>().incrementX();
                    // Provider.of<DataClass>(context, listen: false).incrementX();
                  } else {
                    utils.showAlert(context, "5 is the maximum");
                  }
                }),
                RemoveButton(onTap: () {
                  if (context.read<DataClass>().x > -5) {
                    context.read<DataClass>().decrementX();
                  } else {
                    utils.showAlert(context, "-5 is the minimum");
                  }
                }),
                ElevatedButton(
                    onPressed: () {
                      utils.goToPage(context, NextPage());
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Next Page",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_right),
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
