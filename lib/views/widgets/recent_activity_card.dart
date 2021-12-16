import '../../ui.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      leading: CircleAvatar(
        radius: 24,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: colors.purpleDeepPurple),
        ),
      ),
      title: Text(
        '${context.strings.collectedFrom} David',
        style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '${context.strings.purchasedFor} 1.50 ${context.strings.eth}',
              style: const TextStyle(
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
    );
  }
}

class AppListTile extends StatelessWidget {
  const AppListTile({
    Key? key,
    this.borderRadius,
    this.color,
    this.leading,
    this.subtitle,
    this.title,
    this.trailing,
  }) : super(key: key);
  final double? borderRadius;
  final Color? color;
  final Widget? leading;
  final Widget? subtitle;
  final Widget? title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 24)),
      color: color ?? Colors.white12,
      child: ListTile(
        minVerticalPadding: 20,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
