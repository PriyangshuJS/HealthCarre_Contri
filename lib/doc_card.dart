import 'package:flutter/material.dart';

class DocCard extends StatelessWidget {
  const DocCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        children: [
          ListTile(
            //leading: CircleAvatar(),
            title: const Text(
              'Magazine Name',
              //style: TextStyle(fontSize: 20),
            ),
            trailing: const Text(
              '\$50',
              //style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              "Helo",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(MediaQuery.of(context).size.width, 56)),
              child: const Text(
                'Add to cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
