import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/screens/main/components/cv_view.dart';

import 'package:url_launcher/url_launcher.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Country:",
                      text: "Pakistan",
                    ),
                    AreaInfoText(
                      title: "Email: ",
                      text: "ahmedkhushalkhan@gmail.com",
                    ),
                    AreaInfoText(
                      title: "Contact: ",
                      text: "0333-1122934",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    ElevatedButton.icon(
                      label: Text('View Resume'),
                      icon: Icon(Icons.image),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PDF()));
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color.fromARGB(255, 36, 44, 46),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launch(
                                  'https://www.linkedin.com/in/khushal-khan-441305241/');
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                              color: Color.fromARGB(255, 17, 109, 213),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              launch('https://twitter.com/KHUSHAL__khan');
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              color: Color.fromARGB(255, 17, 109, 213),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
