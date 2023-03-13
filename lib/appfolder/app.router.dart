// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:e_commerce_mobile/ui/views/create_account/create_account_view.dart'
    as _i5;
import 'package:e_commerce_mobile/ui/views/home/home_view.dart' as _i3;
import 'package:e_commerce_mobile/ui/views/login/login_view.dart' as _i4;
import 'package:e_commerce_mobile/ui/views/startup/startup_view.dart' as _i2;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const startup = '/';

  static const home = '/Home';

  static const login = '/Login';

  static const createAccount = '/create-account';

  static const productDetails = '/product-details';

  static const all = <String>{
    startup,
    home,
    login,
    createAccount,
    productDetails,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startup,
      page: _i2.Startup,
    ),
    _i1.RouteDef(
      Routes.home,
      page: _i3.Home,
    ),
    _i1.RouteDef(
      Routes.login,
      page: _i4.Login,
    ),
    _i1.RouteDef(
      Routes.createAccount,
      page: _i5.CreateAccount,
    ),
    _i1.RouteDef(
      Routes.productDetails,
      page: _i3.ProductDetails,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.Startup: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i2.Startup(),
        settings: data,
      );
    },
    _i3.Home: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i3.Home(),
        settings: data,
      );
    },
    _i4.Login: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i4.Login(),
        settings: data,
      );
    },
    _i5.CreateAccount: (data) {
      final args = data.getArgs<CreateAccountArguments>(
        orElse: () => const CreateAccountArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i5.CreateAccount(key: args.key),
        settings: data,
      );
    },
    _i3.ProductDetails: (data) {
      final args = data.getArgs<ProductDetailsArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i3.ProductDetails(
            key: args.key,
            prodName: args.prodName,
            proOldPrice: args.proOldPrice,
            prodImage: args.prodImage,
            prodNewPrice: args.prodNewPrice),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class CreateAccountArguments {
  const CreateAccountArguments({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class ProductDetailsArguments {
  const ProductDetailsArguments({
    this.key,
    required this.prodName,
    required this.proOldPrice,
    required this.prodImage,
    required this.prodNewPrice,
  });

  final _i6.Key? key;

  final String prodName;

  final String proOldPrice;

  final String prodImage;

  final String prodNewPrice;

  @override
  String toString() {
    return '{"key": "$key", "prodName": "$prodName", "proOldPrice": "$proOldPrice", "prodImage": "$prodImage", "prodNewPrice": "$prodNewPrice"}';
  }
}

extension NavigatorStateExtension on _i7.NavigationService {
  Future<dynamic> navigateToStartup([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startup,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHome([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.home,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLogin([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.login,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreateAccount({
    _i6.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.createAccount,
        arguments: CreateAccountArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductDetails({
    _i6.Key? key,
    required String prodName,
    required String proOldPrice,
    required String prodImage,
    required String prodNewPrice,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productDetails,
        arguments: ProductDetailsArguments(
            key: key,
            prodName: prodName,
            proOldPrice: proOldPrice,
            prodImage: prodImage,
            prodNewPrice: prodNewPrice),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartup([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startup,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHome([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.home,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLogin([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.login,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreateAccount({
    _i6.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.createAccount,
        arguments: CreateAccountArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductDetails({
    _i6.Key? key,
    required String prodName,
    required String proOldPrice,
    required String prodImage,
    required String prodNewPrice,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productDetails,
        arguments: ProductDetailsArguments(
            key: key,
            prodName: prodName,
            proOldPrice: proOldPrice,
            prodImage: prodImage,
            prodNewPrice: prodNewPrice),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
