import 'package:flutter/cupertino.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_image.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_short_cut.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_subtitle.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/product_horizontal.dart';
import 'package:online_lecture_smwu/screen/commerce/model/product_model.dart';

import '../assets_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ProductModel> newProduct = [
    ProductModel(
      image: AssetsPath.productJacketJean,
      name: "청 자켓",
      price: 90000,
      like: false,
      reviewCount: 27,
      reviewRating: 4.1,
    ),
    ProductModel(
      image: AssetsPath.productShoes,
      name: "나이키 신발",
      price: 190000,
      like: false,
      reviewCount: 19,
      reviewRating: 3.9,
    ),
    ProductModel(
      image: AssetsPath.productManJacket,
      name: "남성 자켓 ",
      price: 220000,
      like: true,
      reviewCount: 0,
      reviewRating: 0,
    ),
    ProductModel(
      image: AssetsPath.productManStreet,
      name: "길거리 패션",
      price: 73000,
      like: false,
      reviewCount: 5,
      reviewRating: 3.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        HomeImage(),
        const SizedBox(height: 30),
        HomeShortCut(),
        const SizedBox(height: 30),
        HomeSubtitle(label: "신제품"),
        ProductHorizontal(productList: newProduct),
        const SizedBox(height: 80),
      ],
    );
  }
}
