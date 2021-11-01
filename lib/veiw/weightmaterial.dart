import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/veiw/Portlogistics.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Weightmaterial extends StatefulWidget {
  const Weightmaterial({Key? key}) : super(key: key);

  @override
  _WeightmaterialState createState() => _WeightmaterialState();
}

class _WeightmaterialState extends State<Weightmaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        renderPanelSheet: false,
        minHeight: 300,
        panel: _floatingPanel(context),

        // panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: Container(
          color: const Color(0xffF8F8F8),
        ),
      ),
      bottomNavigationBar: Container(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        child: GFButton(
          size: 60,
          color: const Color(0xFF2F4D84),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Portlogistics(),
                ));
          },
          text: "Save & Continue",
          type: GFButtonType.solid,
          textStyle: const TextStyle(fontSize: 20),
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
      ),
    );
  }
}

Widget _floatingPanel(context) {
  return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 40.0,
              color: Colors.black12,
            ),
          ]),
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "How much material weights",
            style: TextStyle(
                color: Color(0xFF2F4D84),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset("assets/arrow.png"),
          SizedBox(
            height: 90,
            child: GFListTile(
              title: Center(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1 - 3 Tons",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: GFListTile(
              color: const Color(0xFF2F4D84),
              title: Center(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "3 - 5 Tons",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const GFListTile(
            title: Center(
              child: Text(
                "5 - 7 Tons",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      )));
}
