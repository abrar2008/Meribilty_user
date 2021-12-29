import 'package:flutter/material.dart';
class Custo extends StatefulWidget {
  const Custo({ Key? key }) : super(key: key);

  @override
  _CustoState createState() => _CustoState();
}

class _CustoState extends State<Custo> {
   bool isChecked = false;
  bool isVisiable = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
                   
  activeColor: const Color(0xFFE2E1E8),
  checkColor: Colors.white,
   value: isChecked,
   onChanged: (value) {
    setState(() {
     isChecked = value!;
      isVisiable = value;
                      });
                    },
                  ),
    );
  }
}