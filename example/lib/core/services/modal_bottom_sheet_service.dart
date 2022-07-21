import 'package:flutter/material.dart';

import 'service.dart';

/// Service for modal bottom sheets that uses root [BuildContext].
///
/// Also supports nested context.
///
/// Has fix for keyboard focus when modal sheet is opened.
///
/// You can provide additional parameters to differ modal sheet logic.
class ModalBottomSheetService extends Service {
  ModalBottomSheetService(GlobalKey<NavigatorState> key) : super(key);

  /// Opens modal bottom sheet with provided content.
  ///
  /// [nestedContext] - need to be provided if you want to open modal sheet
  /// in the root navigator.
  Future<void> showBottomSheet(
    Widget content, {
    BuildContext? nestedContext,
    bool isScrollControlled = true,
    bool isDismissible = true,
    bool enableDrag = true,
    bool hasBarrierColor = true,
    Color? backgroundColor,
  }) {
    final context = nestedContext ?? key.currentContext!;
    return showModalBottomSheet(
      context: context,
      elevation: 0,
      barrierColor: hasBarrierColor ? Colors.black54 : Colors.transparent,
      backgroundColor: backgroundColor ?? Theme.of(context).backgroundColor,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      // constraints: BoxConstraints(
      //   minWidth: double.infinity,
      //   maxHeight: mediaQuery.size.height -
      //       52 -
      //       mediaQuery.viewPadding.top -
      //       16 -
      //       (nestedContext != null ? 64 : 0),
      // ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: content,
      ),
    );
  }
}
