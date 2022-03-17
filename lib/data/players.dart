import '../schema/links.dart';
import '../schema/player.dart';

final List<Player> players = [
  Player(
    id: 82,
    name: 'Luis Sousa',
    ogsNick: OgsNick(
      name: 'Luissousa',
      ogsPlayerLink: OgsPlayerLink(id: '62078'),
    ),
    discord: 'LuisSousa#3531',
    baseElo: const Elo(1900),
    country: Country.portugal,
    plans: const {
      2022: {
        Month.feb: Plan(
          paid: PaymentStatus.unpaid,
          planType: [PlanType.competitor],
        ),
      },
    },
  ),
  Player(
    id: 19,
    name: 'Caio Ribeiro Chagas',
    ogsNick: OgsNick(
      name: 'cchagas',
      ogsPlayerLink: OgsPlayerLink(id: '1005861'),
    ),
    discord: 'Caio Chagas#5315',
    baseElo: const Elo(1400),
    country: Country.brazil,
    brazilianState: BrazilianState.pr,
    plans: const {
      2022: {
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
      },
    },
  ),
  Player(
    id: 39,
    name: 'Emanuel Araújo',
    ogsNick: OgsNick(
      name: 'Cactus Juice',
      ogsPlayerLink: OgsPlayerLink(id: '424526'),
    ),
    discord: 'entravix#9458',
    baseElo: const Elo(1600),
    country: Country.brazil,
    brazilianState: BrazilianState.rj,
    plans: const {
      2022: {
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
    },
  ),
  Player(
    id: 73,
    name: 'Laércio Pereira',
    ogsNick: OgsNick(
      name: 'laercioskt',
      ogsPlayerLink: OgsPlayerLink(id: '72785'),
    ),
    discord: 'laercioskt#5593',
    baseElo: const Elo(2000),
    country: Country.brazil,
    brazilianState: BrazilianState.pr,
    plans: const {
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
    },
  ),
  Player(
    id: 53,
    name: 'Guilherme Francisco de Souza Silva',
    ogsNick: OgsNick(
      name: 'XIKO',
      ogsPlayerLink: OgsPlayerLink(id: '978348'),
    ),
    discord: 'XIKO#7897',
    baseElo: const Elo(1000),
    country: Country.brazil,
    plans: const {
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
    id: 49,
    name: 'Gabriel Garcia',
    ogsNick: OgsNick(
      name: 'PutzGrila',
      ogsPlayerLink: OgsPlayerLink(id: '1088804'),
    ),
    discord: 'Gabriel_Garcia#6042',
    baseElo: const Elo(500),
    country: Country.brazil,
    plans: const {
      2022: {
        Month.jan: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.competitor],
        ),
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
    },
  ),
  Player(
    id: 41,
    name: 'Fabrício Caluza Machado',
    ogsNick: OgsNick(
      name: 'Fabrício',
      ogsPlayerLink: OgsPlayerLink(id: '434765'),
    ),
    discord: 'Fabricio#4474',
    baseElo: const Elo(1700),
    country: Country.brazil,
    brazilianState: BrazilianState.pr,
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
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
    },
  ),
  Player(
    id: 74,
    name: 'Laura-Augustina Avram',
    ogsNick: OgsNick(
      name: 'balaura',
      ogsPlayerLink: OgsPlayerLink(id: '79864'),
    ),
    discord: 'laurabalaura#5565',
    baseElo: const Elo(2200),
    country: Country.romania,
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
        Month.feb: Plan(
          paid: PaymentStatus.paid,
          planType: [PlanType.player],
        ),
      },
    },
  ),
  Player(
    id: 8,
    name: 'André Barbosa',
    ogsNick: OgsNick(
      name: 'seupera',
      ogsPlayerLink: OgsPlayerLink(id: '873990'),
    ),
    discord: 'Andre#7920',
    baseElo: const Elo(1500),
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
    id: 11,
    name: 'Ariel Oliveira',
    ogsNick: OgsNick(
      name: 'Oliv.AS',
      ogsPlayerLink: OgsPlayerLink(id: '575865'),
    ),
    discord: 'Oliv.As#5617',
    baseElo: const Elo(1000),
    country: Country.brazil,
    plans: const {
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
    id: 115,
    name: 'Sophie Pagès',
    ogsNick: OgsNick(
      name: 'cixidetroy',
      ogsPlayerLink: OgsPlayerLink(id: '1035050'),
    ),
    discord: 'Sophie#2741',
    baseElo: const Elo(600),
    country: Country.france,
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
