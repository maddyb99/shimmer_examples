import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    String email, password;
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextFormField(
                      onSaved: (s) => email = s,
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    TextFormField(
                      onSaved: (s) => password = s,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.vpn_key),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Shimmer(
              enabled: isDisabled,
              child: MaterialButton(
                padding: EdgeInsets.all(0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: isDisabled
                    ? null
                    : () async {
                        setState(() {
                          isDisabled = true;
                          print("isDisabled: $isDisabled");
                        });
                        await Future.delayed(Duration(seconds: 4));
                        setState(() {
                          isDisabled = false;
                          print("isDisabled: $isDisabled");
                        });
                      },
                color: Colors.lightBlue,
                disabledColor: Colors.grey,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
