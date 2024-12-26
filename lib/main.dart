import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const VideoFolders());
}

class VideoFolders extends StatefulWidget {
  const VideoFolders({super.key});

  @override
  State<VideoFolders> createState() => _VideoFoldersState();
}

class _VideoFoldersState extends State<VideoFolders> {
  List<String> videoFolders = ['khalid'];
  bool hasPermission = true;

  @override
  void initState() {
    ();
    requestAudioAndVideoPermission();
    super.initState();
  }

  

  Future<void> requestAudioAndVideoPermission() async {
    // Check location permission
    PermissionStatus status = await Permission.audio.request();
    if (status.isGranted) {
    } else {
      setState(() {});
    }
     PermissionStatus status1 = await Permission.videos.request();
     if (status1.isGranted) {
    } else {
      setState(() {});
    }
     PermissionStatus status2 = await Permission.storage.request();
      if (status2.isGranted) {
    } else {
      setState(() {});
    }
  }

 
  Future<void> requestStoragePermission() async {
    // Check location permission
    PermissionStatus status = await Permission.storage.request();
    if (status.isGranted) {
    } else {
      setState(() {
        "Location permission denied";
      });
    }
  }

  // Fetch video folders after permission is granted

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('khalid')),
      ),
    );
  }
}
