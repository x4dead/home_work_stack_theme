import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 200, 0, 255), blurRadius: 1)
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              scale: 7,
            ),
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            Text(subTitle, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    ]);
  }
}
