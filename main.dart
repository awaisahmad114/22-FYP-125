import 'package:arcore_flutter_plugin_example/providers/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:arcore_flutter_plugin_example/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AddToCart(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furniture app',
        theme: ThemeData(
          // We set Poppins as our default font
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductsScreen(),
      ),
    );
  }
}
