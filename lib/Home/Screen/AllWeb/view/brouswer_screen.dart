import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall/Home/Screen/AllWeb/Provider/home_provider.dart';
import 'package:provider/provider.dart';

class BrouserScreen extends StatefulWidget {
  const BrouserScreen({Key? key}) : super(key: key);

  @override
  State<BrouserScreen> createState() => _BrouserScreenState();
}

class _BrouserScreenState extends State<BrouserScreen> {
  BrouserProvider? brouserProvidertrue,brouserProviderfalse;
  @override
  Widget build(BuildContext context) {
    brouserProviderfalse = Provider.of<BrouserProvider>(context,listen: false);
    brouserProvidertrue = Provider.of<BrouserProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("${brouserProviderfalse!.web[4]}"),),
        ),
    ),);
  }
}
