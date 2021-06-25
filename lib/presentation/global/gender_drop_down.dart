import 'package:flutter/material.dart';

import 'global.dart';
import 'icon/arrow_down_icon.dart';

class GenderDropDown extends StatefulWidget {
  /// Title that will be displayed initially. Will be overriden by the chosen element's title.
  final String title;

  /// List of all DropDownElement for this DropDown.
  final List<DropDownElement> items;

  /// The main icon for the Dropdown. Shown by default. Can be overriden by the chosen element's icon if it is not null.
  final Widget? icon;

  /// Function that should be called when the user selects an element from the DropDown. The chosen element is passed to this function on User's tap.
  final void Function(DropDownElement?) onMatch;

  /// Function that will be called if the user dismisses the element previously chosen.
  final VoidCallback onReset;

  /// A property that will be used to show or hide border and if border is shown, the background will be transparent.
  final bool headerBorder;

  /// Creates a themed DropDown for your App. See all the parameters for further documentation.
  const GenderDropDown({
    required this.title,
    required this.items,
    this.icon,
    required this.onMatch,
    required this.onReset,
    this.headerBorder = false,
  });

  @override
  _GenderDropDownState createState() => _GenderDropDownState();
}

class _GenderDropDownState extends State<GenderDropDown> {
  DropDownElement? choice;
  double height = 50;
  double borderHeight = 0;
  BorderRadius borderRadius = BorderRadius.circular(8);
  late ThemeData theme;
  late TextTheme textTheme;
  final int duration = 200;
  late Widget headerIcon;

  @override
  void initState() {
    headerIcon = GenderIcon(
      iconColor: Color(0xFF1E1E2A).withOpacity(0.8),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    textTheme = theme.textTheme;

    return AnimatedContainer(
      duration: Duration(milliseconds: duration),
      curve: Curves.easeIn,
      height: height,
      color: Colors.white,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AnimatedContainer(
              duration: Duration(milliseconds: duration),
              height: height,
              child: Scrollbar(
                isAlwaysShown: false,
                child: SingleChildScrollView(
                  child: _getItems(),
                ),
              ),
            ),
          ),
          _header(),
        ],
      ),
    );
  }

  Widget _getItems() {
    SizedBox _itemIcon(int index) => SizedBox(
      height: 30,
      width: 30,
      child: FittedBox(
        child: Padding(
          padding: EdgeInsets.all(7),
          child: widget.items[index].icon ?? Container(),
        ),
      ),
    );

    Text _itemText(int index) => Text(
      widget.items[index].name,
      style: textTheme.bodyText1!.copyWith(
        color: theme.indicatorColor.withOpacity(0.7),
        fontSize: 17,
      ),
    );

    Container _itemView(int index) => Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: theme.indicatorColor.withOpacity(0.05),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          _itemIcon(index),
          SizedBox(width: 23),
          _itemText(index),
          new Spacer(),
        ],
      ),
    );

    return Column(
      children: [
        SizedBox(height: 50),
        for (int index = 0; index < widget.items.length; index++)
          InkWell(
            onTap: () {
              setState(() {
                height = 50;
                borderRadius = BorderRadius.circular(8);
                borderHeight = 0;
                choice = widget.items[index];
              });
              widget.onMatch(widget.items[index]);
            },
            child: _itemView(index),
          ),
      ],
    );
  }

  Widget _header() {
    SizedBox _labelIcon = SizedBox(
      height: 30,
      width: 30,
      child: FittedBox(
        child: (choice == null) ? widget.icon : (choice!.icon ?? widget.icon),
      ),
    );

    Widget _label = Text(
      (choice == null) ? (widget.title) : (choice!.name),
      style: textTheme.bodyText1!.copyWith(
        color: theme.indicatorColor.withOpacity(0.7),
        fontSize: 17,
      ),
    );

    Widget dropdownIcon = (choice == null)
        ? ArrowDownIcon(
            iconColor: theme.indicatorColor.withOpacity(0.8),
          )
        : FittedBox(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      Icons.restart_alt,
                      color: theme.errorColor,
                    ),
                    onPressed: () {
                      setState(() {
                        choice = null;
                      });
                      widget.onReset();
                    },
                  ),
                ),
              ),
            ),
          );

    Container labelRow = Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: widget.headerBorder ? Colors.transparent : theme.indicatorColor.withOpacity(0.1),
        border: widget.headerBorder ? Border.all(color: theme.indicatorColor.withOpacity(0.1)) : Border(),

      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          _labelIcon,
          SizedBox(width: 23),
          _label,
          new Spacer(),
          dropdownIcon,
          (choice == null) ? SizedBox(width: 15) : SizedBox.shrink(),
        ],
      ),
    );

    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (height == 50) {
                height = 200;
                borderRadius = BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                );
                borderHeight = 1;
              } else {
                height = 50;
                borderRadius = BorderRadius.circular(8);
                borderHeight = 0;
              }
            });
          },
          child: labelRow,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: duration),
          height: borderHeight,
          color: theme.indicatorColor.withOpacity(0.1),
        ),
      ],
    );
  }
}

class DropDownElement {
  String name;
  int id;
  Widget? icon;

  DropDownElement({required this.name, required this.id, this.icon});
}
