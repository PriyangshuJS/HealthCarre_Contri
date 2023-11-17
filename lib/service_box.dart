import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardF(text: "General Care", image: "assets/s1.png"),
            CardF(text: "Covid Care", image: "assets/s2.png"),
            CardF(text: "Elder Care", image: "assets/s3.png")
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardF(text: "ICU at HOME", image: "assets/s4.png"),
            CardF(text: "Vaccination", image: "assets/s5.png"),
            CardF(text: "Diagnosis", image: "assets/s6.png")
          ],
        )
      ],
    );
  }
}

class CardF extends StatelessWidget {
  final String text;
  String image;

  CardF({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 7,
      margin: const EdgeInsets.symmetric(
        horizontal: 1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.end, // Align text at the bottom
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            text,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 48, 92),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
