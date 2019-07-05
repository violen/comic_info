import 'package:comics_info/models/hero_image.dart';
import 'package:comics_info/models/issue.dart';
import 'package:comics_info/models/origin.dart';
import 'package:comics_info/models/publisher.dart';

class Character {
  bool favourite = false;
  
  String aliases;
  String detailUrl; // api_detail_url
  String birth;
  String deck;
  String description;
  String name;
  String realName;
  String siteDetailUrl;
  
  DateTime dateAdded;
  DateTime dateLastUpdated;
  
  int gender;
  int id;
  int countOfIssueAppearances = 0;

  Issue firstAppearedInIssue;

  HeroImage image;

  Origin origin;

  Publisher publisher;

  Character({
    this.aliases, this.detailUrl, this.birth, this.deck, this.description, this.name, this.realName,
    this.siteDetailUrl, this.dateAdded, this.dateLastUpdated, this.gender, this.id, this.countOfIssueAppearances,
    this.firstAppearedInIssue, this.image, this.origin, this.publisher
  });

  

}