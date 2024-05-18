import 'package:backend01/core/constant/routes.dart';
import 'package:backend01/view/screen/auth/signup.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
 /*  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]), */
  // GetPage(name: "/", page: () => TestView()),

  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  

];
 