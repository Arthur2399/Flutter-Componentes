import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imageUrl, this.title})
      : super(key: key);

  final String imageUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/the_offices_logo.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (title != null)
            Container(
                alignment: AlignmentDirectional.bottomEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(title!)),
        ],
      ),
    );
  }
}
