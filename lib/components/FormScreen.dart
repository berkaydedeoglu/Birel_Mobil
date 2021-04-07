import 'package:birel_mobil/components/BirElForm.dart';
import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class FormScreen extends StatelessWidget {
  final String headerImage;
  final String miniTitle;
  final String title;
  final String buttonText;
  final BirElForm form;
  final String footerImages;

  FormScreen(
      {Key key,
      this.headerImage,
      this.miniTitle,
      this.title,
      this.buttonText,
      this.form,
      this.footerImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.BACKGROUND_GRAY,
      body: Container(
        child: Column(
          children: [
            Stack(alignment: Alignment.centerLeft, children: [
              Image.asset(
                this.headerImage,
                height: 260,
                fit: BoxFit.fill,
              ),

              Positioned(
                left: 12,
                top: 24,
                child: BackButton(color: colors.WHITE,)
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.miniTitle,
                        style: TextStyle(
                            color: colors.ACCENT_TEXT_GRAY,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        this.title,
                        style: TextStyle(
                            color: colors.ACCENT_TEXT_GRAY, fontSize: 36),
                      )
                    ]),
              ),
            ]),
            SingleChildScrollView(child: this.form),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () => {Navigator.pop(context)},
              color: colors.COLOR_ACCENT,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 48),
                child: Text(
                  this.buttonText,
                  style: TextStyle(color: colors.WHITE),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
            ),
            Image.asset(
              this.footerImages,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
