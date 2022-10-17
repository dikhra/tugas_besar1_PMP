import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tugas Besar 1',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black54,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black54))
          ],
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                textStyle: const TextStyle(fontSize: 30)),
            onPressed: () {},
            child: const Text('Welcome'),
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password Page'),
          leading: BackButton(onPressed: (){
            Navigator.pop(context);
          }),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Image(
              image: AssetImage('images/flutter-logo.png'),
              width: 250,
              height: 100,
            )),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'New Password'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    textStyle:
                        const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('images/flutter-logo.png'),
            width: 250,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'dimaskhalik77@gmail.com'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input Secure Password',
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {
              // Forgot Password
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
                  ));
            },
            child: const Text('Forgot Password'),
          ),
          ElevatedButton(
            onPressed: () {
              // Home Screen
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0))),
            child: const Text('Login'),
          ),
        ],
      )),
      bottomNavigationBar: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            textStyle: const TextStyle(color: Colors.black)),
        child: const Text('New User? Create Account'),
      ),
    );
  }
}
