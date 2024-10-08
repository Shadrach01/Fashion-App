import 'package:fashion_app/common/services/storage.dart';
import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstrings.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/reusable_text.dart';
import 'package:fashion_app/src/auth/views/login_screen.dart';
import 'package:fashion_app/src/products/widgets/explore_products.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return const LoginPage();
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ReusableText(
          text: AppText.kWishlist,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ExploreProducts(),
      ),
    );
  }
}
