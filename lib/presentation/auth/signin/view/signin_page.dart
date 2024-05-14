import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks/const/fonts/app_text.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
const SigninPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SigninView();
  }
}
class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(text: 'Signin view')
      ),
    );
  }
}