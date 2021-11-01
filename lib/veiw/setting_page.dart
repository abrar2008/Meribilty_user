import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:meribilty/veiw/MyAccount.dart';
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
        backgroundColor: const Color(0xFF2F4D84),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 50,
                color: const Color(0xFF2F4D84),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.se,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Myaccoutn()));
                },
                child: const GFListTile(
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
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                  titleText: AppLocalizations.of(context)!.se,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                  titleText: AppLocalizations.of(context)!.la,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              const SizedBox(
                height: 20,
              ),
              GFListTile(
                  titleText: AppLocalizations.of(context)!.cac,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                  titleText: AppLocalizations.of(context)!.te,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                  titleText: AppLocalizations.of(context)!.con,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GFButton(
                  onPressed: () {},
                  text: AppLocalizations.of(context)!.log,
                  textStyle: const TextStyle(
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
    );
  }
}
