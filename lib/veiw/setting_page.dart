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
                  title: Text(AppLocalizations.of(context)!.noto,
                  style: const TextStyle(
                    fontSize: 17,

                  ),
                  ),
                
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                  title: Text(AppLocalizations.of(context)!.se ,
                   style: const TextStyle(
                    fontSize: 17,

                  ),
                  
                  ),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                  title: Text(AppLocalizations.of(context)!.la ,
                   style: const TextStyle(
                    fontSize: 17,

                  ),
                  
                  ),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              const SizedBox(
                height: 20,
              ),
              GFListTile(

                  title: Text(AppLocalizations.of(context)!.cac ,
                   style: const TextStyle(
                    fontSize: 17,

                  ),
                  
                  ),
                  
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                title: Text(AppLocalizations.of(context)!.te ,
                   style: const TextStyle(
                    fontSize: 17,

                  ),
                  
                  ),
                  
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                  )),
              GFListTile(
                 title: Text(AppLocalizations.of(context)!.con ,
                   style: const TextStyle(
                    fontSize: 17,

                  ),
                  
                  ),
                
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
                      fontSize: 17,
                    
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
