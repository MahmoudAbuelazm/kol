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
}
