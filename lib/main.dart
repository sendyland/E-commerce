import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uas_ecommerce_sendymaulana/blocs/cart/cart_bloc.dart';
import 'package:uas_ecommerce_sendymaulana/blocs/category/category_bloc.dart';
import 'package:uas_ecommerce_sendymaulana/blocs/product/product_bloc.dart';
import 'package:uas_ecommerce_sendymaulana/blocs/wishlist/wishlist_bloc.dart';
import 'package:uas_ecommerce_sendymaulana/config/app_router.dart';
import 'package:uas_ecommerce_sendymaulana/config/theme.dart';
import 'package:uas_ecommerce_sendymaulana/repositories/category/category_repository.dart';
import 'package:uas_ecommerce_sendymaulana/repositories/product/product_repository.dart';
import 'package:uas_ecommerce_sendymaulana/screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishList())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(
          create: (_) => CategoryBloc(
            categoryRepository: CategoryRepository(),
          )..add(LoadCategories()),
        ),
        BlocProvider(
          create: (_) => ProductBloc(
            productRepository: ProductRepository(),
          )..add(LoadProducts()),
        ),
      ],
      child: MaterialApp(
        title: 'E-Commerce',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
