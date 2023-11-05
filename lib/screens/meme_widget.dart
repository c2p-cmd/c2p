import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

class MemeWidget extends StatelessWidget {
  const MemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return FutureBuilder(
      future: fetchMeme(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          return Image(
            image: snapshot.data!,
            height: size.width * 0.5,
            fit: BoxFit.fitHeight,
          );
        }

        return Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey.shade800,
          child: const SizedBox(
            width: 30,
            height: 30,
          ),
        );
      },
    );
  }

  Future<ImageProvider> fetchMeme() async {
    try {
      final response = await http.get(
        Uri.parse("https://meme-api.com/gimme/ProgrammerHumor/1"),
        headers: {
          "content-type": "application/json",
        },
      );

      if (response.statusCode != 200) {
        throw http.ClientException(response.reasonPhrase.toString());
      }

      final body = jsonDecode(utf8.decode(response.bodyBytes));
      final links = body["memes"][0]["preview"] as List;

      return NetworkImage(links.last);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
