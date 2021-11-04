import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class opcionInformatica extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            MaterialButton(
              elevation: 10,
              minWidth: 379,
              height: 174,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "Informática",
                style: TextStyle(color: Colors.black, fontSize: 34.0),
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
