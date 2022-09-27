import 'dart:convert';

SearchModel searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));

String modelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    this.events,
    this.meta,
  });

  List<Event>? events;
  Meta? meta;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "events": List<dynamic>.from(events!.map((x) => x.toJson())),
    "meta": meta!.toJson(),
  };
}

class AccessMethod {
  AccessMethod({
    this.method,
    this.createdAt,
    this.employeeOnly,
  });

  String? method;
  DateTime? createdAt;
  bool? employeeOnly;

  factory AccessMethod.fromJson(Map<String, dynamic> json) => AccessMethod(
    method: json["method"],
    createdAt: DateTime.parse(json["created_at"]),
    employeeOnly: json["employee_only"],
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "created_at": createdAt!.toIso8601String(),
    "employee_only": employeeOnly,
  };
}

class Announcements {
  Announcements();

  factory Announcements.fromJson(Map<String, dynamic> json) => Announcements();

  Map<String, dynamic> toJson() => {};
}

class Performer {
  Performer({
    this.type,
    this.name,
    this.image,
    this.id,
    this.images,
    this.divisions,
    this.hasUpcomingEvents,
    this.primary,
    this.stats,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.homeVenueId,
    this.shortName,
    this.numUpcomingEvents,
    this.colors,
    this.imageLicense,
    this.popularity,
    this.homeTeam,
    this.location,
    this.imageRightsMessage,
    this.awayTeam,
    this.genres,
  });

  PerformerType? type;
  String? name;
  String? image;
  int? id;
  PerformerImages? images;
  List<Division>? divisions;
  bool? hasUpcomingEvents;
  bool? primary;
  PerformerStats? stats;
  List<Taxonomy>? taxonomies;
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  int? homeVenueId;
  String? shortName;
  int? numUpcomingEvents;
  Colors? colors;
  String? imageLicense;
  int? popularity;
  bool? homeTeam;
  Location? location;
  String? imageRightsMessage;
  bool? awayTeam;
  List<Genre>? genres;

  factory Performer.fromJson(Map<String, dynamic> json) => Performer(
    type: performerTypeValues.map![json["type"]],
    name: json["name"],
    image: json["image"],
    id: json["id"],
    images: PerformerImages.fromJson(json["images"]),
    divisions: json["divisions"] == null
        ? null
        : List<Division>.from(
        json["divisions"].map((x) => Division.fromJson(x))),
    hasUpcomingEvents: json["has_upcoming_events"],
    primary: json["primary"] == null ? null : json["primary"],
    stats: PerformerStats.fromJson(json["stats"]),
    taxonomies: List<Taxonomy>.from(
        json["taxonomies"].map((x) => Taxonomy.fromJson(x))),
    imageAttribution: json["image_attribution"],
    url: json["url"],
    score: json["score"].toDouble(),
    slug: json["slug"],
    homeVenueId:
    json["home_venue_id"] == null ? null : json["home_venue_id"],
    shortName: json["short_name"],
    numUpcomingEvents: json["num_upcoming_events"],
    colors: json["colors"] == null ? null : Colors.fromJson(json["colors"]),
    imageLicense: json["image_license"],
    popularity: json["popularity"],
    homeTeam: json["home_team"] == null ? null : json["home_team"],
    location: json["location"] == null
        ? null
        : Location.fromJson(json["location"]),
    imageRightsMessage: json["image_rights_message"],
    awayTeam: json["away_team"] == null ? null : json["away_team"],
    genres: json["genres"] == null
        ? null
        : List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "type": performerTypeValues.reverse[type],
    "name": name,
    "image": image,
    "id": id,
    "images": images!.toJson(),
    "divisions": divisions == null
        ? null
        : List<dynamic>.from(divisions!.map((x) => x.toJson())),
    "has_upcoming_events": hasUpcomingEvents,
    "primary": primary == null ? null : primary,
    "stats": stats!.toJson(),
    "taxonomies": List<dynamic>.from(taxonomies!.map((x) => x.toJson())),
    "image_attribution": imageAttribution,
    "url": url,
    "score": score,
    "slug": slug,
    "home_venue_id": homeVenueId == null ? null : homeVenueId,
    "short_name": shortName,
    "num_upcoming_events": numUpcomingEvents,
    "colors": colors == null ? null : colors!.toJson(),
    "image_license": imageLicense,
    "popularity": popularity,
    "home_team": homeTeam == null ? null : homeTeam,
    "location": location == null ? null : location!.toJson(),
    "image_rights_message": imageRightsMessage,
    "away_team": awayTeam == null ? null : awayTeam,
    "genres": genres == null
        ? null
        : List<dynamic>.from(genres!.map((x) => x.toJson())),
  };
}

