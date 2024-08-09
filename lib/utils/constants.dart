import 'package:kol/features/home/manager/models/bloggers_model.dart';

import '../features/home/manager/models/categories_model.dart';
import '../resources/assets/app_assets.dart';

class Constants {
  static List<CategoriesModel> categories = [
    CategoriesModel(
      name: "Food blogger",
      count: "109",
      image: AppAssets.foodblogger,
    ),
    CategoriesModel(
      name: "Travel blogger",
      count: "530",
      image: AppAssets.travelblogger,
    ),
    CategoriesModel(
      name: "Fitness blogger",
      count: "87",
      image: AppAssets.fitnessblogger,
    ),
    CategoriesModel(
      name: "Fashion blogger",
      count: "218",
      image: AppAssets.fashionblogger,
    ),
    CategoriesModel(
      name: "Lifestyle blogger",
      count: "218",
      image: AppAssets.lifestyleblogger,
    ),
    CategoriesModel(
      name: "Medical blogger",
      count: "218",
      image: AppAssets.medicalblogger,
    ),
  ];
  static List<BloggersModel> bloggers = [
    const BloggersModel(
      name: "Name",
      image: AppAssets.foodblogger,
      price: "\$17,00",
    ),
    const BloggersModel(
      name: "Name",
      image: AppAssets.travelblogger,
      price: "\$17,00",
    ),
    const BloggersModel(
      name: "Name",
      image: AppAssets.fitnessblogger,
      price: "\$17,00",
    ),
    const BloggersModel(
      name: "Name",
      image: AppAssets.fashionblogger,
      price: "\$17,00",
    ),
    const BloggersModel(
      name: "Name",
      image: AppAssets.lifestyleblogger,
      price: "\$17,00",
    ),
    const BloggersModel(
      name: "Name",
      image: AppAssets.medicalblogger,
      price: "\$17,00",
    ),
  ];
}
