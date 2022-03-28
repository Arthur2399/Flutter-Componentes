import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/01/the-office.jpg?fit=2000%2C1333&ssl=1',
              title: 'Michael Scott',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://www.cinemascomics.com/wp-content/uploads/2021/10/the-office-escena-mas-graciosa-reparto.jpg',
              title: 'Diwght y Jim',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://fotografias.antena3.com/clipping/cmsimages02/2020/09/08/7363947A-17CC-4C1D-8BDB-552F10D9BBF3/98.jpg',
            ),
            SizedBox(height: 30),
          ],
        ));
  }
}
