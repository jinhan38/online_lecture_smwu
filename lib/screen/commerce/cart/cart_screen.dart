import 'package:flutter/cupertino.dart';
import 'package:online_lecture_smwu/screen/commerce/cart/cart_view_model.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/product_grid.dart';

import '../util.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartViewModel vm = CartViewModel.instance;
  VoidCallback? listener;

  @override
  void initState() {
    listener = () {
      setState(() {});
    };
    vm.addListener(listener!);
    super.initState();
  }

  @override
  void dispose() {
    vm.removeListener(listener!);
    listener = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProductGrid(
      productList: vm.cartList,
      scroll: true,
      onPressed: (productModel) {
        vm.removeProduct(productModel);
        Util.showToast("제품을 제거했습니다");
      },
    );
  }
}
