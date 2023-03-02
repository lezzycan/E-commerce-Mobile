import 'package:e_commerce_mobile/ui/shared/dumb_widgets/home_drawer.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/text.dart';
import 'package:e_commerce_mobile/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
 const Home({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<HomeModel>.reactive(
     builder: (context, model, child) =>  Scaffold(
       appBar: AppBar(
          title: const TextInput(text: 'LezShop'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        drawer: const HomeDrawer(),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 200,
               // child: ,
              )
            ],
          )
        ),
     ),
     viewModelBuilder: () => HomeModel(),
   );
 }
}