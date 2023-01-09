// To parse this JSON data, do
//
//     final dataQueryModel = dataQueryModelFromMap(jsonString);

import 'dart:convert';

DataQueryModel? dataQueryModelFromMap(String str) =>
    DataQueryModel.fromMap(json.decode(str));

String dataQueryModelToMap(DataQueryModel? data) => json.encode(data!.toMap());

class DataQueryModel {
  DataQueryModel({
    required this.meta,
    required this.records,
  });

  final Map<String, dynamic>? meta;
  final List<Record?>? records;

  factory DataQueryModel.fromMap(Map<String, dynamic> json) => DataQueryModel(
        meta: json["meta"],
        records: json["records"] == null
            ? []
            : json["records"] == null
                ? []
                : List<Record?>.from(
                    json["records"]!.map((x) => Record.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "meta": meta,
        "records": records == null
            ? []
            : records == null
                ? []
                : List<dynamic>.from(records!.map((x) => x!.toMap())),
      };
}

class Meta {
  Meta({
    required this.page,
  });

  final Page? page;

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        page: json["page"],
      );

  Map<String, dynamic> toMap() => {
        "page": page,
      };
}

class Page {
  Page({
    required this.cursor,
    required this.more,
  });

  final String? cursor;
  final bool? more;

  factory Page.fromMap(Map<String, dynamic> json) => Page(
        cursor: json["cursor"],
        more: json["more"],
      );

  Map<String, dynamic> toMap() => {
        "cursor": cursor,
        "more": more,
      };
}

class Record {
  Record({
    required this.gameremail,
    required this.gamerid,
    required this.games,
    required this.id,
    required this.password,
    required this.tokens,
    required this.xata,
  });

  final String? gameremail;
  final String? gamerid;
  final Map<String, dynamic>? games;
  final String? id;
  final String? password;
  final Map<String, dynamic>? tokens;
  final Map<String, dynamic>? xata;

  factory Record.fromMap(Map<String, dynamic> json) => Record(
        gameremail: json["gameremail"],
        gamerid: json["gamerid"],
        games: json["games"],
        id: json["id"],
        password: json["password"],
        tokens: json["tokens"],
        xata: json["xata"],
      );

  Map<String, dynamic> toMap() => {
        "gameremail": gameremail,
        "gamerid": gamerid,
        "games": games,
        "id": id,
        "password": password,
        "tokens": tokens,
        "xata": xata,
      };
}

class Games {
  Games({
    required this.id,
  });

  final String? id;

  factory Games.fromMap(Map<String, dynamic> json) => Games(
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
      };
}

class Xata {
  Xata({
    required this.version,
  });

  final int? version;

  factory Xata.fromMap(Map<String, dynamic> json) => Xata(
        version: json["version"],
      );

  Map<String, dynamic> toMap() => {
        "version": version,
      };
}
