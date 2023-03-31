import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../data.dart';

class videoInfo extends StatelessWidget {
  final Video video;

  const videoInfo({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(video.title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 15)),
          const SizedBox(height: 8),
          Text(
            '${video.viewCount} views • ${timeago.format(video.timeStamp)}',
            style:
                Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14),
          ),
          const Divider(),
          _ActionsRow(video: video),
          const Divider(),
          AuthorInfo(user: video.author)
        ],
      ),
    );
  }
}

class _ActionsRow extends StatelessWidget {
  final Video video;

  const _ActionsRow({Key? key, required this.video}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAction(context, Icons.thumb_up_alt_outlined, video.likes),
        _buildAction(context, Icons.thumb_down_alt_outlined, video.dislikes),
        _buildAction(context, Icons.reply_outlined, 'Shared'),
        _buildAction(context, Icons.download_outlined, 'Download'),
        _buildAction(context, Icons.library_add_outlined, 'Save')
      ],
    );
  }
}

Widget _buildAction(BuildContext context, IconData icon, String label) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        const SizedBox(height: 6),
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        )
      ],
    ),
  );
}

class AuthorInfo extends StatelessWidget {
  final User user;

  const AuthorInfo({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Navigate to Profile'),
      child: Row(
        children: [
          CircleAvatar(foregroundImage: NetworkImage(user.profileImage)),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                    child: Text(
                  user.username,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 15),
                )),
                Flexible(
                  child: Text(
                    '${user.subscribers}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'SUBSCRIBE',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.red),
              ))
        ],
      ),
    );
  }
}
