import 'package:flutter/material.dart';

class InformationScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.grey,
      child: Stack(
        children: [
          ClipPath(
            // clipper: ,
            child: Container(
              height: 300,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(300.0);
}
