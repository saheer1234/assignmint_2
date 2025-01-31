import 'package:app1/ui/screens/add_new_product_screen.dart';
import 'package:app1/ui/screens/product_list_screen.dart';
import 'package:app1/ui/screens/update_prodect_screen.dart';
import 'package:flutter/material.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const ProductListScreen(),
        AddNewProductScreen.name: (context) => AddNewProductScreen(),
        UpdateProductScreen.name: (context) => UpdateProductScreen(),
      },
    );
  }
}
