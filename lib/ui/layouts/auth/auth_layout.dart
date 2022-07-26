import 'package:admin_dashboard/ui/layouts/auth/widgets/background_twitter.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/links_bar.dart';
import 'package:flutter/material.dart';
class AuthLayout extends StatelessWidget {

  const AuthLayout({
    Key? key,
    required this.child 
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          //DESKTOP
          _DesktopBody(
            child: child,
          ),
          _MobileBody(
            child:child
          ),
          LinksBar()
        ],
        //MOBILE
        //LINKS
      )
    );
  }
}


class _DesktopBody extends StatelessWidget {
  
  const _DesktopBody({
    Key? key,
    required this.child
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.95,
      color: Colors.red,
      child: Row(
        children: [
          //twitter background
          const BackgroundTwitter(),
          //VIEW CONTAINER
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                CustomTitle(),
                SizedBox(height: 50,),
                Expanded(
                  child: child
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}