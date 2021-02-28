import 'package:app/components/themed_text.dart';
import 'package:app/global/app_theme.dart';
import 'package:app/models/profiles.dart';
import 'package:app/pages/contractor_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final Profile profile;
  ProfileTile(this.profile);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (c) {
              return ContractorInfoPage(profile);
            }));
          },
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: AppTheme.backgroundLightGray),
          child: Column(
            children: [
              Hero(
                tag: profile.id,
                child: Image.asset(profile.image,
                    height: 250, width: 400, fit: BoxFit.cover),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ThemedText(profile.contract, type: Type.h2),
                      ThemedText(profile.name, type: Type.subtitle)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
