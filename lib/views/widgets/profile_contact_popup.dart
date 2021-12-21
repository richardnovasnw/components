import '../../ui.dart';

class ProfileContactPopUp extends StatelessWidget {
  const ProfileContactPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: 8,
      height: 293,
      width: 343,
      gradient: LinearGradient(
          colors: <Color>[Colors.blueGrey.withOpacity(.25), Colors.white10]),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              ProfileContactPopUpListTile(
                icon: Icons.mail,
                title: 'Contact@openArt.design',
              ),
              CircleAvatar(
                backgroundColor: Colors.black38,
                radius: 24,
                child: Icon(Icons.edit),
              ),
            ],
          ),
          const ProfileContactPopUpListTile(
            icon: Icons.card_membership_outlined,
            title: 'Linked',
          ),
          const ProfileContactPopUpListTile(
            icon: Icons.phone,
            title: '(+60) 234 355 23',
          ),
          const ProfileContactPopUpListTile(
            icon: Icons.link,
            title: 'iNFineT.design',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RageOutlinedButton(
                  width: 140,
                  height: 40,
                  borderRadius: 8,
                  borderColor: Colors.grey,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'follow',
                          style: context.primaryTextTheme.subtitle2?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const AppCircleIcon(
                  radius: 19,
                  icon: Icons.ios_share_outlined,
                ),
                const AppCircleIcon(radius: 19, icon: Icons.more_horiz),
              ],
            ),
          ),
          Text(
            'Member since 2021',
            style: context.primaryTextTheme.subtitle2?.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileContactPopUpListTile extends StatelessWidget {
  const ProfileContactPopUpListTile({
    Key? key,
    required this.icon,
    required this.title,
    this.trailing,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: context.primaryTextTheme.subtitle2?.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
