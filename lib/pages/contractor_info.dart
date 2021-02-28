import 'package:app/components/spaced_row.dart';
import 'package:app/components/themed_text.dart';
import 'package:app/models/profiles.dart';
import 'package:flutter/material.dart';

class ContractorInfoPage extends StatefulWidget {
  final Profile profile;
  ContractorInfoPage(this.profile);

  @override
  _ContractorInfoPageState createState() => _ContractorInfoPageState();
}

class _ContractorInfoPageState extends State<ContractorInfoPage> {
  double bottom;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bottom = -1000;
    comeup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.profile.id,
          child: Image.asset(widget.profile.image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
        ),
        AppBar(backgroundColor: Colors.transparent),
        AnimatedPositioned(
            width: MediaQuery.of(context).size.width,
            bottom: bottom,
            duration: Duration(milliseconds: 300),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    color: Colors.white,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: ThemedText(widget.profile.contract,
                              type: Type.h2),
                        ),
                        Column(
                            children: List.generate(
                                widget.profile.bids.length,
                                (i) => SpacedRow(
                                    ThemedText(widget.profile.bids[i].name),
                                    ThemedText(widget.profile.bids[i].amount
                                        .toString()))))
                      ],
                    )),
              ),
            ))
      ],
    ));
  }

  void comeup() async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      bottom = 0;
    });
  }
}
