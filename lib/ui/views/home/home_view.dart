library home_view.dart;



import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/ui/shared/ecm_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'package:e_commerce_mobile/core/constants/ecm_dimensions.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/home_drawer.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/text.dart';
import 'package:e_commerce_mobile/ui/views/home/home_viewmodel.dart';

part 'category/category_view.dart';
part 'product/product_view.dart';
part 'product/product_details_view.dart';


class Home extends StatelessWidget {
 const Home({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  final List<String> images = [
     EcmStrings.carouSlideA,
     EcmStrings.carouSlideB,
     EcmStrings.carouSlideD,
     EcmStrings.carouSlideE,
     EcmStrings.carouSliedF
  ];

  List<Widget> generateImageTiles() {
    
    return images.map((image) => 
    ClipRRect(
      borderRadius: BorderRadius.circular(EcmDimensions.medium),
      child: Image.asset(image, fit: BoxFit.cover, width: double.infinity,height: 200, ),
    ),
    ).toList();
  }
   return ViewModelBuilder<HomeModel>.reactive(
     builder: (context, model, child) { 
      final size = MediaQuery.of(context).size;
      return Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 18.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                  child: CarouselSlider(
                    items: generateImageTiles(), 
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: 200,
                      aspectRatio: 2.0,
                      
                      viewportFraction: 0.8,
                      autoPlayAnimationDuration: const Duration(microseconds: 3000),
                      autoPlayCurve: Curves.easeIn
                    ),),
                ),
                const EcmSpacing.height(20),
                TextInput(
                text: 'Categories',
                style: Theme.of(context).textTheme.bodyMedium!.
                copyWith(color: Colors.black, fontWeight: FontWeight.w900),
                ),
              const EcmSpacing.mediumHeight(),
               const CategoriesList(),
              const EcmSpacing.mediumHeight(),
              TextInput(
                text: 'Recent products ',
                style: Theme.of(context).textTheme.bodyMedium!.
                copyWith(color: Colors.black, fontWeight: FontWeight.w900),
                ),
                const EcmSpacing.mediumHeight(),
              SizedBox(
                height: size.height * 0.25,
                child: Product()),
              ],
            ),
          )
        ),
     );
 },
     viewModelBuilder: () => HomeModel(),
   );
 }
}