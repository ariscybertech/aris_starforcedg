import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  LoadingDialog({
    Key key,
    @required this.title,
    this.description,
    this.icon,
  }) : super(key: key);
  final String title;
  final String description;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _loading,
        _title,
        _space,
        _description,
      ],
    );
  }

  Widget get _title => Text(
        this.title,
        style: UIHelper.titleTextStyle,
      );
  Widget get _description => Text(
        this.description ?? "",
        textAlign: TextAlign.center,
        style: UIHelper.descriptionTextStyle,
      );
  Widget get _loading => CircularProgressIndicator();
  Widget get _infoIcon =>
      this.icon ??
      Icon(
        Icons.data_usage,
        size: UIHelper.ICON_SIZE,
        color: Colors.blue,
      );
  Widget get _space => UIHelper.verticalSpace(height: 10);
}
