import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks/const/fonts/app_text.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
const SignupPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SignUpView();
  }
}
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(text: 'Signup view')
      ),
    );
  }
}