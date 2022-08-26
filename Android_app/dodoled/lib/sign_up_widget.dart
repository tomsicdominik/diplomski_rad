import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dodoled/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Dodoled'),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(onPressed:  (){
              final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
              provider.googleLogin();
            },
                icon: FaIcon(FontAwesomeIcons.google), label: Text('Sign In with Google'))
          ],
        ),
      ),
    );
  }

}