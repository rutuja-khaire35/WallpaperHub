import 'package:wallpaperhubapp/model/categories_model.dart';
import '../secret_key.dart';

String apiKey = secretKey;

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = <CategoriesModel>[];
  CategoriesModel categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/959314/pexels-photo-959314.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "Street Art";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/397857/pexels-photo-397857.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "Wild Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/2246476/pexels-photo-2246476.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "City";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/2694344/pexels-photo-2694344.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "Motivation";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/1413412/pexels-photo-1413412.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "Bikes";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/120049/pexels-photo-120049.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.categorieName = "Cars";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
