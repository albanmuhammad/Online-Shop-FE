import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class LoadingButonn extends StatelessWidget {
  LoadingButonn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation(primaryTextColor),
                )),
            SizedBox(
              width: 4,
            ),
            Text(
              'loading',
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
