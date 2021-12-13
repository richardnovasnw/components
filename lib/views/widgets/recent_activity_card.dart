import '../../ui.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: Colors.white12,
      child: ListTile(
        minVerticalPadding: 20,
        leading: CircleAvatar(
          radius: 24,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                    colors: <Color>[Colors.purple, Colors.deepPurple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
        ),
        title: const Text(
          'Collected From David',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'June 04, 2021 at 12:00am',
                style: context.primaryTextTheme.caption,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'Purchased for 1.50 ETH',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.ios_share,
          color: Colors.white,
        ),
      ),
    );
  }
}
