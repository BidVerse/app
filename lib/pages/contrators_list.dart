import 'package:app/components/header.dart';
import 'package:app/components/profile_tile.dart';
import 'package:app/components/themed_text.dart';
import 'package:app/global/app_theme.dart';
import 'package:app/models/bid.dart';
import 'package:app/models/profiles.dart';
import 'package:app/pages/contractor_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContractorListPage extends StatefulWidget {
  @override
  _ContractorListPageState createState() => _ContractorListPageState();
}

class _ContractorListPageState extends State<ContractorListPage> {
  final List<Profile> list = [
    new Profile(
        contract: 'Mobile App Development',
        name: 'Jacob Zwang',
        image: 'assets/nooblow.png',
        id: '1',
        description:
            'Nulla do cupidatat non duis officia sit esse sit qui duis voluptate cupidatat ex magna. Proident aute proident minim quis ipsum duis ex nisi. Ea proident cupidatat duis consequat ullamco cupidatat in dolor quis id veniam reprehenderit duis. Proident elit culpa dolor enim esse et do non irure ad nisi velit excepteur. Non culpa mollit consectetur aliquip duis nostrud qui est magna id.',
        bio:
            'Tempor sint proident mollit enim incididunt ex. Aliquip duis in ullamco eu consequat.',
        bids: [
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
        ]),
    new Profile(
        contract: 'Modern Logo Design - Illustrator',
        name: 'Ben Swerdlow',
        image: 'assets/logo.png',
        id: '2',
        description:
            'Nulla do cupidatat non duis officia sit esse sit qui duis voluptate cupidatat ex magna. Proident aute proident minim quis ipsum duis ex nisi. Ea proident cupidatat duis consequat ullamco cupidatat in dolor quis id veniam reprehenderit duis. Proident elit culpa dolor enim esse et do non irure ad nisi velit excepteur. Non culpa mollit consectetur aliquip duis nostrud qui est magna id.',
        bio:
            'Tempor sint proident mollit enim incididunt ex. Aliquip duis in ullamco eu consequat.',
        bids: [
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
        ]),
    new Profile(
        contract: 'Project/Pipeline Management',
        name: 'Jason Telanoff',
        image: 'assets/logo.png',
        id: '3',
        description:
            'Nulla do cupidatat non duis officia sit esse sit qui duis voluptate cupidatat ex magna. Proident aute proident minim quis ipsum duis ex nisi. Ea proident cupidatat duis consequat ullamco cupidatat in dolor quis id veniam reprehenderit duis. Proident elit culpa dolor enim esse et do non irure ad nisi velit excepteur. Non culpa mollit consectetur aliquip duis nostrud qui est magna id.',
        bio:
            'Tempor sint proident mollit enim incididunt ex. Aliquip duis in ullamco eu consequat.',
        bids: [
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
        ]),
    new Profile(
        contract: 'Perl Development',
        name: 'Ethan Hopkins',
        image: 'assets/logo.png',
        id: '4',
        description:
            'Nulla do cupidatat non duis officia sit esse sit qui duis voluptate cupidatat ex magna. Proident aute proident minim quis ipsum duis ex nisi. Ea proident cupidatat duis consequat ullamco cupidatat in dolor quis id veniam reprehenderit duis. Proident elit culpa dolor enim esse et do non irure ad nisi velit excepteur. Non culpa mollit consectetur aliquip duis nostrud qui est magna id.',
        bio:
            'Tempor sint proident mollit enim incididunt ex. Aliquip duis in ullamco eu consequat.',
        bids: [
          new Bid(amount: 100, name: 'Benjamin Swerdlow'),
        ]),
  ];
  List<Profile> listShow;

  @override
  void initState() {
    listShow = list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: CustomScrollView(slivers: [
          CupertinoSliverNavigationBar(
              automaticallyImplyLeading: false,
              largeTitle: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: CupertinoSearchTextField(
                  onChanged: (v) => search(v.toLowerCase()),
                ),
              ),
              middle: ThemedText('BidVerse', type: Type.h1)),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (c, i) => ProfileTile(listShow[i]),
                  childCount: listShow.length)),
        ]),
      ),
    );
  }

  void search(String str) {
    listShow = [];
    list.forEach((p) {
      if (p.name.toLowerCase().contains(str) ||
          p.contract.toLowerCase().contains(str)) listShow.add(p);
    });
    setState(() => listShow = listShow);
  }
}
