import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/citymovement.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnLoadingOption extends StatefulWidget {
  const UnLoadingOption({Key? key}) : super(key: key);

  @override
  _UnLoadingOptionState createState() => _UnLoadingOptionState();
}

class _UnLoadingOptionState extends State<UnLoadingOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        renderPanelSheet: false,
        minHeight: 300,
        panel: _floatingPanel(context),
        // panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GFButton(
              size: 60,
              color: const Color(0xFF2F4D84),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Citymovement_screen()),
                );
              },
              child: Text(
                AppLocalizations.of(context)!.save,
                style: const TextStyle(fontSize: 17),
              ),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _floatingPanel(context) {
  final provider = Provider.of<LocaleProvider>(context);
  var number = 10;
  return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(194.0),
            topRight: Radius.circular(194.0),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]),
      margin: const EdgeInsets.all(10.0),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_arrow_left_rounded,
                color: Colors.black,
                size: 45,
              ),
            ),
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.unloading,
                  style: const TextStyle(
                    color: Color(0xFF2F4D84),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    color: Colors.white,
                    child: Center(child: Image.asset("assets/arrow.png"))),
                GFListTile(
                    avatar: const GFAvatar(
                      backgroundImage: AssetImage("assets/truk.png"),
                      shape: GFAvatarShape.square,
                      size: 40,
                    ),
                    titleText: 'Labor',
                    subTitleText: 'Rs 1000 per hour/Minimum',
                    icon: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: InkWell(
                                onTap: () {
                                  provider.increasement();
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    )),
                Container(
                  color: const Color(0xFF2F4D84),
                  child: GFListTile(
                      avatar: const GFAvatar(
                        foregroundColor: Color(0xFF2F4D84),
                        backgroundImage: AssetImage(
                          "assets/Path.png",
                        ),
                        shape: GFAvatarShape.square,
                      ),
                      title: const Text(
                        "Crane",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: const Text(
                        "Rs 1000 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      icon: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "1",
                                style: TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rs 1000 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                ),
                Container(
                  color: const Color(0xFF2F4D84),
                  child: GFListTile(
                      avatar: const GFAvatar(
                        foregroundColor: Color(0xFF2F4D84),
                        backgroundImage: AssetImage(
                          "assets/Path.png",
                        ),
                        shape: GFAvatarShape.square,
                      ),
                      title: const Text(
                        "Crane",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: const Text(
                        "Rs 1000 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      icon: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "1",
                                style: TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rs 1000 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                ),
                Container(
                  color: const Color(0xFF2F4D84),
                  child: GFListTile(
                      avatar: const GFAvatar(
                        foregroundColor: Color(0xFF2F4D84),
                        backgroundImage: AssetImage(
                          "assets/Path.png",
                        ),
                        shape: GFAvatarShape.square,
                      ),
                      title: const Text(
                        "Crane",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: const Text(
                        "Rs 1000 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      icon: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "1",
                                style: TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Rs 1000 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                ),
                GFListTile(
                    avatar: const GFAvatar(
                      backgroundImage: AssetImage("assets/truk.png"),
                      shape: GFAvatarShape.square,
                      size: 40,
                    ),
                    titleText: 'Labor',
                    subTitleText: 'Rs 1000 per hour/Minimum',
                    icon: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    )),
              ],
            ),
          )));
}
