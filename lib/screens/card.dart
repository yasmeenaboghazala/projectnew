import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class card extends StatelessWidget {
  card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Card(
        elevation: 5, // Controls the shadow depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(10.0),
          width: 250.0,
          height: 150.0,
          child: ListTile(
            title: Text("ساعه", style: TextStyle(fontSize: 22)),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 3),
              child: IconButton(
                onPressed: () {
                  // _launchURL('https://youtu.be/VW2qgmUK8TU');
                },
                icon: Icon(
                  Icons.lock_clock,
                  size: 26,
                  color: Color(0xFF2B475E),
                ),
              ),
            ),
            subtitle: Text(
              'عنوان الفيديو',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.blue, borderRadius: BorderRadius.circular(12)),

//       height: MediaQuery.of(context).size.height / 7,
//       width: MediaQuery.of(context).size.width / 1.9,
//       // padding: const EdgeInsets.all(20),
//       margin: const EdgeInsets.all(10),
//       child: ListTile(
//         subtitle: Padding(
//           padding: EdgeInsets.only(left: 80),
//           child: Text("ساعه", style: TextStyle(fontSize: 22)),
//         ),
//         trailing: Padding(
//           padding: const EdgeInsets.only(right: 14),
//           child: IconButton(
//             onPressed: () {
//               _launchURL('https://youtu.be/VW2qgmUK8TU');
//             },
//             icon: Icon(
//               Icons.lock_clock,
//               size: 26,
//               color: Color(0xFF2B475E),
//             ),
//           ),
//         ),
//         title: Padding(
//           padding: EdgeInsets.only(left: 20),
//           child: Text(
//             'عنوان الفيديو',
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//       ),
//     );
//   }
// }

// _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     CircularProgressIndicator();
//   }
// }
