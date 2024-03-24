import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

CustomScrollView issuesView(BuildContext context) {
  var testCard =
      issueCard("FloatingAB not working.", "Reposight", IssueStatus.open, "#1");
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        backgroundColor: Colors.black,
        pinned: true,
        expandedHeight: 130,
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
              // height: 400,
              // padding: EdgeInsets.only(left: 230),
              // child: Container(
              //   padding: EdgeInsets.all(0),
              //   child: SvgPicture.network(
              //     "https://www.svgrepo.com/show/159891/circuit.svg",
              //     color: Colors.lightGreen,
              //     fit: BoxFit.cover,
              //     placeholderBuilder: (BuildContext context) => Container(
              //       padding: const EdgeInsets.all(20.0),
              //       child: const CircularProgressIndicator(),
              //     ),
              // ),
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
          alignment: Alignment.center,
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 24),
          ),
        ),
        initialItemCount: 50,
      ),
    ],
    physics: BouncingScrollPhysics(),
  );
}

Card issueCard(
    String issueName, String issueRepo, IssueStatus status, String issueNum,
    {bool isSelected = false}) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
            color: Colors.white,
            strokeAlign: BorderSide.strokeAlignOutside,
            style: BorderStyle.solid,
            width: 5)),
  );
}

enum IssueStatus { open, closed }
