import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Dialog * Bottomshet"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Info'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text("Your order was placed!"),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Ok"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Open Dialog"),
              ),
              const SizedBox(
                height: 8.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  bool confirm = true;
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(30.0),
                        child: Wrap(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Confirm",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                      "Are you sure you want to delete this item?"),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("No"),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          confirm = true;
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Yes"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                  if (confirm) {
                    print("Confirmed!");
                  }
                },
                child: const Text("Open Bottomsheet"),
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Your request is successful"),
                      ),
                    );
                  },
                  child: const Text('Open snackbar'))
            ],
          ),
        ),
      ),
    );
  }
}
