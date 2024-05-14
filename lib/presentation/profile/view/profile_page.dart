import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks/const/fonts/app_text.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ProfileView();
  }
}
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:AppText(text: 'Profile view')
      ),
    );
  }
}