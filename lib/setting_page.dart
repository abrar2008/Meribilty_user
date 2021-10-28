import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:meribilty/MyAccount.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F4D84),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  color: Color(0xFF2F4D84),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          AppLocalizations.of(context)!.se,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Myaccoutn()));
                  },
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundImage: AssetImage("assets/pic1.png"),
                      ),
                      titleText: 'Larry Davis',
                      subTitleText: 'Pro Member',
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black38,
                      )),
                ),
                GFListTile(
                    titleText: AppLocalizations.of(context)!.noto,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                    )),
                GFListTile(
                    titleText: AppLocalizations.of(context)!.se,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                    )),
                GFListTile(
                    titleText: AppLocalizations.of(context)!.la,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                    )),
                SizedBox(
                  height: 20,
                ),
                GFListTile(
                    titleText: AppLocalizations.of(context)!.cac,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                    )),
                GFListTile(
                    titleText: AppLocalizations.of(context)!.te,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                    )),
                GFListTile(
                    titleText: AppLocalizations.of(context)!.con,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: GFButton(
                    onPressed: () {},
                    text: AppLocalizations.of(context)!.log,
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26),
                    fullWidthButton: true,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
