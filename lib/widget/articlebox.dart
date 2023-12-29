import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 8,
              offset: Offset(4, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section (Assuming you have an Image widget)
            Container(
              height: MediaQuery.of(context).size.height /
                  8, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/img1.png'),
                  fit: BoxFit.cover, // Adjust the BoxFit as needed
                ),
              ),
            ),

            Text(
              'Short Text',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Pellentesque ac ligula in urna facilisis feugiat nec nec justo. '
                'Vivamus ut bibendum eros. Integer euismod lectus vel semper accumsan.',
                maxLines: 2, // Adjust the maxLines as needed
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
