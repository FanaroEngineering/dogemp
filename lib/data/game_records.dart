import '../schema/game_record.dart';
import '../schema/links.dart';
import '../schema/player.dart';

final List<GameRecord> gameRecords = [
  GameRecord(
    ogsLink: OgsGameLink(id: '41807658'),
    date: DateTime(2022, 3, 5),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'vandito',
    whiteName: 'PutzGrila',
    result: 'W+2.5',
    status: Status.notYetReviewed,
    aiSenseiLink: AiSenseiLink(id: 'OJYIHptqLCYFxpmhmzJ1'),
    youtubeLink1: YouTubeLink(id: ''),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41782166'),
    date: DateTime(2022, 3, 5),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'balaura',
    whiteName: 'psygo',
    result: 'W+4.5',
    status: Status.reviewedWithAStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'CAxoiZGjAISv6TuYmHuA'),
    twitchLink1: TwitchLink(id: '1416717459'),
    youtubeLink1: YouTubeLink(id: 'k1ka9tW28U8'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41677034'),
    date: DateTime(2022, 3, 1),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'Pedepano',
    whiteName: 'cchagas',
    result: 'W+13.5',
    status: Status.notYetReviewed,
    aiSenseiLink: AiSenseiLink(id: 'QtQeVDyPCT5ybwSs8uzW'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41624493'),
    date: DateTime(2022, 2, 27),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'Cactus Juice',
    whiteName: 'Pedepano',
    result: 'B+R',
    status: Status.notYetReviewed,
    aiSenseiLink: AiSenseiLink(id: '7qukikziZ4GIgkzWaJym'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41521732'),
    date: DateTime(2022, 2, 23),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'laercioskt',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.reviewedWithAStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'HjbDW6tMOlxrizq3mydg'),
    twitchLink1: TwitchLink(id: '1405989478'),
    youtubeLink1: YouTubeLink(id: 'VmlV2_Kg3KE'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41464891'),
    date: DateTime(2022, 2, 21),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'cchagas',
    whiteName: 'Cactus Juice',
    result: 'W+24.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: '466SInQvncWmRW5CscVh'),
    twitchLink1: TwitchLink(id: '1410324198'),
    youtubeLink1: YouTubeLink(id: 'Zp0TC6kR36w'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41467316'),
    date: DateTime(2022, 2, 21),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'PutzGrila',
    whiteName: 'Oliv.AS',
    result: 'W+108.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'QCTli7cXy2PfIVWEqvhA'),
    twitchLink1: TwitchLink(id: '1410324197'),
    youtubeLink1: YouTubeLink(id: 'rp_s8UCGpuA'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41435407'),
    date: DateTime(2022, 2, 20),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'cchagas',
    whiteName: 'XIKO',
    result: 'B+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'CfwG616A0nWgOKuJhHqq'),
    twitchLink1: TwitchLink(id: '1304839967'),
    youtubeLink1: YouTubeLink(id: 'NVLLwU_zEnQ'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41425907'),
    date: DateTime(2022, 2, 20),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'Fabrício',
    whiteName: 'laercioskt',
    result: 'W+R',
    status: Status.notGonnaBeReviewedNeedsStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'BrIRsiL5PkyJbvDBCyZ4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41399649'),
    date: DateTime(2022, 2, 19),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 4,
    blackName: 'cixidetroy',
    whiteName: 'Cactus Juice',
    result: 'W+44.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'ydYKMq0qHk2xCKA0KtdV'),
    twitchLink1: TwitchLink(id: '1304839968'),
    youtubeLink1: YouTubeLink(id: 'ALcNZ6w2iTU'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41271299'),
    date: DateTime(2022, 2, 14),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'vandito',
    whiteName: 'Oliv.AS',
    result: 'W+T',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: '3CC2ESuY7BuvoWUj7z6d'),
    twitchLink1: TwitchLink(id: '1304839969'),
    youtubeLink1: YouTubeLink(id: 'xVRcXxFqtG8'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41207174'),
    date: DateTime(2022, 2, 12),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'psygo',
    whiteName: 'Fabrício',
    result: 'B+R',
    status: Status.notGonnaBeReviewedNeedsStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'tRBpS7akepTKRQHZRscT'),
    twitchLink1: TwitchLink(id: '1296194742'),
    youtubeLink1: YouTubeLink(id: 'Bx1sXQ-aYSg'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41184861'),
    date: DateTime(2022, 2, 11),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'XIKO',
    whiteName: 'Cactus Juice',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'iI00G7Wj3SbHD54pxbup'),
    twitchLink1: TwitchLink(id: '1297361915'),
    youtubeLink1: YouTubeLink(id: 'cqWtzIbgnp4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41155570'),
    date: DateTime(2022, 2, 10),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'PutzGrila',
    whiteName: 'Oliv.AS',
    result: 'W+T',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'gPqoyJLqcA1AEWa0kGq6'),
    twitchLink1: TwitchLink(id: '1297361914'),
    youtubeLink1: YouTubeLink(id: '1cXYEOo7AxI'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '41068955'),
    date: DateTime(2022, 2, 7),
    leagueYearMonth: const LeagueYearMonth(2022, Month.feb),
    handicap: 0,
    blackName: 'PutzGrila',
    whiteName: 'vandito',
    result: 'B+5.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'UySxRu18nx20CwnU4Kkl'),
    twitchLink1: TwitchLink(id: '1297361913'),
    youtubeLink1: YouTubeLink(id: 'CW89sbNY_eg'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40980404'),
    date: DateTime(2022, 2, 4),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 9,
    blackName: 'cixidetroy',
    whiteName: 'seupera',
    result: 'B+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'VDyKPaoi2LetKFWniLnA'),
    twitchLink1: TwitchLink(id: '1289765597'),
    youtubeLink1: YouTubeLink(id: 'TUDzuEXr5tk'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40825956'),
    date: DateTime(2022, 1, 30),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'laercioskt',
    whiteName: 'balaura',
    result: 'W+R',
    status: Status.notGonnaBeReviewedNeedsStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'iIwvsCNt1rM0m7AoSTe5'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40822130'),
    date: DateTime(2022, 1, 30),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'Pedepano',
    whiteName: 'Fabrício',
    result: 'W+88.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'FTcwD4R47MnoM2uDTz9u'),
    twitchLink1: TwitchLink(id: '1281658425'),
    youtubeLink1: YouTubeLink(id: 'hSkJFvCU5GU'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40712999'),
    date: DateTime(2022, 1, 26),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'Fabrício',
    whiteName: 'Phelan',
    result: 'B+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'LUG44g1PSYi2sZoBJCBP'),
    twitchLink1: TwitchLink(id: '1281658426'),
    youtubeLink1: YouTubeLink(id: 'ozO-kOIU7hM'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40707619'),
    date: DateTime(2022, 1, 26),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'balaura',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.notGonnaBeReviewedNeedsStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'wLy2hwDfrN9sZ1khseHO'),
    twitchLink1: TwitchLink(id: '1277172305'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40626509'),
    date: DateTime(2022, 1, 23),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 2,
    blackName: 'XIKO',
    whiteName: 'Pedepano',
    result: 'B+17.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'PfpY4cfCl1GP5DHaSUrX'),
    twitchLink1: TwitchLink(id: '1281658424'),
    youtubeLink1: YouTubeLink(id: 'q3XxeM5ID8c'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40619205'),
    date: DateTime(2022, 1, 23),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'laercioskt',
    whiteName: 'seupera',
    result: 'B+13.5',
    status: Status.notGonnaBeReviewedNeedsStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'XpNai34QQ5vBccCBBSgv'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40590036'),
    date: DateTime(2022, 1, 22),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 3,
    blackName: 'lukeverso',
    whiteName: 'vandito',
    result: 'B+52.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'U56uqF7n9VlxXxw26rDk'),
    twitchLink1: TwitchLink(id: '1272671531'),
    youtubeLink1: YouTubeLink(id: 'qghVzn0e4bI'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40589847'),
    date: DateTime(2022, 1, 22),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 9,
    blackName: 'cixidetroy',
    whiteName: 'psygo',
    result: 'B+39.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'GZO3GfBiyqhiof8vlpGN'),
    twitchLink1: TwitchLink(id: '1272671529'),
    youtubeLink1: YouTubeLink(id: 'HoGulmolsHM'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40503374'),
    date: DateTime(2022, 1, 19),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 3,
    blackName: 'lukeverso',
    whiteName: 'PutzGrila',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'mRiS1jt8FnSc734j0hyP'),
    twitchLink1: TwitchLink(id: '1273652042'),
    youtubeLink1: YouTubeLink(id: 'OJug0Ju449w'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40417499'),
    date: DateTime(2022, 1, 16),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 3,
    blackName: 'lukeverso',
    whiteName: 'Oliv.AS',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'vMkjawxOdkjMrpqCdb7I'),
    twitchLink1: TwitchLink(id: '1273652041'),
    youtubeLink1: YouTubeLink(id: 'ItgbG2AnOqY'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40389931'),
    date: DateTime(2022, 1, 15),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'psygo',
    whiteName: 'laercioskt',
    result: 'B+R',
    status: Status.notGonnaBeReviewedNeedsStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'apafGUyKpHs9pD7BcROL'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40370260'),
    date: DateTime(2022, 1, 14),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 6,
    blackName: 'XIKO',
    whiteName: 'Fabrício',
    result: 'B+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'rOGPnEvlfaoL1gGUT9Hq'),
    twitchLink1: TwitchLink(id: '1273652043'),
    youtubeLink1: YouTubeLink(id: 'RUaVUtIZo1I'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40366499'),
    date: DateTime(2022, 1, 14),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'seupera',
    whiteName: 'psygo',
    result: 'W+63.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'tD6hmj2sF6cjJ7xmMGBN'),
    twitchLink1: TwitchLink(id: '1263725767'),
    youtubeLink1: YouTubeLink(id: '01EAvPpCS6Q'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40341596'),
    date: DateTime(2022, 1, 13),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'PutzGrila',
    whiteName: 'Oliv.AS',
    result: 'W+111.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'SNdWfWIwFa49RaR8fiMt'),
    twitchLink1: TwitchLink(id: '1265996868'),
    youtubeLink1: YouTubeLink(id: 'GAeOFn55YDQ'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40252915'),
    date: DateTime(2022, 1, 9),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 9,
    blackName: 'vandito',
    whiteName: 'Fabrício',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'B9nF9rSS27vn0yS5DyHI'),
    twitchLink1: TwitchLink(id: '1265996866'),
    youtubeLink1: YouTubeLink(id: '8n7W3CyHzcc'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40229371'),
    date: DateTime(2022, 1, 9),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'vandito',
    whiteName: 'Oliv.AS',
    result: 'B+T',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'cpHeeUkMSyZA8s2ZQNzq'),
    twitchLink1: TwitchLink(id: '1265996867'),
    youtubeLink1: YouTubeLink(id: '8tAyj-NhzAQ'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40224966'),
    date: DateTime(2022, 1, 9),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 9,
    blackName: 'cixidetroy',
    whiteName: 'laercioskt',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'SBkZF6llJlJPhYIh6Nub'),
    twitchLink1: TwitchLink(id: '1265996865'),
    youtubeLink1: YouTubeLink(id: 'Rh5kiLYXgQI'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '40192381'),
    date: DateTime(2022, 1, 8),
    leagueYearMonth: const LeagueYearMonth(2022, Month.jan),
    handicap: 0,
    blackName: 'PutzGrila',
    whiteName: 'vandito',
    result: 'W+109.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'w5QVGz8I6fsvMvYQLIzJ'),
    twitchLink1: TwitchLink(id: '1258645648'),
    youtubeLink1: YouTubeLink(id: 'cyKoq6w6dHE'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39944144'),
    date: DateTime(2021, 12, 30),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 9,
    blackName: 'lukeverso',
    whiteName: 'seupera',
    result: 'W+61.5',
    status: Status.notGonnaBeReviewed,
    aiSenseiLink: AiSenseiLink(id: 'Fl9ReRr0kNFtj5rs58Cf'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39886842'),
    date: DateTime(2021, 12, 28),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'psygo',
    whiteName: 'balaura',
    result: 'W+6.5',
    status: Status.reviewedWithAStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'RLOkBP0sNy6I9NTtzggx'),
    twitchLink1: TwitchLink(id: '1246819536'),
    youtubeLink1: YouTubeLink(id: 'jJeFK6H3RK0'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39858503'),
    date: DateTime(2021, 12, 27),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'balaura',
    whiteName: 'Fabrício',
    result: 'B+R',
    status: Status.notGonnaBeReviewed,
    aiSenseiLink: AiSenseiLink(id: 'MjyjbDuJBAWNjtVMxF9D'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39754350'),
    date: DateTime(2021, 12, 23),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'AfricanGrimReaper',
    whiteName: 'Fabrício',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'nztiBlrzQpOSjOUbK0oQ'),
    twitchLink1: TwitchLink(id: '1244774116'),
    youtubeLink1: YouTubeLink(id: 'GXATWPakIlo'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39701832'),
    date: DateTime(2021, 12, 21),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'Phelan',
    whiteName: 'balaura',
    result: 'W+R',
    status: Status.reviewedWithAStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'cO9zzbOgXsxzw8Nla2ES'),
    twitchLink1: TwitchLink(id: '1246819535'),
    youtubeLink1: YouTubeLink(id: 'ql1JRybk_PY'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39641205'),
    date: DateTime(2021, 12, 19),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'AfricanGrimReaper',
    whiteName: 'Phelan',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'lTnLsq7JbV1uuQNjO5dF'),
    twitchLink1: TwitchLink(id: '1244774114'),
    youtubeLink1: YouTubeLink(id: 'HGTRz7r4gB4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39647446'),
    date: DateTime(2021, 12, 19),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 9,
    blackName: 'cixidetroy',
    whiteName: 'Pedepano',
    result: 'W+40.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'yxMN6TL0YHJxMiYlvnfk'),
    twitchLink1: TwitchLink(id: '1244804364'),
    youtubeLink1: YouTubeLink(id: '2E9CtzYyeGc'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39614270'),
    date: DateTime(2021, 12, 18),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 9,
    blackName: 'vandito',
    whiteName: 'seupera',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'xi5eSLQtP8YoXb4uI6ow'),
    twitchLink1: TwitchLink(id: '1238253562'),
    youtubeLink1: YouTubeLink(id: 'lvulj2AH4D4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39597218'),
    date: DateTime(2021, 12, 17),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'psygo',
    whiteName: 'Phelan',
    result: 'B+R',
    status: Status.reviewedWithAStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'RnptZ39AfFnqGCwkN0YR'),
    twitchLink1: TwitchLink(id: '1244774117'),
    youtubeLink1: YouTubeLink(id: 'z_-pknXw6LQ'),
    twitchLink2: TwitchLink(id: '1246819537'),
    youtubeLink2: YouTubeLink(id: 'P6OT2ze6du8'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39446354'),
    date: DateTime(2021, 12, 12),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'cixidetroy',
    whiteName: 'vandito',
    result: 'B+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'IXg8HliFvKfDlIJSWn6b'),
    twitchLink1: TwitchLink(id: '1238253561'),
    youtubeLink1: YouTubeLink(id: 'lhnQU4dnKlU'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39425631'),
    date: DateTime(2021, 12, 11),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'Fabrício',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.notGonnaBeReviewed,
    aiSenseiLink: AiSenseiLink(id: 'wYICGbogkFQ3d4LHkWcd'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39426991'),
    date: DateTime(2021, 12, 11),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'lukeverso',
    whiteName: 'cixidetroy',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'mPEYfQznGgC9YpwXTj4j'),
    twitchLink1: TwitchLink(id: '1238253559'),
    youtubeLink1: YouTubeLink(id: 'wO5EVaZ6OsQ'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39397595'),
    date: DateTime(2021, 12, 10),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'AfricanGrimReaper',
    whiteName: 'balaura',
    result: 'W+R',
    status: Status.reviewedWithAStrongerPlayer,
    aiSenseiLink: AiSenseiLink(id: 'qxyumB8u4PsVwkVmFRSs'),
    twitchLink1: TwitchLink(id: '1246819538'),
    youtubeLink1: YouTubeLink(id: 'WfFK1VI0EP8'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39399355'),
    date: DateTime(2021, 12, 10),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 9,
    blackName: 'cixidetroy',
    whiteName: 'seupera',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: '8dklYe9snK2QSC0mzFMa'),
    twitchLink1: TwitchLink(id: '1232012892'),
    youtubeLink1: YouTubeLink(id: 'KYwaCIMifkA'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39342634'),
    date: DateTime(2021, 12, 8),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'AfricanGrimReaper',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'yJcFXEA2RiH08oDy2xZM'),
    twitchLink1: TwitchLink(id: '1232012891'),
    youtubeLink1: YouTubeLink(id: 'YHk7tl_tnr4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '39258192'),
    date: DateTime(2021, 12, 5),
    leagueYearMonth: const LeagueYearMonth(2021, Month.dec),
    handicap: 0,
    blackName: 'lukeverso',
    whiteName: 'vandito',
    result: 'B+T',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'Y9SLDmDhOrU1mbnmxzry'),
    twitchLink1: TwitchLink(id: '1238253558'),
    youtubeLink1: YouTubeLink(id: 'ZAIjaoOZD4A'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38953919'),
    date: DateTime(2021, 11, 24),
    leagueYearMonth: const LeagueYearMonth(2021, Month.nov),
    handicap: 0,
    blackName: 'Phelan',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'vn2enXTYtDgv8pvfqQzp'),
    twitchLink1: TwitchLink(id: '1218713892'),
    youtubeLink1: YouTubeLink(id: 'kbvyqPpm8D0'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38733948'),
    date: DateTime(2021, 11, 16),
    leagueYearMonth: const LeagueYearMonth(2021, Month.nov),
    handicap: 0,
    blackName: 'AfricanGrimReaper',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'KXUcvuVkbkOxZliMioCH'),
    twitchLink1: TwitchLink(id: '1212309874'),
    youtubeLink1: YouTubeLink(id: 'YHk7tl_tnr4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38650411'),
    date: DateTime(2021, 11, 13),
    leagueYearMonth: const LeagueYearMonth(2021, Month.nov),
    handicap: 0,
    blackName: 'Pedepano',
    whiteName: 'AfricanGrimReaper',
    result: 'W+151.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'qPWsoW0ofR7F7IYXj6XI'),
    twitchLink1: TwitchLink(id: '1206330697'),
    youtubeLink1: YouTubeLink(id: 'HaJddNT1lyc'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38482719'),
    date: DateTime(2021, 11, 7),
    leagueYearMonth: const LeagueYearMonth(2021, Month.nov),
    handicap: 0,
    blackName: 'Pedepano',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'FLOPA63JSwqQk9lAiztJ'),
    twitchLink1: TwitchLink(id: '1199642516'),
    youtubeLink1: YouTubeLink(id: 'Wg8SySprt0U'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38321258'),
    date: DateTime(2021, 11, 1),
    leagueYearMonth: const LeagueYearMonth(2021, Month.nov),
    handicap: 9,
    blackName: 'AudreyLucianoFilho',
    whiteName: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'hgkGqqdCxMkurK8FLExn'),
    twitchLink1: TwitchLink(id: '1206330695'),
    youtubeLink1: YouTubeLink(id: 'ZH8VyKmZdg8'),
  ),
];
