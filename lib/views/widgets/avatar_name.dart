import '../../ui.dart';

class AvatarName extends StatelessWidget {
  const AvatarName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      height: 76,
      child: Stack(
        children: [Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://media.gettyimages.com/photos/high-angle-view-of-sea-and-buildings-against-sky-picture-id1144749579?k=20&m=1144749579&s=612x612&w=0&h=h9z79v56AswqDzNkMzj_sAjYYYcawEL_vhyLjBXNMPU='),
            ),
            Text('First Name', style: TextStyle(color: Colors.white)),
          ],
        ),
          Positioned(
              left: 48,
              top: 6,
              child: CircleAvatar(

                radius: 6,
                backgroundColor: Colors.green,
              ))
      ],),
    );
  }
}

class AvatarNameHoriz extends StatelessWidget {
  const AvatarNameHoriz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 218,
      height: 52,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    'https://media.gettyimages.com/photos/high-angle-view-of-sea-and-buildings-against-sky-picture-id1144749579?k=20&m=1144749579&s=612x612&w=0&h=h9z79v56AswqDzNkMzj_sAjYYYcawEL_vhyLjBXNMPU='),
              ),
              Text('FirstName & LastName', style: TextStyle(color: Colors.white)),
            ],
          ),
          Positioned(
            left: 40,
              top: 6,
              child: CircleAvatar(

            radius: 6,
            backgroundColor: Colors.green,
          ))
        ],
      ),
    );
  }
}
class AvatarNameStatus extends StatelessWidget {
  const AvatarNameStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 218,
      height: 52,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    'https://media.gettyimages.com/photos/high-angle-view-of-sea-and-buildings-against-sky-picture-id1144749579?k=20&m=1144749579&s=612x612&w=0&h=h9z79v56AswqDzNkMzj_sAjYYYcawEL_vhyLjBXNMPU='),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('FirstName & LastName', style: TextStyle(color: Colors.white)),
                  Text('Status', style: TextStyle(color: Colors.white)),


                ],
              ),
            ],
          ),
          Positioned(
              left: 38,
              top: 6,
              child: CircleAvatar(

                radius: 6,
                backgroundColor: Colors.green,
              ))
        ],
      ),
    );
  }
}
