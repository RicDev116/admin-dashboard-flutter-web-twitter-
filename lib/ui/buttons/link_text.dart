import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {

  const LinkText({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Function? onTap;

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {

  bool isOver = false;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(widget.onTap != null){
          widget.onTap!();
        }
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() {
          isOver = true;
        }),
        onExit: (_) => setState(() {
          isOver = false;
        }),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              decoration: isOver?TextDecoration.underline:TextDecoration.none
            ),
          ),
        ),
      ),
    );
  }
}