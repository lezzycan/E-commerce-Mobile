import 'package:e_commerce_mobile/ui/views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Startup extends StatelessWidget {
 const Startup({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<StartupModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => StartupModel(),
   );
 }
}