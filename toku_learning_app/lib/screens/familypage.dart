import 'package:flutter/material.dart';
import 'package:toku_learning_app/components/familyittems.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/family.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Family> family = [
      Family(
        jpname: 'Chichioya',
        image: 'assets/images/familyMembers/father.png',
        enname: 'father',
        sound: 'sounds/family_members/father.wav',
      ),
      Family(
        jpname: 'Hahaoya',
        image: 'assets/images/familyMembers/mother.png',
        enname: 'mother',
        sound: 'sounds/family_members/mother.wav',
      ),
      Family(
        jpname: 'son',
        image: 'assets/images/familyMembers/son.png',
        enname: 'Musuko',
        sound: 'sounds/family_members/son.wav',
      ),
      Family(
        jpname: 'daughter',
        image: 'assets/images/familyMembers/daughter.png',
        enname: 'Musume',
        sound: 'sounds/family_members/daughter.wav',
      ),
      Family(
        jpname: 'older brother',
        image: 'assets/images/familyMembers/olderbrother.png',
        enname: 'Ani',
        sound: 'sounds/family_members/olderbrother.wav',
      ),
      Family(
        jpname: 'older sister',
        image: 'assets/images/familyMembers/olderbrother.png',
        enname: 'Ane',
        sound: 'sounds/family_members/olderbrother.wav',
      ),
      Family(
        jpname: 'younger brother',
        image: 'assets/images/familyMembers/youungerbrother.png',
        enname: 'Otōto',
        sound: 'sounds/family_members/youngerbrother.wav',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: getappbar(),
        body: SingleChildScrollView(child: Column(children: getitems(family))),
      ),
    );
  }

  List<Widget> getitems(List<Family> family) {
    List<Widget> items = [];
    for (var i = 0; i < family.length; i++) {
      items.add(FamilyIttems(family: family[i]));
    }
    return items;
  }

  PreferredSizeWidget getappbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: AppColors.appbarcolor,
        title: Text('family members', style: AppStyle.appstyle),
      ),
    );
  }
}
