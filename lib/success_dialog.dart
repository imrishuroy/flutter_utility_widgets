import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final Color primaryColor;
  final String title;
  final String content;

  const SuccessDialog({
    super.key,
    required this.primaryColor,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? _showIOSDialog(context)
        : _showAndroidDialog(context);
  }

  CupertinoAlertDialog _showIOSDialog(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20.0),
          const CircleAvatar(
            radius: 45.0,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          const SizedBox(height: 35.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            content,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 60.0),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              height: 40.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: primaryColor,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  'OKAY',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  AlertDialog _showAndroidDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20.0),
          const CircleAvatar(
            radius: 45.0,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          const SizedBox(height: 35.0),
          const Text(
            'Successful',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Profile succuessfully updated',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 60.0),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              height: 40.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: primaryColor,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  'OKAY',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
