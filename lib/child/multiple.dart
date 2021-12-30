import 'package:dialog_app/helper/consts.dart';
import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class MultipleDialog extends StatelessWidget {
  MultipleDialog(
      {Key key,
      @required this.title,
      this.description,
      @required this.type,
      this.buttons,
      this.textField})
      : super(key: key);
  String title;
  String description;
  DialogType type;
  List<RaisedButton> buttons;
  TextField textField;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          _iconType,
          size: 60,
          color: Colors.blue,
        ),
        UIHelper.verticalSpace(height: 10),
        Text(
          this.title,
          style: UIHelper.titleTextStyle,
        ),
        UIHelper.verticalSpace(height: 10),
        Text(
          this.description ?? "",
          textAlign: TextAlign.center,
          style: UIHelper.descriptionTextStyle,
        ),
        UIHelper.verticalSpace(),
        textField ?? UIHelper.verticalSpace(height: 0),
        Wrap(
          spacing: UIHelper.padding,
          children: [buttons ?? UIHelper.verticalSpace(height: 0)],
        )
      ],
    );
  }

  IconData get _iconType {
    switch (this.type) {
      case DialogType.info:
        return Icons.info;
      case DialogType.error:
        return Icons.error;
      case DialogType.success:
        return Icons.check;
      default:
        return Icons.help;
    }
  }
}
