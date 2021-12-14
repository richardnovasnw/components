import '../ui.dart';
import 'widgets/recent_activity_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[RecentActivityCard()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.navigation.updateUserName(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}