class Colors {
  Colors({
    this.all,
    this.iconic,
    this.primary,
  });

  List<String>? all;
  String? iconic;
  List<String>? primary;

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
    all: List<String>.from(json["all"].map((x) => x)),
    iconic: json["iconic"],
    primary: List<String>.from(json["primary"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "all": List<dynamic>.from(all!.map((x) => x)),
    "iconic": iconic,
    "primary": List<dynamic>.from(primary!.map((x) => x)),
  };
}

class Division {
  Division({
    this.taxonomyId,
    this.shortName,
    this.displayName,
    this.displayType,
    this.divisionLevel,
    this.slug,
  });

  int? taxonomyId;
  String? shortName;
  String? displayName;
  String? displayType;
  int? divisionLevel;
  String? slug;

  factory Division.fromJson(Map<String, dynamic> json) => Division(
    taxonomyId: json["taxonomy_id"],
    shortName: json["short_name"] == null ? null : json["short_name"],
    displayName: json["display_name"],
    displayType: json["display_type"],
    divisionLevel: json["division_level"],
    slug: json["slug"] == null ? null : json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "taxonomy_id": taxonomyId,
    "short_name": shortName == null ? null : shortName,
    "display_name": displayName,
    "display_type": displayType,
    "division_level": divisionLevel,
    "slug": slug == null ? null : slug,
  };
}

class Genre {
  Genre({
    this.id,
    this.name,
    this.slug,
    this.primary,
    this.images,
    this.image,
    this.documentSource,
  });

  int? id;
  String? name;
  String? slug;
  bool? primary;
  GenreImages? images;
  String? image;
  DocumentSource? documentSource;

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    primary: json["primary"],
    images: GenreImages.fromJson(json["images"]),
    image: json["image"],
    documentSource: DocumentSource.fromJson(json["document_source"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "primary": primary,
    "images": images!.toJson(),
    "image": image,
    "document_source": documentSource!.toJson(),
  };
}

class DocumentSource {
  DocumentSource({
    this.sourceType,
    this.generationType,
  });

  SourceType? sourceType;
  GenerationType? generationType;

  factory DocumentSource.fromJson(Map<String, dynamic> json) => DocumentSource(
    sourceType: sourceTypeValues.map![json["source_type"]],
    generationType: generationTypeValues.map![json["generation_type"]],
  );

  Map<String, dynamic> toJson() => {
    "source_type": sourceTypeValues.reverse[sourceType],
    "generation_type": generationTypeValues.reverse[generationType],
  };
}

enum GenerationType { FULL }

final generationTypeValues = EnumValues({"FULL": GenerationType.FULL});

enum SourceType { ELASTIC }

final sourceTypeValues = EnumValues({"ELASTIC": SourceType.ELASTIC});

class GenreImages {
  GenreImages({
    this.the1200X525,
    this.the1200X627,
    this.the136X136,
    this.the500700,
    this.the800X320,
    this.banner,
    this.block,
    this.criteo130160,
    this.criteo170235,
    this.criteo205100,
    this.criteo400300,
    this.fb100X72,
    this.fb600315,
    this.huge,
    this.ipadEventModal,
    this.ipadHeader,
    this.ipadMiniExplore,
    this.mongo,
    this.squareMid,
    this.triggitFbAd,
  });

