// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class StatusTileWidget extends StatelessWidget {
  final Image icon;
  final String label;
  final int value;
  final Size size;

  const StatusTileWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .7,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          width: 46,
          child: CircleAvatar(
            radius: 46,
            backgroundColor: context.colors.grey,
            child: icon,
          ),
        ),
        title: Text(
          label,
          style: context.textStyles.textPrimaryFontRegular.copyWith(
            color: Colors.white,
          ),
        ),
        trailing: Text(
          '$value',
          style: context.textStyles.textPrimaryFontMedium.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
