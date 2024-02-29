import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class OpenContainers extends StatefulWidget {
  final Widget closedWidget;
  final Widget openedWidget;

  const OpenContainers(
      {required this.closedWidget, required this.openedWidget, super.key});

  @override
  State<OpenContainers> createState() => _OpenContainersState();
}

class _OpenContainersState extends State<OpenContainers> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      transitionDuration: const Duration(milliseconds: 500),
      closedColor: Colors.transparent,
      openColor: Colors.transparent,
      closedBuilder: (BuildContext context, void Function() action) {
        return widget.closedWidget;
      },
      openBuilder:
          (BuildContext context, void Function({Object? returnValue}) action) {
        return widget.openedWidget;
      },
    );
  }
}
