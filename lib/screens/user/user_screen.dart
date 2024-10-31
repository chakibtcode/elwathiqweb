import 'package:flutter/material.dart';
import 'package:elwathiqweb/constants.dart';
import 'package:elwathiqweb/models/Blog.dart';
import 'package:elwathiqweb/responsive.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: List.generate(
                blogPosts.length,
                (index) => BlogPostCard(blog: blogPosts[index]),
              ),
            ),
          ),
          if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
          // Sidebar
          if (!Responsive.isMobile(context))
            Expanded(
              child: Column(
                children: [
                  Search(),
                  SizedBox(height: kDefaultPadding),
                  Categories(),
                  SizedBox(height: kDefaultPadding),
                  RecentPosts(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}