  String? the1200X525;
  String? the1200X627;
  String? the136X136;
  String? the500700;
  String? the800X320;
  String? banner;
  String? block;
  String? criteo130160;
  String? criteo170235;
  String? criteo205100;
  String? criteo400300;
  String? fb100X72;
  String? fb600315;
  String? huge;
  String? ipadEventModal;
  String? ipadHeader;
  String? ipadMiniExplore;
  String? mongo;
  String? squareMid;
  String? triggitFbAd;

  factory GenreImages.fromJson(Map<String, dynamic> json) => GenreImages(
    the1200X525: json["1200x525"],
    the1200X627: json["1200x627"],
    the136X136: json["136x136"],
    the500700: json["500_700"],
    the800X320: json["800x320"],
    banner: json["banner"],
    block: json["block"],
    criteo130160: json["criteo_130_160"],
    criteo170235: json["criteo_170_235"],
    criteo205100: json["criteo_205_100"],
    criteo400300: json["criteo_400_300"],
    fb100X72: json["fb_100x72"],
    fb600315: json["fb_600_315"],
    huge: json["huge"],
    ipadEventModal: json["ipad_event_modal"],
    ipadHeader: json["ipad_header"],
    ipadMiniExplore: json["ipad_mini_explore"],
    mongo: json["mongo"],
    squareMid: json["square_mid"],
    triggitFbAd: json["triggit_fb_ad"],
  );

  Map<String, dynamic> toJson() => {
    "1200x525": the1200X525,
    "1200x627": the1200X627,
    "136x136": the136X136,
    "500_700": the500700,
    "800x320": the800X320,
    "banner": banner,
    "block": block,
    "criteo_130_160": criteo130160,
    "criteo_170_235": criteo170235,
    "criteo_205_100": criteo205100,
    "criteo_400_300": criteo400300,
    "fb_100x72": fb100X72,
    "fb_600_315": fb600315,
    "huge": huge,
    "ipad_event_modal": ipadEventModal,
    "ipad_header": ipadHeader,
    "ipad_mini_explore": ipadMiniExplore,
    "mongo": mongo,
    "square_mid": squareMid,
    "triggit_fb_ad": triggitFbAd,
  };
}

class PerformerImages {
  PerformerImages({
    this.huge,
  });

  String? huge;

  factory PerformerImages.fromJson(Map<String, dynamic> json) =>
      PerformerImages(
        huge: json["huge"],
      );

  Map<String, dynamic> toJson() => {
    "huge": huge,
  };
}

class Location {
  Location({
    this.lat,
    this.lon,
  });

  double? lat;
  double? lon;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lon": lon,
  };
}

class PerformerStats {
  PerformerStats({
    this.eventCount,
  });

  int? eventCount;

  factory PerformerStats.fromJson(Map<String, dynamic> json) => PerformerStats(
    eventCount: json["event_count"],
  );

  Map<String, dynamic> toJson() => {
    "event_count": eventCount,
  };
}

class Taxonomy {
  Taxonomy({
    this.id,
    this.name,
    this.parentId,
    this.documentSource,
    this.rank,
  });

  int? id;
  NameEnum? name;
  int? parentId;
  DocumentSource? documentSource;
  int? rank;

