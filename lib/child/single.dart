import 'package:dialog_app/helper/consts.dart';
import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class SingleDialog extends StatelessWidget {
  SingleDialog(
      {Key key, @required this.title, this.description, @required this.type})
      : super(key: key);
  final String title;
  final String description;
  final DialogType type;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        type == DialogType.loading
            ? CircularProgressIndicator()
            : Icon(
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
