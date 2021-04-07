import 'package:birel_mobil/components/BirElForm.dart';
import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class VolunteerForm extends BirElForm{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        anInputLine("Adınız", "Soyadınız"),
        anInputLine("Telefon Numaranız", "Mesleğiniz"),
        anInputLine("İliniz", "İlçeniz"),
        getMultilineTextField("Mesajınız"),
        getMultilineTextField("Bize nasıl yardımcı olabilirsiniz?", height: 120)
      ],
    );
  }

  TextField formTextInput(String hintText,  {Widget prefix}) {
    return TextField(decoration: getADecoration(hintText, prefix));
  }

  Widget getMultilineTextField(String hint, {Widget prefix, double height=96}) {
    return Container(
      height: height,
      padding: EdgeInsets.all(12),
      alignment: Alignment.bottomCenter,
      child: TextField(
        decoration: getADecoration(hint, prefix),
        maxLines: null,
      ),
    );
  }

  InputDecoration getADecoration(String hintText, Widget prefix) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: colors.TEXT_GRAY),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.COLOR_ACCENT)),
      prefix: prefix,
    );
  }

  Widget anInputLine(String hint_1, String hint_2, {Widget prefix_1, Widget prefix_2}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(child: formTextInput(hint_1, prefix: prefix_1)),
          SizedBox(
            width: 20,
          ),
          Expanded(child: formTextInput(hint_2, prefix: prefix_2)),
        ],
      ),
    );
  }
}
