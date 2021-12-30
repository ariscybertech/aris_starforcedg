import 'package:dialog_app/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class InputsDialog extends StatelessWidget {
  InputsDialog({
    Key key,
    @required this.title,
    this.description,
    this.icon,
    @required this.inputs,
    this.buttons,
  }) : super(key: key);
  final String title;
  final String description;
  final Icon icon;
  final List<RaisedButton> buttons;
  final List<TextField> inputs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _infoIcon,
        _title,
        _space,
        _description,
        _buttons,
        _inputs
      ],
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
          padding: EdgeInsets.symmetric(horizontal: UIHelper.padding),
          child: widget,
        ),
      );

  Widget get _buttons => buttons == null
      ? UIHelper.verticalSpace(height: UIHelper.padding)
      : Row(
          children: _buttonExpanded,
        );

  Widget get _title => Text(
        this.title,
        style: UIHelper.titleTextStyle,
      );

  Widget get _inputs => Wrap(
        runSpacing: UIHelper.padding,
        children: inputs,
      );

  Widget get _description => Text(
        this.description ?? "",
        textAlign: TextAlign.center,
        style: UIHelper.descriptionTextStyle,
      );

  // Widget get _buttons => this.buttons ?? UIHelper.verticalSpace(height: 10);
  Widget get _infoIcon => this.icon ?? UIHelper.verticalSpace(height: 10);
  Widget get _space => UIHelper.verticalSpace(height: 10);
}
