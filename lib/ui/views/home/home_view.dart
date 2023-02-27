import 'package:e_commerce_mobile/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
 const Home({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<HomeModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => HomeModel(),
   );
 }
}