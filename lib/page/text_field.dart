import 'package:flutter/material.dart';

class FDTextField extends StatefulWidget {
  const FDTextField({super.key});

  @override
  State<FDTextField> createState() => _FDTextFieldState();
}

class _FDTextFieldState extends State<FDTextField> {
  bool isHidden = true;
  TextEditingController tEmail = TextEditingController();
  TextEditingController tPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Column(
              children: [
                FlutterLogo(
                  size: 80,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Flutter Login',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                TextField(
                  controller: tEmail,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      label: const Text('Email'),
                      prefixIcon: const Icon(Icons.email)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: tPass,
                  autocorrect: false,
                  textInputAction: TextInputAction.done,
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    label: const Text('Password'),
                    prefixIcon: const Icon(Icons.privacy_tip_outlined),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isHidden == true) {
                            isHidden = false;
                          } else {
                            isHidden = true;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    String email = tEmail.text;
                    String password = tPass.text;

                    if (email == 'admin@admin.com' &&
                        password == 'admin@admin.com') {
                      // Login success
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login Successful')),
                      );
                    } else {
                      // Login failed
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalid email or password')),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
