import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      color: Colors.black,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          LinkText(text:'Abut'),
          LinkText(text:'Help center'),
          LinkText(text:'Termns of service'),
          LinkText(text:'Privacy Policy'),
          LinkText(text:'Cookie Policy'),
          LinkText(text:'Ads info'),
          LinkText(text:'Blog'),
          LinkText(text:'Status'),
          LinkText(text:'Careers'),
          LinkText(text:'Brand resourses'),
          LinkText(text:'Advertising'),
          LinkText(text:'Marketing'),
        ],
      )
    );
  }
}