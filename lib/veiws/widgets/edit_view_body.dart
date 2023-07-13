import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/veiws/widgets/custom_text_feild.dart';

import 'custom_app_bar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Notes",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextFeild(hintText: "Content", maxlines: 5),
        ],
      ),
    );
  }
}
