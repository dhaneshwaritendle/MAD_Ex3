import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "Paul Muad'dib Usul";
  String email = "paulatreides@gmail.com";
  String pass="223456";
  String dept = "Information Technology";
  String year= "Third year ";
  String skills="Web developer/ Backend developer ";
  // String phone = "XXXXXXXX89";
  // String address = "...";
  Icon visibilityIcon = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Profile Page", style: TextStyle(color: Colors.white)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/en/f/ff/Timoth%C3%A9e_Chalamet_as_Paul_Atreides_%28Dune_2021%29.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10),
              // child: Container(
              //   padding: const EdgeInsets.all(25),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //
              //   ),
              //
              // ),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            Column(
              children: [
                // email card
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.green.shade200,
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(email, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.green.shade200,
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(pass, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
              //   education
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.green.shade200,
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(year, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),

                //   info card
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.green.shade200,
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(dept, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.green.shade200,
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(skills, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),



              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(()  {
            name = "Paul Muad'dib Usul";
            if (pass == "...") {
              pass = "22345";
            } else {
              pass = "...";
            }

            if (visibilityIcon.icon == Icons.visibility) {
              visibilityIcon = const Icon(Icons.visibility_off);
            } else {
              visibilityIcon = const Icon(Icons.visibility);
            }
          });
        },
        tooltip: 'Update Profile',
        child: visibilityIcon,
      ),
    );
  }
}
