import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  ErrorDialog({
    Key key,
    @required this.title,
    this.description,
    this.icon,
    this.buttons,
  }) : super(key: key);
  final String title;
  final String description;
  final Icon icon;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_infoIcon, _title, _space, _description, _buttons],
    );
  }

  List<Widget> get _buttonExpanded {
    List<Widget> _expanded = new List<Widget>();
    this.buttons.forEach(
          (widget) => _expanded.add(_subListExpandedWidget(widget)),
        );
    return _expanded;
  }

  Widget _subListExpandedWidget(Widget widget) => Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: widget,
        ),
      );

  Widget get _buttons => buttons == null
      ? UIHelper.verticalSpace(height: 10)
      : Row(
          children: _buttonExpanded,
        );

  Widget get _title => Text(
        this.title,
        style: UIHelper.titleTextStyle,
      );
  Widget get _description => Text(
        this.description ?? "",
        textAlign: TextAlign.center,
        style: UIHelper.descriptionTextStyle,
      );
  Widget get _infoIcon =>
      this.icon ??
      Icon(
        Icons.close,
        color: Colors.red,
        size: UIHelper.ICON_SIZE,
      );
  Widget get _space => UIHelper.verticalSpace(height: 10);
}
