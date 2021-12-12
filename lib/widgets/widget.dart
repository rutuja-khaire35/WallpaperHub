import 'dart:js';
import 'package:flutter/material.dart';
import 'package:wallpaperhubapp/model/wallpaper_model.dart';
import 'package:wallpaperhubapp/views/image_view.dart';

Widget brandName() {
  return Center(
    child: RichText(
        text: TextSpan(
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            children: [
          TextSpan(text: 'Wallpaper', style: TextStyle(color: Colors.black87)),
          TextSpan(text: 'Hub', style: TextStyle(color: Colors.blue))
        ])),
  );
}

Widget WallpapersList({required List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageView(
                      imgUrl: wallpaper.src!.portrait.toString(),
                    ),
                  ));
            },
            child: Hero(
              tag: wallpaper.src!.portrait.toString(),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    wallpaper.src!.portrait.toString(),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        );
      }).toList(),
    ),
  );
}

// Future<bool> _onBackPressed() {
//   return showDialog(
//         context: context,
//         builder: (context) => new AlertDialog(
//           title: Text('Are you sure?'),
//           content: Text("Do you want to exit an App"),
//           actions: [
//             GestureDetector(
//               onTap: () => Navigator.of(context).pop(false),
//               child: Text("NO"),
//             ),
//             SizedBox(height: 16),
//             GestureDetector(
//               onTap: () => Navigator.of(context).pop(true),
//               child: Text("YES"),
//             ),
//           ],
//         ),
//       ) ??
//       false;
// }
