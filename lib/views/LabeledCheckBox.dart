import 'package:flutter/material.dart';

class LabeledCheckbox extends StatefulWidget {
  final bool? value;
  final String label;
  final bool leadingCheckbox;
  final ValueChanged<bool?>? onChanged;

  const LabeledCheckbox({
    Key? key,
    this.value,
    this.onChanged,
    this.label = '',
    this.leadingCheckbox = true,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LabeledCheckboxState();
}

class _LabeledCheckboxState extends State<LabeledCheckbox> {
  var value = false;

  @override
  void initState() {
    super.initState();
    value = widget.value == true;
  }

  @override
  Widget build(BuildContext context) {
    // Не использую подобною логику внутри build метода , в идеале он должен быть как можно меньше
    var widgets = <Widget>[
      _buildCheckbox(context),
    ];
    if (widget.label.isNotEmpty) {
      if (widget.leadingCheckbox) {
        widgets.add(_buildLabel(context));
      } else {
        widgets.insert(0, _buildLabel(context));
      }
    }
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: () => _onCheckedChanged(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: widgets,
      ),
    );
  }

  Widget _buildCheckbox(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: (v) => _onCheckedChanged(),
    );
  }

  Widget _buildLabel(BuildContext context) {
    var padding = widget.leadingCheckbox
        ? const EdgeInsets.only(right: 8)
        : const EdgeInsets.only(left: 8);

    return Padding(
      padding: padding,
      child: Text(widget.label, style: const TextStyle(fontSize: 18)),
    );
  }

  void _onCheckedChanged() {
    setState(() {
      value = !value;
    });
    if (widget.onChanged != null) {
      widget.onChanged!.call(value);
    }
  }
}