  factory Taxonomy.fromJson(Map<String, dynamic> json) => Taxonomy(
    id: json["id"],
    name: nameEnumValues.map![json["name"]],
    parentId: json["parent_id"] == null ? null : json["parent_id"],
    documentSource: json["document_source"] == null
        ? null
        : DocumentSource.fromJson(json["document_source"]),
    rank: json["rank"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameEnumValues.reverse[name],
    "parent_id": parentId == null ? null : parentId,
    "document_source":
    documentSource == null ? null : documentSource!.toJson(),
    "rank": rank,
  };
}

enum NameEnum { SPORTS, BASEBALL, MLB, CONCERTS, CONCERT }

final nameEnumValues = EnumValues({
  "baseball": NameEnum.BASEBALL,
  "concert": NameEnum.CONCERT,
  "concerts": NameEnum.CONCERTS,
  "mlb": NameEnum.MLB,
  "sports": NameEnum.SPORTS
});

enum PerformerType { MLB, BAND }

final performerTypeValues =
EnumValues({"band": PerformerType.BAND, "mlb": PerformerType.MLB});

class EventStats {
  EventStats({
    this.listingCount,
    this.averagePrice,
    this.lowestPriceGoodDeals,
    this.lowestPrice,
    this.highestPrice,
    this.visibleListingCount,
    this.dqBucketCounts,
    this.medianPrice,
    this.lowestSgBasePrice,
    this.lowestSgBasePriceGoodDeals,
  });

  int? listingCount;
  int? averagePrice;
  int? lowestPriceGoodDeals;
  int? lowestPrice;
  int? highestPrice;
  int? visibleListingCount;
  List<int>? dqBucketCounts;
  int? medianPrice;
  int? lowestSgBasePrice;
  int? lowestSgBasePriceGoodDeals;

  factory EventStats.fromJson(Map<String, dynamic> json) => EventStats(
    listingCount:
    json["listing_count"] == null ? null : json["listing_count"],
    averagePrice:
    json["average_price"] == null ? null : json["average_price"],
    lowestPriceGoodDeals: json["lowest_price_good_deals"] == null
        ? null
        : json["lowest_price_good_deals"],
    lowestPrice: json["lowest_price"] == null ? null : json["lowest_price"],
    highestPrice:
    json["highest_price"] == null ? null : json["highest_price"],
    visibleListingCount: json["visible_listing_count"] == null
        ? null
        : json["visible_listing_count"],
    dqBucketCounts: json["dq_bucket_counts"] == null
        ? null
        : List<int>.from(json["dq_bucket_counts"].map((x) => x)),
    medianPrice: json["median_price"] == null ? null : json["median_price"],
    lowestSgBasePrice: json["lowest_sg_base_price"] == null
        ? null
        : json["lowest_sg_base_price"],
    lowestSgBasePriceGoodDeals:
    json["lowest_sg_base_price_good_deals"] == null
        ? null
        : json["lowest_sg_base_price_good_deals"],
  );

  Map<String, dynamic> toJson() => {
    "listing_count": listingCount == null ? null : listingCount,
    "average_price": averagePrice == null ? null : averagePrice,
    "lowest_price_good_deals":
    lowestPriceGoodDeals == null ? null : lowestPriceGoodDeals,
    "lowest_price": lowestPrice == null ? null : lowestPrice,
    "highest_price": highestPrice == null ? null : highestPrice,
    "visible_listing_count":
    visibleListingCount == null ? null : visibleListingCount,
    "dq_bucket_counts": dqBucketCounts == null
        ? null
        : List<dynamic>.from(dqBucketCounts!.map((x) => x)),
    "median_price": medianPrice == null ? null : medianPrice,
    "lowest_sg_base_price":
    lowestSgBasePrice == null ? null : lowestSgBasePrice,
    "lowest_sg_base_price_good_deals": lowestSgBasePriceGoodDeals == null
        ? null
        : lowestSgBasePriceGoodDeals,
  };
}

enum Status { NORMAL }

final statusValues = EnumValues({"normal": Status.NORMAL});

class Venue {
  Venue({
    this.state,
    this.nameV2,
    this.postalCode,
    this.name,
    this.links,
    this.timezone,
    this.url,
    this.score,
    this.location,
    this.address,
    this.country,
    this.hasUpcomingEvents,
    this.numUpcomingEvents,
    this.city,
    this.slug,
    this.extendedAddress,
    this.id,
    this.popularity,
    this.accessMethod,
    this.metroCode,
    this.capacity,
    this.displayLocation,
  });

