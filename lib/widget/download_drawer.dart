import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadDrawer extends StatefulWidget {
  const DownloadDrawer({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  _DownloadDrawerState createState() => _DownloadDrawerState();
}

class _DownloadDrawerState extends State<DownloadDrawer> {
  double downloadingPercent = 0;
  String savePath = "";
  bool downloading = false;
  bool downLoadFail = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            downLoadFail
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    child: const Text(
                      'X Error',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    onPressed: () => {Navigator.pop(context)},
                  )
                : downloading
                    ? SizedBox(
                        height: 20,
                        child: LinearProgressIndicator(
                          value: downloadingPercent,
                          backgroundColor: Colors.cyan[100],
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.cyan[800]!),
                        ))
                    : ElevatedButton(
                        child: const Text(
                          'Download Image',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        onPressed: () => {
                          Future.any([
                            downloadFile(),
                            Future.delayed(const Duration(seconds: 4), () {
                              setState(() {
                                downloading = false;
                                downLoadFail = true;
                              });
                            })
                          ])
                        },
                      )
          ],
        ),
      ),
    );
  }

  Future downloadFile() async {
    try {
      final dio = Dio();
      final fileName = widget.url.substring(widget.url.lastIndexOf("/") + 1);
      savePath = await getFilePath(fileName);
      await dio.download(widget.url, savePath, onReceiveProgress: (rec, total) {
        setState(() {
          downloading = true;
          downloadingPercent = rec / total;
        });
      });
      setState(() {
        downloading = true;
        downLoadFail = false;
        Navigator.pop(context);
      });
    } catch (e) {
      setState(() {
        downLoadFail = true;
      });
    }
  }

  Future<String> getFilePath(uniqueFileName) async {
    String path = '';

    final dir = await getApplicationDocumentsDirectory();

    path = '${dir.path}/$uniqueFileName';

    return path;
  }
}
