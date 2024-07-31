import 'package:flutter/material.dart';
import 'package:flutter_nol/page/text_field.dart';

class FlutterDasar extends StatefulWidget {
  const FlutterDasar({super.key});

  @override
  State<FlutterDasar> createState() => _FlutterDasarState();
}

class _FlutterDasarState extends State<FlutterDasar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const FlutterLogo(
          size: 10,
        ),
        title: const Text('Flutter Dasar'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Title Dialog'),
                    content: const Text('This is Alert Dialog'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Kembali'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Alert Dialog'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    margin: const EdgeInsets.all(10),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Tutup',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    content: const Text('Hello This is Snack Bar'),
                  ),
                );
              },
              child: const Text('Snack Bar'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FDTextField(),
                    ),
                  );
                },
                child: const Text('Text Field'))
          ],
        ),
      ),
    );
  }
}
