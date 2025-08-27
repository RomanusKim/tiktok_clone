import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/feautres/videos/widgets/video_post.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;

  final PageController _pageController = PageController();

  final _scrollDuration = Duration(milliseconds: 250);
  final _scrollCurve = Curves.linear;

  List<Color> colors = [Colors.blue, Colors.red, Colors.yellow, Colors.teal];

  void _onPageChanged(int page) {
    _pageController.animateToPage(
      page,
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      colors.addAll([Colors.blue, Colors.red, Colors.yellow, Colors.teal]);
    }
    setState(() {});
  }

  void _onVideoFinished() {
    _pageController.nextPage(duration: _scrollDuration, curve: _scrollCurve);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: _itemCount,
      onPageChanged: _onPageChanged,
      itemBuilder: (context, index) =>
          VideoPost(onVideoFinished: _onVideoFinished, index: index),
    );
  }
}
