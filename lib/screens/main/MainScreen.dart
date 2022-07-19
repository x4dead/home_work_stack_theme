import 'package:flutter/material.dart';
import 'package:flutter_stack/screens/main/wigets/bgImageWidget.dart';
import 'package:flutter_stack/screens/main/wigets/categoryItem.dart';

import '../../images.dart';
import '../../theme/textStyle.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundImageWidget(),
          MainLayotWidget(),
        ],
      ),
    );
  }
}

class MainLayotWidget extends StatelessWidget {
  const MainLayotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 55,
        ),
        const Text('Главная', style: AppTextStyle.default20w700),
        const SizedBox(
          height: 26,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.35), blurRadius: 14),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
            width: double.infinity,
            child: ListTile(
              leading: InkWell(
                onLongPress: () {
                  print('Зажали нопку КОРОНЫ');
                },
                onTap: () {
                  print('Нажали кнопку КОРОНЫ');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset(AppImages.crown),
                ),
              ),
              title: const Text('Начните зарабатывать!',
                  style: AppTextStyle.default16w700),
              subtitle: const Text(
                  'Преобретите тариф "Вмете дешевле" и наслаждаться быстрым интрнетом!',
                  style: TextStyle(fontSize: 12)),
            ),
          ),
        ),
        const SizedBox(
          height: 55,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(16),
                right: Radius.circular(16),
              ),
              color: Colors.grey[100],
            ),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 44),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Категории',
                style: AppTextStyle.default18w700,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  CategoryItem(
                    image: AppImages.advertisement,
                    title: 'Реклама',
                    subTitle: '106 компания',
                  ),
                  SizedBox(
                    width: 12.7,
                  ),
                  CategoryItem(
                    image: AppImages.team,
                    title: 'Взаимопиар',
                    subTitle: '39 заявок',
                  ),
                  SizedBox(
                    width: 12.7,
                  ),
                  CategoryItem(
                    image: AppImages.friend,
                    title: 'Бартер',
                    subTitle: '245 заявок',
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Рекламные компании',
                    style: AppTextStyle.default20w700
                        .copyWith(color: Colors.black, wordSpacing: 0),
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 44,
                    height: 22,
                    child: const Text('Все',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.default13_5w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Container(
                height: 100,
                width: 190,
                padding: const EdgeInsets.only(
                    bottom: 18, left: 30, right: 30, top: 18),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 168, 15, 215),
                      blurRadius: 0.35,
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 55, 0, 254),
                      Color.fromARGB(255, 204, 0, 255),
                    ],
                  ),
                ),
                child: Image.asset(AppImages.writing2, scale: 7),
              ),
              Container(
                width: 190,
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 168, 15, 215),
                      blurRadius: 0.35,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: const Text(
                  'В новом обновлении',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.default16w700,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
