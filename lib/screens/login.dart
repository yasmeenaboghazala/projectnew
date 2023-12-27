// this is changed
import 'package:bussines/screens/navigation_screen.dart';
import 'package:bussines/shared/Shard_prefrence.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 45),
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xff6174e4)),
                            )),
                        Image.asset("images/login_image.gif"),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(40, 20, 40, 5),
                          child: TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(27)),
                              hintText: 'Your Email ',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: TextField(
                            controller: password,
                            obscureText: pass,
                            decoration: InputDecoration(
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                child: Icon(pass
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(27)),
                              hintText: 'Your Password',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              shard.pref.setString("email", email.text);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavigationScreen()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff6174e4)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                      horizontal: 77, vertical: 13)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.grey[900], fontSize: 20),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ignore: prefer_const_constructors
                            Text(
                              "Don't have an account? ",
                              style: const TextStyle(fontSize: 20),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/signup");
                                },
                                child: const Text("signup now",
                                    style: TextStyle(
                                        color: Color(0xff6d7fe6),
                                        fontSize: 20))),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: const Color(0xff6074e4),
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
