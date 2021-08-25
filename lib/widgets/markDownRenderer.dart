import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkDownRenderer extends StatelessWidget {
  final String fileName;
  MarkDownRenderer({
    Key? key,
    required this.fileName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: largePadding),
      child: FutureBuilder(
        future: Future.delayed(Duration(milliseconds: 150)).then(
          (value) {
            return rootBundle.loadString(fileName);
          },
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data.toString(),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
