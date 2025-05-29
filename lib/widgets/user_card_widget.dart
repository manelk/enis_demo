import 'package:flutter/material.dart';
import 'package:new_app/widgets/text_card_user.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          // element one
          Card(
            color: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("url"),
                  radius: 40,
                  child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/019/879/186/non_2x/user-icon-on-transparent-background-free-png.pngsss",
                    errorBuilder:
                        (
                          BuildContext context,
                          Object error,
                          StackTrace? stackTrace,
                        ) {
                          return Image.asset("assets/images/user_image.png");
                        },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextCardUser(
                          label: "First Name: ",
                          value: "Manel",
                          textColor: Colors.red,
                        ),
                        TextCardUser(label: "Last Name: ", value: "Kacem"),
                        TextCardUser(label: "University: ", value: "ENIS"),
                        TextCardUser(label: "CIN: ", value: "00000000"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // element two
          OutlinedButton.icon(
            label: Text("Go to country page"),
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),

          // element two
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Go to country page"),
          ),
        ],
      ),
    );
  }
}
