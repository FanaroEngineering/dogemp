import '../schema/links.dart';
import '../schema/player.dart';

final List<Player> players = [
  Player(
    id: 1,
    name: 'Adalberto Reis Duarte',
    ogsNick: OgsNick(
      name: 'Adalberto',
      ogsPlayerLink: OgsPlayerLink(id: '967575'),
    ),
    baseElo: const Elo(2000),
    country: Country.brazil,
    brazilianState: BrazilianState.pa,
  ),
  Player(
    id: 78,
    name: 'Lucas Cristovam',
    ogsNick: OgsNick(
      name: 'lukeverso',
      ogsPlayerLink: OgsPlayerLink(id: '1068842'),
    ),
    discord: 'lukeverso#0239',
    baseElo: const Elo(900),
    country: Country.brazil,
    plans: const {
      2021: {
        Month.dec: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
    },
  ),
  Player(
    id: 123,
    name: 'Vanderson da Silva Rodrigues',
    ogsNick: OgsNick(
      name: 'vandito',
      ogsPlayerLink: OgsPlayerLink(id: '783843'),
    ),
    discord: 'vandito#7897',
    baseElo: const Elo(500),
    country: Country.brazil,
    brazilianState: BrazilianState.al,
    plans: const {
      2021: {
        Month.dec: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
    },
  ),
  Player(
    id: 97,
    name: 'Philippe Fanaro',
    ogsNick: OgsNick(
      name: 'psygo',
      ogsPlayerLink: OgsPlayerLink(id: '52660'),
    ),
    discord: 'psygo#9887',
    country: Country.brazil,
    brazilianState: BrazilianState.sp,
    baseElo: const Elo(2000),
    plans: const {
      2021: {
        Month.nov: Plan(
          paid: PaymentStatus.notApplicable,
          planType: [PlanType.teacher, PlanType.competitor],
        ),
        Month.dec: Plan(
          paid: PaymentStatus.notApplicable,
          planType: [PlanType.teacher, PlanType.competitor],
        ),
      },
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.notApplicable,
          planType: [PlanType.teacher, PlanType.competitor],
        ),
        Month.feb: Plan(
          paid: PaymentStatus.notApplicable,
          planType: [PlanType.teacher, PlanType.competitor],
        ),
      },
    },
  ),
  Player(
    id: 52,
    name: 'Gabriel Ventura',
    ogsNick: OgsNick(
      name: 'Pedepano',
      ogsPlayerLink: OgsPlayerLink(id: '469636'),
    ),
    discord: 'Pedepano#5580',
    country: Country.brazil,
    baseElo: const Elo(1700),
    plans: const {
      2021: {
        Month.nov: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.allIncludedOriginal],
        ),
        Month.dec: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
    },
  ),
  Player(
    id: 13,
    name: 'Audrey Luciano Filho',
    ogsNick: OgsNick(
      name: 'AudreyLucianoFilho',
      ogsPlayerLink: OgsPlayerLink(id: '1062590'),
    ),
    discord: 'Audrey#1752',
    country: Country.brazil,
    brazilianState: BrazilianState.ce,
    baseElo: const Elo(900),
    plans: const {
      2021: {
        Month.nov: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.allIncludedOriginal],
        ),
      },
    },
  ),
  Player(
    id: 40,
    name: 'Erendiro Pedro Sangueve',
    ogsNick: OgsNick(
      name: 'AfricanGrimReaper',
      ogsPlayerLink: OgsPlayerLink(id: '761486'),
    ),
    discord: 'Galo.Negro#9983',
    country: Country.angola,
    baseElo: const Elo(1400),
    plans: const {
      2021: {
        Month.nov: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.allIncludedOriginal],
        ),
        Month.dec: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
    },
  ),
  Player(
    id: 111,
    name: 'Rui Malhado',
    ogsNick: OgsNick(
      name: 'Phelan',
      ogsPlayerLink: OgsPlayerLink(id: '27'),
    ),
    discord: 'Phelan (Rui)#6453',
    country: Country.portugal,
    baseElo: const Elo(1700),
    plans: const {
      2021: {
        Month.nov: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.allIncludedOriginal],
        ),
        Month.dec: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
    },
  ),
];
