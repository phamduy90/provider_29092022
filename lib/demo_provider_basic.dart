import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DemoProviderBasic extends StatefulWidget {
  const DemoProviderBasic({Key? key}) : super(key: key);

  @override
  State<DemoProviderBasic> createState() => _DemoProviderBasicState();
}

class _DemoProviderBasicState extends State<DemoProviderBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo provider basic"),
      ),
      body: Container(
        child: Center(
          child: Provider(
            create: (conter) => 10,
            child: OngBa(
              child: Chame(),
            ),
          )
        ),
      ),
    );
  }
}

class OngBa extends StatelessWidget {

  Widget child;
    OngBa ({required this.child});
    @override
  Widget build(BuildContext context){
      return Container(
        child: Column(
          children: [
            Text("Ong Ba"),
            child
          ],
        ),
      );
  }
}

class Chame extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int value = Provider.of(context);
    return Container(
      child: Text("Cha me, value: $value"),
    );
  }
}
