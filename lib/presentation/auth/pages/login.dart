import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vroz/common/widget/appbar/app_bar.dart';
import 'package:vroz/common/widget/buttons/basic_app_button.dart';
import 'package:vroz/core/configs/assets/app_vectors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signInText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
            AppVectors.logo,
            height:60,
            width:60,

        ),
      ),
      body:
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 40
            ),
            child: Column(
              children: [
                _loginText(),
                SizedBox(height: 50,),
                _userNameField(context),
                SizedBox(height: 50,),
                _passWordField(context),
                SizedBox(height: 50,),
                _logInButton(context),
              ],
            ),
          ),
    );
  }
  Widget _loginText(){
    return Text(
      'Sign In',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
      ),
    );
  }

  Widget _logInButton(context){
    return BasicAppButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const Login()
              )
          );
        },
        title: 'Sign In'
    );
  }

  Widget _userNameField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Username Or Email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),

    );
  }

  Widget _passWordField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      )
    );
  }

  Widget _signInText(BuildContext context){
    return Row(
      children: [
        Text(
          'Not a member?',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14
          ),
        ),

      ],
    );
  }
}
