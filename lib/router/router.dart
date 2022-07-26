import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter{

  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/login';

  static String dashboardRoute = '/dashboard';


  static void configureRoutes(){
    router.define(
      rootRoute, 
      handler: AdminHandlers.login
    );
    // router.define(
    //   loginRoute, 
    //   handler: handler
    // );
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}