import 'package:flutter/material.dart';

import '../core/app_text_styles.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text('Loading articles…', style: AppTextStyles.bodyRegular),
        ],
      ),
    );
  }
}
