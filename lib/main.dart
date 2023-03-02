
import 'package:e_commerce_mobile/appfolder/app.locator.dart';
import 'package:e_commerce_mobile/appfolder/app.router.dart';
import 'package:e_commerce_mobile/ui/views/startup/startup_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setupLocator();

  // setupDialogUi();
  // setupBottomSheetUi();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ).then((_) => runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: ((_, __) =>  MyApp()))));
}

class MyApp extends StatelessWidget {
 const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'E-commerce',
      debugShowCheckedModeBanner: false,
       onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
   //   themeMode: ThemeMode.system,
    );
  }
}