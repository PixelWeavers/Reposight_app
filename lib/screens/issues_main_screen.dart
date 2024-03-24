import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

CustomScrollView IssuesView() {
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        backgroundColor: Colors.black,
        pinned: true,
        expandedHeight: 150,
        collapsedHeight: 70,
        floating: true,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding:
              EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
          title: Text(
            "Issues",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 36,
            )),
          ),
          background: Container(
            clipBehavior: Clip.none,
            color: Colors.black,
            child: Expanded(
                child: SvgPicture.asset(
              'assets/icons/circuit.svg',
              colorFilter: ColorFilter.mode(Colors.white38, BlendMode.clear),
            )),
          ),
        ),
      ),
      SliverAnimatedList(
        itemBuilder: (context, index, animation) => Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          margin: EdgeInsets.all(20),
        ),
        initialItemCount: 50,
      )
    ],
    physics: BouncingScrollPhysics(),
  );
}
