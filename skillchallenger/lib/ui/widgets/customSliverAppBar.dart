import 'package:flutter/material.dart';
import 'package:skillchallenger/searchField.dart';
import 'package:skillchallenger/theme.dart';

SliverAppBar CustomSliverAppBar(ThemeData theme) {
  return SliverAppBar(
    toolbarHeight: 70,

    surfaceTintColor: Colors.transparent,
    elevation: 0,
    backgroundColor: primaryColor,
    pinned: true,
    snap: true,
    floating: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0).copyWith(top: 25),
          child: Text(
            "Hi, Daniel !",
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 14, right: 14),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Icon(
                Icons.notification_add,
                color: Colors.white,
                size: 22,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 14, right: 14),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Icon(Icons.exit_to_app, color: Colors.white, size: 22),
            ),
          ],
        ),
      ],
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(68),

      child: searchField(onTap: () {}),
    ),
  );
}
