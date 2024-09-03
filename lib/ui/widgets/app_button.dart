import 'package:flutter/material.dart';
import 'package:flutter_provider_starter_kit/utils/extensions/num_extension.dart';
import 'package:flutter_provider_starter_kit/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoaderButton extends StatelessWidget {
  const LoaderButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isLoading});

  final void Function()? onTap;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: textStyle16SemiBold,
          ),
          if (isLoading) ...[
            8.horizontalSpace,
            SizedBox(
              height: 24.h,
              width: 24.h,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          ]
        ],
      ),
    );
  }
}
