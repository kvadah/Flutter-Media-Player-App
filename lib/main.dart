import 'package:flutter/material.dart';

void main() {
  runApp(const VideoFolders());
}

class VideoFolders extends StatefulWidget {
  const VideoFolders({super.key});

  @override
  State<VideoFolders> createState() => _VideoFoldersState();
}

class _VideoFoldersState extends State<VideoFolders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Videos'),
        ),
        body: const Column(
          children: [Center(child: Text('Videos folders'))],
        ));
  }
}
