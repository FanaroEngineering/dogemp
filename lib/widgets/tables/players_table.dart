import 'package:flutter/material.dart';

import '../../data/players.dart';
import '../../schema/player.dart';

import '../clickable_link.dart';

@immutable
class PlayersTable extends StatefulWidget {
  const PlayersTable({Key? key}) : super(key: key);

  @override
  State<PlayersTable> createState() => _PlayersTableState();
}

class _PlayersTableState extends State<PlayersTable> {
  List<Player> playersList = players;
  bool sortAscending = true;
  int? sortColumnIndex;

  List<DataRow> playersRows() => List<DataRow>.generate(players.length, (int index) {
        final Player player = playersList[index];

        return DataRow(
          color: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> _) => index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1)),
          cells: <DataCell>[
            DataCell(SelectableText(player.id.toString().padLeft(3, '0'))),
            DataCell(SelectableText(player.name)),
            DataCell(player.ogsNick != null
                ? ClickableLink(
                    link: player.ogsNick!.ogsPlayerLink,
                    linkText: player.ogsNick!.name,
                  )
                : const SelectableText('')),
            DataCell(SelectableText(player.discord ?? '')),
            DataCell(
              Center(
                child: SelectableText(
                  player.country != null ? player.country!.emoji : '',
                ),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(
                  player.brazilianState != null ? player.brazilianState!.symbol : '',
                ),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(
                  player.baseElo != null ? player.baseElo!.elo.toString() : '',
                ),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(
                  player.baseElo != null ? player.baseElo!.danKyuLevel : '',
                ),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(player.planStatusString(2022, Month.feb)),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(player.planStatusString(2022, Month.jan)),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(player.planStatusString(2021, Month.dec)),
              ),
            ),
            DataCell(
              Center(
                child: SelectableText(player.planStatusString(2021, Month.nov)),
              ),
            ),
          ],
        );
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        DataTable(
          columnSpacing: 15,
          sortAscending: sortAscending,
          sortColumnIndex: sortColumnIndex,
          headingTextStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          columns: <DataColumn>[
            DataColumn(
              label: const Expanded(
                child: SelectableText(
                  'ID',
                  textAlign: TextAlign.center,
                ),
              ),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  sortAscending = !sortAscending;
                  sortColumnIndex = 0;
                });

                sortAscending
                    ? playersList
                        .sort((Player playerA, Player playerB) => playerA.id.compareTo(playerB.id))
                    : playersList
                        .sort((Player playerA, Player playerB) => playerB.id.compareTo(playerA.id));
              },
            ),
            DataColumn(
              label: const SelectableText(
                'Nome',
              ),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  sortAscending = !sortAscending;
                  sortColumnIndex = 1;
                });

                sortAscending
                    ? playersList.sort(
                        (Player playerA, Player playerB) => playerA.name.compareTo(playerB.name))
                    : playersList.sort(
                        (Player playerA, Player playerB) => playerB.name.compareTo(playerA.name));
              },
            ),
            DataColumn(
              label: const Expanded(
                child: SelectableText(
                  'OGS',
                ),
              ),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  sortAscending = !sortAscending;
                  sortColumnIndex = 2;
                });

                players.sort((Player playerA, Player playerB) {
                  final String ogsNameA =
                      playerA.ogsNick == null ? 'zzzzzzz' : playerA.ogsNick!.name;
                  final String ogsNameB =
                      playerB.ogsNick == null ? 'zzzzzzz' : playerB.ogsNick!.name;

                  return sortAscending
                      ? ogsNameA.compareTo(ogsNameB)
                      : ogsNameB.compareTo(ogsNameA);
                });
              },
            ),
            DataColumn(
              label: const Expanded(
                child: SelectableText(
                  'Discord',
                ),
              ),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  sortAscending = !sortAscending;
                  sortColumnIndex = 3;
                });

                players.sort((Player playerA, Player playerB) {
                  final String discordA = playerA.discord == null ? 'zzzzzzz' : playerA.discord!;
                  final String discordB = playerB.discord == null ? 'zzzzzzz' : playerB.discord!;

                  return sortAscending
                      ? discordA.compareTo(discordB)
                      : discordB.compareTo(discordA);
                });
              },
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'País',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Estado',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Elo',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Nível',
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Fev 2022',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Jan 2022',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Dez 2021',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Nov 2021',
                textAlign: TextAlign.center,
              ),
            ),
          ],
          rows: playersRows(),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
