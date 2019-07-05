import 'dart:convert';

import 'package:comics_info/models/hero_image.dart';
import 'package:comics_info/models/issue.dart';
import 'package:comics_info/models/origin.dart';
import 'package:comics_info/models/publisher.dart';

Character characterFromJson(String str) => Character.fromJson(json.decode(str));
String characterToJson(Character char) => json.encode(char.toJson());

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

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'], gender: json['gender'], countOfIssueAppearances: json['count_of_issue_appearances'],
      aliases: json['aliases'], detailUrl: json['api_detail_url'],birth: json['birth'], deck: json['deck'], 
      description: json['description'], name: json['name'], realName: json['real_name'], siteDetailUrl: json['site_detail_url'],
      dateAdded: json['date_added'], dateLastUpdated: json['date_last_updated'], 
      // Objects
      firstAppearedInIssue: json['first_appeared_in_issue'], 
      image: json['image'],
      origin: json['origin'],
      publisher: json['publisher']
    );
  }

  Map<String,dynamic> toJson() => {
    'id': id, 'gender': gender, 'count_of_issue_appearances': countOfIssueAppearances,
    'aliases': aliases, 'api_detail_url': detailUrl, 'birth': birth, 'deck': deck,
    'description': description, 'name': name, 'real_name': realName, 'site_detail_url': siteDetailUrl,
    'date_added': dateAdded, 'date_last_updated': dateLastUpdated,
    // Objects
    'first_appeared_in_issue': firstAppearedInIssue.toJson(),
    'image': image.toJson(),
    'origin': origin.toJson(),
    'publisher': publisher.toJson()
  };

}