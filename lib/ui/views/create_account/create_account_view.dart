import 'package:e_commerce_mobile/ui/views/create_account/create_Account_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CreateAccount extends StatelessWidget {
 const CreateAccount({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<CreateAccountModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => CreateAccountModel(),
   );
 }
}