  String? state;
  String? nameV2;
  String? postalCode;
  String? name;
  List<dynamic>? links;
  String? timezone;
  String? url;
  double? score;
  Location? location;
  String? address;
  String? country;
  bool? hasUpcomingEvents;
  int? numUpcomingEvents;
  String? city;
  String? slug;
  String? extendedAddress;
  int? id;
  int? popularity;
  AccessMethod? accessMethod;
  int? metroCode;
  int? capacity;
  String? displayLocation;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    state: json["state"],
    nameV2: json["name_v2"],
    postalCode: json["postal_code"],
    name: json["name"],
    links: List<dynamic>.from(json["links"].map((x) => x)),
    timezone: json["timezone"],
    url: json["url"],
    score: json["score"].toDouble(),
    location: Location.fromJson(json["location"]),
    address: json["address"],
    country: json["country"],
    hasUpcomingEvents: json["has_upcoming_events"],
    numUpcomingEvents: json["num_upcoming_events"],
    city: json["city"],
    slug: json["slug"],
    extendedAddress: json["extended_address"],
    id: json["id"],
    popularity: json["popularity"],
    accessMethod: json["access_method"] == null
        ? null
        : AccessMethod.fromJson(json["access_method"]),
    metroCode: json["metro_code"],
    capacity: json["capacity"],
    displayLocation: json["display_location"],
  );

  Map<String, dynamic> toJson() => {
    "state": state,
    "name_v2": nameV2,
    "postal_code": postalCode,
    "name": name,
    "links": List<dynamic>.from(links!.map((x) => x)),
    "timezone": timezone,
    "url": url,
    "score": score,
    "location": location!.toJson(),
    "address": address,
    "country": country,
    "has_upcoming_events": hasUpcomingEvents,
    "num_upcoming_events": numUpcomingEvents,
    "city": city,
    "slug": slug,
    "extended_address": extendedAddress,
    "id": id,
    "popularity": popularity,
    "access_method": accessMethod == null ? null : accessMethod!.toJson(),
    "metro_code": metroCode,
    "capacity": capacity,
    "display_location": displayLocation,
  };
}

class Meta {
  Meta({
    this.total,
    this.took,
    this.page,
    this.perPage,
    this.geolocation,
  });

  int? total;
  int? took;
  int? page;
  int? perPage;
  dynamic geolocation;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    total: json["total"],
    took: json["took"],
    page: json["page"],
    perPage: json["per_page"],
    geolocation: json["geolocation"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "took": took,
    "page": page,
    "per_page": perPage,
    "geolocation": geolocation,
  };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}

class Event {
  Event({
    this.type,
    this.id,
    this.datetimeUtc,
    this.venue,
    this.datetimeTbd,
    this.performers,
    this.isOpen,
    this.links,
    this.datetimeLocal,
    this.timeTbd,
    this.shortTitle,
    this.visibleUntilUtc,
    this.stats,
    this.taxonomies,
    this.url,
    this.score,
    this.announceDate,
    this.createdAt,
    this.dateTbd,
    this.title,
    this.popularity,
    this.description,
    this.status,
    this.accessMethod,
    this.eventPromotion,
    this.announcements,
    this.conditional,
    this.enddatetimeUtc,
    this.themes,
    this.domainInformation,
    this.generalAdmission,
  });

