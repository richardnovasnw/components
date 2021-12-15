import 'package:infinet/views/widgets/select_date.dart';

import '../ui.dart';
import 'widgets/add_tag_module.dart';
import 'widgets/profile_contact_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[SelectDate()],
        ),
      ),
    );
  }
}
