import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../extensions/extensions.dart';

// ignore: must_be_immutable
class CustomBottomSheet extends StatelessWidget {
  late ThemeData themeData;
  final List<String> listData;

  CustomBottomSheet({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    return ListView(
      children: [
        SizedBox(height: 8),
        getHeader(context),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            crossAxisCount: 3,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: listData.length,
            itemBuilder: (_, index) {
              return _typeView(context, listData[index]);
            },
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(1, 0.6),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
        ),
        SizedBox(height: 50),
      ],
    ).bottomSheetBackground();
  }

  Widget getHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Model',
            style: themeData.textTheme.headline6,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(null),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: themeData.disabledColor.withOpacity(0.1),
              child: Icon(Icons.clear, color: themeData.disabledColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _typeView(BuildContext context, String value) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(value),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(color: themeData.disabledColor),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: themeData.textTheme.bodyText2,
          ),
        ),
      ),
    );
  }
}
