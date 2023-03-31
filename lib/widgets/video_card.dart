import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_clone/screens/nav_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  final bool hasPadding;
  final VoidCallback? onTap;

  const VideoCard({
    Key? key,
    required this.video,
    this.hasPadding = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read(selectedVideoProvider).state = video;
        context
            .read(miniplayerControllerProvider)
            .state
            .animateToHeight(state: PanelState.MAX);
        if (onTap != null) onTap!();
      },
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: hasPadding ? 12 : 0),
                child: Image.network(
                  video.thumbnail,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 8,
                right: hasPadding ? 20 : 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  color: Colors.black,
                  child: Text(
                    video.duration,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => print('Navigate to Profile'),
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(video.author.profileImage),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                          child: Text(
                        video.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 15),
                      )),
                      Flexible(
                        child: Text(
                          '${video.author.username} • ${video.viewCount} • ${timeago.format(video.timeStamp)}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    size: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
