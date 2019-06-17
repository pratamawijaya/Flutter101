import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome', style: Theme.of(context).textTheme.display3),
              SizedBox(height: 24),
              _LoginTextField(hintText: 'Username'),
              _LoginTextField(hintText: 'Password'),
              SizedBox(height: 24),
              FlatButton(
                color: Colors.yellow,
                onPressed: () => Navigator.pushReplacementNamed(context, '/catalog'),
                child: Text('Enter'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  _LoginTextField({Key key, @required this.hintText, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.black12,
      ),
      obscureText: obscureText,
    );
  }
}
