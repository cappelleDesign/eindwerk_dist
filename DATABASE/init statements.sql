-- souffe_reviews mysql stuff

-- images
INSERT INTO `images` (`image_id`, `img_uri`, `alt`) VALUES (NULL, 'avatar_dummy1.jpg', 'avatar dummy one'), (NULL, 'avatar_dummy2.jpg', 'avatar dummy two');
INSERT INTO `images` (`image_id`, `img_uri`, `alt`) VALUES (NULL, 'achievement_dummy1.jpg', 'achievement dummy one'), (NULL, 'achievement_dummy2.jpg', 'achievement dummy two'), (NULL, 'header_dummy1.jpg', 'header dummy one'), (NULL, 'gallery_dummy1.jpg', 'gallery dummy one'), (NULL, 'gallery_dummy2.jpg', 'gallery dummy two'), (NULL, 'gallery_dummy3.jpg', 'gallery dummy three'), (NULL, 'gallery_dummy4.jpg', 'gallery dummy four'), (NULL, 'gallery_dummy5.jpg', 'gallery dummy five'), (NULL, 'newsfeed_dummy1.jpg', 'newsfeed dummy one'), (NULL, 'newsfeed_dummy2.jpg', 'newsfeed dummy two');
-- avatars 
INSERT INTO `avatars` (`avatar_id`, `images_image_id`, `tier`) VALUES (NULL, '1', '1'), (NULL, '2', '1');
-- user roles
INSERT INTO `user_roles` (`user_role_id`, `user_role_name`, `user_role_access_flag`, `user_role_karma_min`, `user_role_diamond_min`) VALUES (NULL, 'Noob', '1', '0', '0'), (NULL, 'freshmen', '2', '15', '0');
-- users
INSERT INTO `users` (`user_id`, `avatars_avatar_id`, `user_roles_user_role_id`, `user_name`, `user_hash_salt`, `user_email`, `user_karma`, `user_reg_key`, `user_warnings`, `user_diamonds`, `preference_datetime_format`, `user_created`, `last_login`, `donated_amount`, `active_seconds`) VALUES (NULL, '1', '1', 'jens', '$2y$10$1lxrzaC0jwVa5nI8m/3hCezY65JKQ0XLxUDX282007kf44qBxy70K', 'jens@localhost.be', '0', '84PP1gZf1WPA5R390KJNNEGRFbK1CrtKviAxyzNAvCaBtdLuYvhL9YCOamQM', '0', '0', 'd/m/Y H:i:s', '2016-03-14 00:00:00', '2016-03-14 00:00:00', '0', '0'), (NULL, '2', '2', 'jens2', '$2y$10$1lxrzaC0jwVa5nI8m/3hCezY65JKQ0XLxUDX282007kf44qBxy70K', 'jens2@localhost.be', '16', '84PP1gZf1WPA5R390KJNNEGRFbK1CrtKviAxyzNAvCaBtdLuYvhL9YCOamQM', '0', '0', 'd/m/Y H:i:s', '2016-03-01 00:00:00', '2016-03-01 00:00:00', '0', '18000');
-- achievements
INSERT INTO `achievements` (`achievement_id`, `image_id`, `name`, `desc`, `karma_award`, `diamond_award`) VALUES (NULL, '3', 'achievement first', 'Achievement unlocked for being a dummy tester. that''s what this is.. a dummy', '10', '1'), (NULL, '4', 'achievement second', 'The second dummy achievement.. My dummy hahaa', '120', '5');
-- achievements_users
INSERT INTO `achievements_users` (`user_id`, `achievements_id`) VALUES ('1', '1'), ('2', '1'), ('2', '2');
-- games
INSERT INTO `games` (`game_id`, `game_name`, `game_release`, `game_website`, `game_publisher`, `game_developer`, `min_online_players`, `max_online_players`, `max_offline_players`, `story_max_players`, `has_storymode`) VALUES (NULL, 'game1', '2016-03-01', 'wwww.game1.com', 'Bethesda', 'Infinity Ward', '2', '16', '4', '4', '1');
-- genres
INSERT INTO `genres` (`genre_id`, `genre_name`, `genre_description`) VALUES (NULL, 'genre1', 'description about this genre'), (NULL, 'genre2', 'description about this genre');
-- platforms
INSERT INTO `platforms` (`platform_id`, `platform_name`) VALUES (NULL, 'Playstation 4'), (NULL, 'Xbox One');
-- game genre
INSERT INTO `game_genre` (`game_id`, `genre_id`) VALUES ('1', '1'), ('1', '2');
-- game platform
INSERT INTO `game_platform` (`game_id`, `platform_id`) VALUES ('1', '1'), ('1', '2');
-- newsfeeds 
INSERT INTO `newsfeeds` (`newsfeed_id`, `writer_id`, `image_id`, `newsfeed_subject`, `newsfeed_body`, `newsfeed_created`) VALUES (NULL, '1', '11', 'Dummy subject one', 'This is a newsfeed text and might become TXT field btw.. not sure if this has to be long or nog', '2016-03-02 00:00:00'), (NULL, '1', '12', 'dummy newsfeed 2', 'The text of this dummy hereeeee the newsfeed of your life gangsta', '2016-03-02 00:00:00');
-- notifications
INSERT INTO `notifications` (`notification_id`, `user_id`, `notification_txt`, `notification_date`, `notification_isread`) VALUES (NULL, '1', 'The first notification everrrrrrrrr. much important, very wow', '2016-03-14 00:00:00', '0'), (NULL, '2', 'The first notification everrrrrrrrr. much important, very wow', '2016-03-01 00:00:00', '0');
-- reviews
INSERT INTO `reviews` (`review_id`, `users_writer_id`, `game_id`, `platforms_platform_id`, `review_title`, `review_score`, `review_txt`, `review_video_url`, `review_created`) VALUES (NULL, '1', '1', '1', 'Game1: The good, the bad and the ugly', '8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt at quam vitae rhoncus. Suspendisse sollicitudin urna ut ipsum congue, sit amet ornare nisi scelerisque. Integer efficitur, dolor a dapibus malesuada, nibh felis mattis lorem, eu volutpat magna orci quis dolor. Fusce eu scelerisque dui. Donec facilisis mi orci, non finibus purus faucibus ac. Sed vel nulla ultrices tellus semper ultricies sit amet eu ante. Integer eros eros, tristique at sollicitudin ut, finibus ut sapien. Morbi vitae eros non ex mattis efficitur. Integer vitae urna lacus. Nam vestibulum nunc eu ante maximus, eget gravida urna posuere.Vestibulum diam tellus, dignissim et luctus vitae, posuere ultricies mi. Curabitur et urna sit amet lectus tincidunt maximus. Vivamus erat neque, fermentum et elit id, scelerisque sollicitudin sem. Praesent quis libero eleifend, tincidunt est vel, vulputate metus. Suspendisse dui purus, finibus vel neque a, sollicitudin consectetur nibh. Curabitur facilisis tempor varius. Praesent ac turpis non justo accumsan eleifend. Duis sed porta sem. Nullam blandit sit amet neque vel volutpat. Ut pretium mauris id neque condimentum pellentesque. Quisque nisi quam, lacinia id semper sit amet, convallis in tortor. Maecenas ac urna sed lectus lacinia congue. Etiam sagittis tristique orci, id congue magna vehicula et. Suspendisse facilisis suscipit arcu id elementum. Sed porttitor consequat dolor ut pharetra.', 'https://www.youtube.com/watch?v=dRjE1JwdDLI', '2016-03-14 17:33:49');
-- reviews images
INSERT INTO `reviews_has_images` (`reviews_review_id`, `images_image_id`, `headerpic`) VALUES ('1', '5', '1'), ('1', '6', '0'), ('1', '7', '0'), ('1', '8', '0'), ('1', '9', '0'), ('1', '10', '0');
-- review user scores
INSERT INTO `review_user_scores` (`review_id`, `user_id`, `score`) VALUES ('1', '2', '8');
-- review votes
INSERT INTO `review_votes` (`users_user_id`, `reviews_review_id`, `linked_notification_id`, `vote_flag`) VALUES ('1', '1', '1','1'), ('2', '1', '1', '2');
-- comments
INSERT INTO `comments` (`comment_id`, `users_writer_id`, `parent_id`, `comment_txt`, `comment_created`) VALUES (NULL, '1', '1', 'Much review, such wow!', '2016-03-01 00:00:00');
INSERT INTO `comments` (`comment_id`, `users_writer_id`, `parent_id`, `comment_txt`, `comment_created`) VALUES (NULL, '2', '1', 'yeah buddy', '2016-03-01 00:00:12');
-- comment votes
INSERT INTO `comment_votes` (`comment_id`, `users_upvoter_id`, `linked_notification_id`,`vote_flag`) VALUES ('1', '2', '1','2'), ('2', '1', '1', '2');
-- good bad tags
INSERT INTO `goods_bads_tags` (`good_bad_tag_id`, `review_id`, `good_bad_tag_txt`, `good_bad_tag_type`) VALUES (NULL, '1', 'very nice game indeed', 'good'), (NULL, '1', 'very nice graphics', 'good'), (NULL, '1', 'i did not see tits', 'bad'), (NULL, '1', 'game1', 'tag'), (NULL, '1', 'nice grapics', 'tag');