import "package:flutter/material.dart";
import "package:to_do_app/utli/my_button.dart";

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task here",
              ),
            ),
            // buttons -> save + cancel
            Container(
              child: Row(
                children: [
                  // save button
                  MyButton(text: "Save", onPressed: () {}),

                  const SizedBox(
                    width: 8,
                  ),
                  // cancle button
                  MyButton(text: "Cancel", onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
