import 'package:e_commerce_mobile/ui/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
 const Login({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<LoginModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => LoginModel(),
   );
 }
}