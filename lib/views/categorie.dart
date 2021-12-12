import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaperhubapp/data/data.dart';
import 'package:wallpaperhubapp/model/wallpaper_model.dart';
import 'package:wallpaperhubapp/widgets/widget.dart';

class Categorie extends StatefulWidget {
  final String categorieName;
  Categorie({required this.categorieName});

  @override
  _CategorieState createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  List<WallpaperModel> wallpapers = <WallpaperModel>[];

  getSearchWallpapers(String query) async {
    var response = await http.get(
        Uri.parse(
            "https://api.pexels.com/v1/search?query=$query&per_page=16&page=1"),
        headers: {"Authorization": apiKey});

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getSearchWallpapers(widget.categorieName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            brandName(),
          ],
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 16,
            ),
            WallpapersList(wallpapers: wallpapers, context: context)
          ]),
        ),
      ),
    );
  }
}
