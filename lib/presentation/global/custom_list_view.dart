import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyWidget<T> extends StatefulWidget {
  @override
  _MyWidgetState<T> createState() => _MyWidgetState<T>();
}

class _MyWidgetState<T> extends State<MyWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  myMethod<T>() {

  }
}

// class CustomListView extends StatelessWidget {
//
// }
// class CustomListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//
//     return SmartRefresher(
//       enablePullDown: true,
//       enablePullUp: true,
//       header: ClassicHeader(
//         completeIcon: Icon(Icons.done, color: theme.primaryColor),
//         failedIcon: Icon(Icons.error, color: theme.errorColor),
//         textStyle: theme.textTheme.bodyText2.copyWith(
//           color: theme.primaryColor,
//         ),
//       ),
//       footer: RefreshFooter(),
//       controller: _refreshController,
//       onRefresh: _onRefresh,
//       onLoading: _onLoading,
//       child: _getList(),
//     );
//   }
//
// }