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
  ),
  Player(
    id: 97,
    name: 'Philippe Fanaro',
    ogsNick: OgsNick(
      name: 'psygo',
      ogsPlayerLink: OgsPlayerLink(id: '52660'),
    ),
    discord: 'psygo#9887',
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
    baseElo: const Elo(1400),
  ),
  Player(
    id: 13,
    name: 'Audrey Luciano Filho',
    ogsNick: OgsNick(
      name: 'AudreyLucianoFilho',
      ogsPlayerLink: OgsPlayerLink(id: '1062590'),
    ),
    discord: 'Audrey#1752',
    baseElo: const Elo(1000),
  ),
  Player(
    id: 40,
    name: 'Erendiro Pedro Sangueve',
    ogsNick: OgsNick(
      name: 'AfricanGrimReaper',
      ogsPlayerLink: OgsPlayerLink(id: '761486'),
    ),
    discord: 'Galo.Negro#9983',
    baseElo: const Elo(1500),
  ),
  Player(
    id: 111,
    name: 'Rui Malhado',
    ogsNick: OgsNick(
      name: 'Phelan',
      ogsPlayerLink: OgsPlayerLink(id: '27'),
    ),
    discord: 'Phelan (Rui)#6453',
    baseElo: const Elo(1700),
  ),
];
