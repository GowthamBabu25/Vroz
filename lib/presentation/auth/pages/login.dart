import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vroz/common/widget/appbar/app_bar.dart';
import 'package:vroz/common/widget/buttons/basic_app_button.dart';
import 'package:vroz/core/configs/assets/app_vectors.dart';
import 'package:vroz/presentation/auth/pages/signup.dart';

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
              vertical: 40,
              horizontal: 40
            ),
            child: Column(
              children: [
                _loginText(),
                SizedBox(height: 20,),
                _userNameField(context),
                SizedBox(height: 40,),
                _passWordField(context),
                SizedBox(height: 40,),
                _logInButton(context),
                SizedBox(height: 50,),
                _horizontalLine(),
                SizedBox(height: 90,),
                _authContainer()
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
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 40
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not a member?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context)=> const SignUp()
                    )
                );
              },
              child: Text('Register Now'))
        ],
      ),
    );
  }

  Widget _horizontalLine(){
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Text(
          'Or',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        )
      ],
    );
  }
}
Widget _authContainer(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: (){

        },
        child: ClipOval(
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AppVectors.google,
              fit: BoxFit.none,

            ),
          ),
        ),
      ),
      SizedBox(
        width: 50,
      ),
      GestureDetector(
        onTap: (){

        },
        child: ClipOval(
          child: Container(
            height: 40,
            width: 40,
            child: SvgPicture.asset(
              AppVectors.apple,
              fit: BoxFit.none,
            ),
          ),
        ),
      )
    ],
  );
}
