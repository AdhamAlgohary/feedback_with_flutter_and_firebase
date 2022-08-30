import 'package:feedback_with_mvvm/firebase/auth/email-and-pass/email_and_password.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_divider.dart';
import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:flutter/material.dart';
import 'package:feedback_with_mvvm/view-model/product_view_model.dart';
import 'package:provider/provider.dart';

import '../../../widgets/custom_icon_btn.dart';

class ChooseSessionScreen extends StatelessWidget {
  const ChooseSessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Session',
          style: style2,
        ),
        actions: [
          CustomIconBtn(
              icon: const Icon(Icons.logout),
              function: () async {
                await EmailAndPassword.eAP.signOut();
                Navigator.pop(context);
              }),
        ],
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: ProductViewModel().listTileContent.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    Provider.of<ProductViewModel>(context, listen: false)
                        .index = index;
                    Navigator.of(context).pushNamed("CustomSessionScreen");
                  },
                  title: Text(context
                      .watch<ProductViewModel>()
                      .listTileContent[index]['titleListTile']
                      .toString()),
                  subtitle: Text(context
                      .watch<ProductViewModel>()
                      .listTileContent[index]['subtitleListTile']
                      .toString()),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(context
                        .watch<ProductViewModel>()
                        .listTileContent[index]['leadingListTile']
                        .toString()),
                  ),
                  trailing: icon,
                ),
                CustomDivider(
                  height: 0.01 * height,
                  color: Colors.black,
                ),
              ],
            );
          }),
    );
  }
}
