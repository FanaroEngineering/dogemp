import 'package:meta/meta.dart';

import 'links.dart';

@immutable
class Player {
  final int id;
  final String name;
  final OgsNick? ogsNick;
  final String? discord;
  final Country? country;
  final BrazilianState? brazilianState;
  final Elo? baseElo;
  final Map<int, Map<Month, Plan>>? plans;

  const Player({
    required this.id,
    required this.name,
    this.ogsNick,
    this.discord,
    this.country,
    this.brazilianState,
    this.baseElo,
    this.plans,
  });
}

@immutable
class OgsNick {
  final String name;
  final OgsPlayerLink ogsPlayerLink;

  const OgsNick({required this.name, required this.ogsPlayerLink});
}

@immutable
class Elo {
  final int elo;

  const Elo(this.elo);

  String get danKyuLevel => '1d';
}

@immutable
class Plan {
  final List<PlanType> planType;
  final PaymentStatus paid;

  const Plan({required this.planType, required this.paid});
}

enum PaymentStatus {
  paid,
  unpaid,
  notApplicable,
}

extension PaymentStatusSymbols on PaymentStatus {
  String get symbol {
    switch (this) {
      case PaymentStatus.paid:
        return '';
      case PaymentStatus.unpaid:
        return 'A';
      case PaymentStatus.notApplicable:
        return '';
      default:
        return '';
    }
  }
}

enum PlanType {
  allIncludedOriginal,
  player,
  competitor,
  teacher,
}

extension PlanTypeSymbols on PlanType {
  String get meaning {
    switch (this) {
      case PlanType.allIncludedOriginal:
        return 'Tudo incluso (original)';
      case PlanType.player:
        return 'Jogador';
      case PlanType.competitor:
        return 'Competidor';
      case PlanType.teacher:
        return 'Professor';
      default:
        return '';
    }
  }

  String get symbol {
    switch (this) {
      case PlanType.allIncludedOriginal:
        return 'X';
      case PlanType.player:
        return 'J';
      case PlanType.competitor:
        return 'C';
      case PlanType.teacher:
        return 'P';
      default:
        return '';
    }
  }
}

enum Month {
  jan,
  feb,
  mar,
  apr,
  may,
  jun,
  jul,
  aug,
  sep,
  oct,
  nov,
  dec,
}

extension MonthSymbols on Month {
  String get text {
    switch (this) {
      case Month.jan:
        return 'Jan';
      case Month.feb:
        return 'Fev';
      case Month.mar:
        return 'Mar';
      case Month.apr:
        return 'Abr';
      case Month.may:
        return 'Mai';
      case Month.jun:
        return 'Jun';
      case Month.jul:
        return 'Jul';
      case Month.aug:
        return 'Ago';
      case Month.sep:
        return 'Set';
      case Month.oct:
        return 'Out';
      case Month.nov:
        return 'Nov';
      case Month.dec:
        return 'Dez';
      default:
        return '';
    }
  }
}

enum Country {
  angola,
  argentina,
  brazil,
  colombia,
  france,
  israel,
  italy,
  mexico,
  portugal,
  romania,
  taiwan,
}

extension CountryEmojis on Country {
  String get emoji {
    switch (this) {
      case Country.angola:
        return '🇦🇴';
      case Country.argentina:
        return '🇦🇷';
      case Country.brazil:
        return '🇧🇷';
      case Country.colombia:
        return '🇨🇴';
      case Country.france:
        return '🇫🇷';
      case Country.israel:
        return '🇮🇱';
      case Country.italy:
        return '🇮🇹';
      case Country.mexico:
        return '🇲🇽';
      case Country.portugal:
        return '🇵🇹';
      case Country.romania:
        return '🇷🇴';
      case Country.taiwan:
        return '🇹🇼';
      default:
        return '';
    }
  }
}

enum BrazilianState {
  ac,
  al,
  ap,
  am,
  ba,
  ce,
  df,
  es,
  go,
  ma,
  mt,
  ms,
  mg,
  pa,
  pb,
  pr,
  pe,
  pi,
  rj,
  rn,
  rs,
  ro,
  rr,
  sp,
  se,
  to,
}

extension BrazilianStatesSymbols on BrazilianState {
  String get symbol {
    switch (this) {
      case BrazilianState.ac:
        return 'AC';
      case BrazilianState.al:
        return 'AL';
      case BrazilianState.ap:
        return 'AP';
      case BrazilianState.am:
        return 'AM';
      case BrazilianState.ba:
        return 'BA';
      case BrazilianState.ce:
        return 'CE';
      case BrazilianState.df:
        return 'DF';
      case BrazilianState.es:
        return 'ES';
      case BrazilianState.go:
        return 'GO';
      case BrazilianState.ma:
        return 'MA';
      case BrazilianState.mt:
        return 'MT';
      case BrazilianState.ms:
        return 'MS';
      case BrazilianState.mg:
        return 'MG';
      case BrazilianState.pa:
        return 'PA';
      case BrazilianState.pb:
        return 'PB';
      case BrazilianState.pr:
        return 'PR';
      case BrazilianState.pe:
        return 'PE';
      case BrazilianState.pi:
        return 'PI';
      case BrazilianState.rj:
        return 'RJ';
      case BrazilianState.rn:
        return 'RN';
      case BrazilianState.rs:
        return 'RS';
      case BrazilianState.ro:
        return 'RO';
      case BrazilianState.rr:
        return 'RR';
      case BrazilianState.sp:
        return 'SP';
      case BrazilianState.se:
        return 'SE';
      case BrazilianState.to:
        return 'TO';
      default:
        return '';
    }
  }
}
