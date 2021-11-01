import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rating",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFF2F4D84),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
          color: const Color(0xFF2F4D84),
          child: Center(
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Stack(
                    children: const [
                      Positioned(
                        child: GFAvatar(
                          backgroundImage: AssetImage("assets/hum.png"),
                          size: 50,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Gregory Smith",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "652-UKW",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "How is Your experince?",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Your feedback will help impove",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // ignore: avoid_print
                      print(rating);
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      autofocus: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        ),
                        hintText: 'Additional comments',
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: GFButton(
                      onPressed: () {},
                      text: "Submit Reveiw",
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      fullWidthButton: true,
                      color: const Color(0xFF2F4D84),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
