import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';
import 'package:admin_dashboard/ui/views/login_view.dart';

import 'package:flutter/material.dart';

void main(){
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_,child){
        return AuthLayout(
          child: LoginView(),
        );
      },
    );
  }
}