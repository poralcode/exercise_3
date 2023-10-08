// home_page.dart
// Mobile Application Development: Exercise #3
// Task Description: Create your own login screen.
// You may customize the layout and design of the screen but it should have the following:
// - Fields for user name and password
// - Login Button
// - Something the user can tap if he forgot his credentials
// - Alternative login options: Facebook, Google, etc.
//
// Note that this uses the following dependencies:
// - font_awesome_flutter: ^10.5.0
//
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/* Home Page */
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '', // Empty Title Bar for the meantime...
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
      ),
      // Add resizeToAvoidBottomInset property to avoid keyboard overlapping.
      resizeToAvoidBottomInset: true,
      body: _buildLoginPage(context), // Build the login page UI
    );
  }

  Widget _buildLoginPage(BuildContext context) {
    final _formKey = GlobalKey<
        FormState>(); // This will be used to identify each key of input field in the form...
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 10),
                      // Logo Section
                      const Image(
                        image:
                            AssetImage('lib/assets/flutterio_icon_purple.png'),
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "EXERCISE 3",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign in to your account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Form Section...
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username or Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300.0,
                        child: FilledButton(
                          onPressed: () {
                            // Trigger validation and make authentication request to the server...
                          },
                          child: const Text('Continue'),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0),
                        child: Row(children: <Widget>[
                          Expanded(child: Divider()),
                          Text(" Or sign in with ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 96, 96, 96))),
                          Expanded(child: Divider()),
                        ]),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.facebook),
                            color: const Color.fromARGB(255, 59, 89, 152),
                            iconSize: 30.0,
                            onPressed: () {
                              // Make authenticated requests to Facebook...
                            },
                          ),
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.google),
                            color: const Color.fromARGB(255, 66, 133, 244),
                            iconSize: 30.0,
                            onPressed: () {
                              // Make authenticated requests to Google...
                            },
                          ),
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.linkedin),
                            color: const Color.fromARGB(255, 0, 122, 185),
                            iconSize: 30.0,
                            onPressed: () {
                              // Make authenticated requests to LinkedIn...
                            },
                          ),
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.pinterest),
                            color: const Color.fromARGB(255, 203, 32, 39),
                            iconSize: 30.0,
                            onPressed: () {
                              // Make authenticated requests to Pinterest...
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Theme.of(context).primaryColor,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: "Don't have an account? "),
                            TextSpan(
                              text: 'Sign-up',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigate to sign-up page or do something else
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