  NameEnum? type;
  int? id;
  DateTime? datetimeUtc;
  Venue? venue;
  bool? datetimeTbd;
  List<Performer>? performers;
  bool? isOpen;
  List<dynamic>? links;
  DateTime? datetimeLocal;
  bool? timeTbd;
  String? shortTitle;
  DateTime? visibleUntilUtc;
  EventStats? stats;
  List<Taxonomy>? taxonomies;
  String? url;
  double? score;
  DateTime? announceDate;
  DateTime? createdAt;
  bool? dateTbd;
  String? title;
  double? popularity;
  String? description;
  Status? status;
  AccessMethod? accessMethod;
  dynamic eventPromotion;
  Announcements? announcements;
  bool? conditional;
  dynamic enddatetimeUtc;
  List<dynamic>? themes;
  List<dynamic>? domainInformation;
  bool? generalAdmission;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    type: nameEnumValues.map![json["type"]],
    id: json["id"],
    datetimeUtc: DateTime.parse(json["datetime_utc"]),
    venue: Venue.fromJson(json["venue"]),
    datetimeTbd: json["datetime_tbd"],
    performers: List<Performer>.from(
        json["performers"].map((x) => Performer.fromJson(x))),
    isOpen: json["is_open"],
    links: List<dynamic>.from(json["links"].map((x) => x)),
    datetimeLocal: DateTime.parse(json["datetime_local"]),
    timeTbd: json["time_tbd"],
    shortTitle: json["short_title"],
    visibleUntilUtc: DateTime.parse(json["visible_until_utc"]),
    stats: EventStats.fromJson(json["stats"]),
    taxonomies: List<Taxonomy>.from(
        json["taxonomies"].map((x) => Taxonomy.fromJson(x))),
    url: json["url"],
    score: json["score"].toDouble(),
    announceDate: DateTime.parse(json["announce_date"]),
    createdAt: DateTime.parse(json["created_at"]),
    dateTbd: json["date_tbd"],
    title: json["title"],
    popularity: json["popularity"].toDouble(),
    description: json["description"],
    status: statusValues.map![json["status"]],
    accessMethod: json["access_method"] == null
        ? null
        : AccessMethod.fromJson(json["access_method"]),
    eventPromotion: json["event_promotion"],
    announcements: Announcements.fromJson(json["announcements"]),
    conditional: json["conditional"],
    enddatetimeUtc: json["enddatetime_utc"],
    themes: List<dynamic>.from(json["themes"].map((x) => x)),
    domainInformation:
    List<dynamic>.from(json["domain_information"].map((x) => x)),
    generalAdmission: json["general_admission"] == null
        ? null
        : json["general_admission"],
  );

  Map<String, dynamic> toJson() => {
    "type": nameEnumValues.reverse[type],
    "id": id,
    "datetime_utc": datetimeUtc!.toIso8601String(),
    "venue": venue!.toJson(),
    "datetime_tbd": datetimeTbd,
    "performers": List<dynamic>.from(performers!.map((x) => x.toJson())),
    "is_open": isOpen,
    "links": List<dynamic>.from(links!.map((x) => x)),
    "datetime_local": datetimeLocal!.toIso8601String(),
    "time_tbd": timeTbd,
    "short_title": shortTitle,
    "visible_until_utc": visibleUntilUtc!.toIso8601String(),
    "stats": stats!.toJson(),
    "taxonomies": List<dynamic>.from(taxonomies!.map((x) => x.toJson())),
    "url": url,
    "score": score,
    "announce_date": announceDate!.toIso8601String(),
    "created_at": createdAt!.toIso8601String(),
    "date_tbd": dateTbd,
    "title": title,
    "popularity": popularity,
    "description": description,
    "status": statusValues.reverse[status],
    "access_method": accessMethod == null ? null : accessMethod!.toJson(),
    "event_promotion": eventPromotion,
    "announcements": announcements!.toJson(),
    "conditional": conditional,
    "enddatetime_utc": enddatetimeUtc,
    "themes": List<dynamic>.from(themes!.map((x) => x)),
    "domain_information":
    List<dynamic>.from(domainInformation!.map((x) => x)),
    "general_admission": generalAdmission == null ? null : generalAdmission,
  };
}
