import 'package:flutter/cupertino.dart';

import '../../../images.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.66,
      child: Image.asset(
        AppImages.wallpaper,
        fit: BoxFit.cover,
      ),
    );
  }
}
