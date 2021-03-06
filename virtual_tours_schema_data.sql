ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [fk_UserRoles_Users]
GO
ALTER TABLE [dbo].[user_panoramic_associative] DROP CONSTRAINT [fk_Users_user_panoramic_associative_UserId]
GO
ALTER TABLE [dbo].[user_panoramic_associative] DROP CONSTRAINT [fk_panoramic_images_user_panoramic_associative_panoramic_image_id]
GO
ALTER TABLE [dbo].[trails] DROP CONSTRAINT [fk_trails_parks_park_id]
GO
ALTER TABLE [dbo].[trail_sounds_associative] DROP CONSTRAINT [fk_trail_sounds_associative_sound_category_id]
GO
ALTER TABLE [dbo].[trail_sounds_associative] DROP CONSTRAINT [fk_panoramic_images_trail_sounds_associative_panoramic_image_id]
GO
ALTER TABLE [dbo].[trail_sounds] DROP CONSTRAINT [fk_trail_sounds_sound_category_id]
GO
ALTER TABLE [dbo].[trail_images] DROP CONSTRAINT [fk_trails_trail_images_trail_id]
GO
ALTER TABLE [dbo].[points_of_interest] DROP CONSTRAINT [fk_points_of_interest_trail_id]
GO
ALTER TABLE [dbo].[points_of_interest] DROP CONSTRAINT [fk_points_of_interest_panoramic_image_id]
GO
ALTER TABLE [dbo].[park_images] DROP CONSTRAINT [fk_park_images_parks_park_id]
GO
ALTER TABLE [dbo].[panoramic_linking] DROP CONSTRAINT [fk_panoramic_linking_source_panoramic_id]
GO
ALTER TABLE [dbo].[panoramic_linking] DROP CONSTRAINT [fk_panoramic_linking_destination_panoramic_id]
GO
ALTER TABLE [dbo].[panoramic_images] DROP CONSTRAINT [fk_trails_panoramic_images_trail_id]
GO
ALTER TABLE [dbo].[last_seen_videos] DROP CONSTRAINT [fk_panoramic_images_last_seen_videos_panoramic_image_id]
GO
ALTER TABLE [dbo].[last_seen_images] DROP CONSTRAINT [fk_panoramic_images_last_seen_images_panoramic_image_id]
GO
ALTER TABLE [dbo].[panoramic_linking] DROP CONSTRAINT [DF__panoramic__desti__42E1EEFE]
GO
ALTER TABLE [dbo].[panoramic_linking] DROP CONSTRAINT [DF__panoramic__desti__41EDCAC5]
GO
ALTER TABLE [dbo].[panoramic_linking] DROP CONSTRAINT [DF__panoramic__hotsp__40F9A68C]
GO
ALTER TABLE [dbo].[panoramic_linking] DROP CONSTRAINT [DF__panoramic__hotsp__40058253]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[user_panoramic_associative]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[user_panoramic_associative]
GO
/****** Object:  Table [dbo].[trails]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[trails]
GO
/****** Object:  Table [dbo].[trail_sounds_associative]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[trail_sounds_associative]
GO
/****** Object:  Table [dbo].[trail_sounds]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[trail_sounds]
GO
/****** Object:  Table [dbo].[trail_images]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[trail_images]
GO
/****** Object:  Table [dbo].[sound_categories]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[sound_categories]
GO
/****** Object:  Table [dbo].[points_of_interest]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[points_of_interest]
GO
/****** Object:  Table [dbo].[parks]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[parks]
GO
/****** Object:  Table [dbo].[park_images]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[park_images]
GO
/****** Object:  Table [dbo].[panoramic_linking]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[panoramic_linking]
GO
/****** Object:  Table [dbo].[panoramic_images]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[panoramic_images]
GO
/****** Object:  Table [dbo].[last_seen_videos]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[last_seen_videos]
GO
/****** Object:  Table [dbo].[last_seen_images]    Script Date: 4/26/2018 11:45:56 AM ******/
DROP TABLE [dbo].[last_seen_images]
GO
/****** Object:  Table [dbo].[last_seen_images]    Script Date: 4/26/2018 11:45:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[last_seen_images](
	[last_seen_images_id] [int] IDENTITY(1,1) NOT NULL,
	[panoramic_image_id] [int] NOT NULL,
	[description] [varchar](max) NULL,
	[image_address] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[pitch] [int] NOT NULL,
	[yaw] [int] NOT NULL,
 CONSTRAINT [pk_last_seen_images] PRIMARY KEY CLUSTERED 
(
	[last_seen_images_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[last_seen_videos]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[last_seen_videos](
	[last_seen_videos_id] [int] IDENTITY(1,1) NOT NULL,
	[panoramic_image_id] [int] NOT NULL,
	[description] [varchar](max) NULL,
	[video_address] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[pitch] [int] NOT NULL,
	[yaw] [int] NOT NULL,
	[has_sound] [bit] NULL,
	[duration] [float] NULL,
	[volume] [int] NULL,
 CONSTRAINT [pk_last_seen_videos] PRIMARY KEY CLUSTERED 
(
	[last_seen_videos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[panoramic_images]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[panoramic_images](
	[panoramic_image_id] [int] IDENTITY(1,1) NOT NULL,
	[trail_id] [int] NOT NULL,
	[image_address] [varchar](max) NOT NULL,
	[image_latitude] [float] NOT NULL,
	[image_longitude] [float] NOT NULL,
	[is_trail_head] [bit] NOT NULL,
 CONSTRAINT [pk_panoramic_image_id] PRIMARY KEY CLUSTERED 
(
	[panoramic_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[panoramic_linking]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[panoramic_linking](
	[source_panoramic_id] [int] NOT NULL,
	[destination_panoramic_id] [int] NOT NULL,
	[hotspot_pitch] [int] NULL,
	[hotspot_yaw] [int] NULL,
	[destination_start_pitch] [int] NULL,
	[destination_start_yaw] [int] NULL,
 CONSTRAINT [pk_panoramic_linking] PRIMARY KEY CLUSTERED 
(
	[source_panoramic_id] ASC,
	[destination_panoramic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[park_images]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[park_images](
	[park_image_id] [int] IDENTITY(1,1) NOT NULL,
	[park_id] [int] NOT NULL,
	[park_image_address] [varchar](max) NOT NULL,
	[local] [bit] NOT NULL,
 CONSTRAINT [pk_park_image_id] PRIMARY KEY CLUSTERED 
(
	[park_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parks]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parks](
	[park_id] [int] IDENTITY(1,1) NOT NULL,
	[park_name] [varchar](max) NOT NULL,
	[park_description] [varchar](max) NOT NULL,
	[park_latitude] [float] NOT NULL,
	[park_longitude] [float] NOT NULL,
	[default_zoom] [int] NOT NULL,
 CONSTRAINT [pk_parks_park_id] PRIMARY KEY CLUSTERED 
(
	[park_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[points_of_interest]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[points_of_interest](
	[trail_id] [int] NOT NULL,
	[panoramic_image_id] [int] NOT NULL,
 CONSTRAINT [pk_points_of_interest] PRIMARY KEY CLUSTERED 
(
	[trail_id] ASC,
	[panoramic_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sound_categories]    Script Date: 4/26/2018 11:45:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sound_categories](
	[sound_category_id] [int] IDENTITY(1,1) NOT NULL,
	[sound_category_name] [varchar](max) NULL,
 CONSTRAINT [pk_sound_categories] PRIMARY KEY CLUSTERED 
(
	[sound_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trail_images]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trail_images](
	[trail_image_id] [int] IDENTITY(1,1) NOT NULL,
	[trail_id] [int] NOT NULL,
	[trail_image_address] [varchar](max) NOT NULL,
	[local] [bit] NOT NULL,
 CONSTRAINT [pk_trail_image_id] PRIMARY KEY CLUSTERED 
(
	[trail_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trail_sounds]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trail_sounds](
	[trail_sound_id] [int] IDENTITY(1,1) NOT NULL,
	[trail_sound_file] [varchar](max) NULL,
	[sound_category_id] [int] NULL,
 CONSTRAINT [pk_trail_sound_id] PRIMARY KEY CLUSTERED 
(
	[trail_sound_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trail_sounds_associative]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trail_sounds_associative](
	[panoramic_image_id] [int] NOT NULL,
	[sound_category_id] [int] NOT NULL,
 CONSTRAINT [pk_trail_sounds_associative] PRIMARY KEY CLUSTERED 
(
	[panoramic_image_id] ASC,
	[sound_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trails]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trails](
	[trail_id] [int] IDENTITY(1,1) NOT NULL,
	[park_id] [int] NOT NULL,
	[trail_name] [varchar](max) NOT NULL,
	[trail_description] [varchar](max) NOT NULL,
 CONSTRAINT [pk_trails_trail_id] PRIMARY KEY CLUSTERED 
(
	[trail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_panoramic_associative]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_panoramic_associative](
	[UserId] [uniqueidentifier] NOT NULL,
	[panoramic_image_id] [int] NOT NULL,
 CONSTRAINT [pk_user_panoramic_associative] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[panoramic_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[Role] [varchar](100) NOT NULL,
 CONSTRAINT [pk_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/26/2018 11:45:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [varchar](max) NOT NULL,
	[PasswordHash] [varchar](max) NULL,
	[SecurityStamp] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[last_seen_images] ON 
GO
INSERT [dbo].[last_seen_images] ([last_seen_images_id], [panoramic_image_id], [description], [image_address], [title], [pitch], [yaw]) VALUES (1, 27, N'Blacksmith, spiritualist, and artist Henry Church carved the images in the rock, dating the piece in 1885.', N'https://pbs.twimg.com/media/DEVebFoXUAAA0S3.jpg', N'Henry Church Rock', -4, -97)
GO
SET IDENTITY_INSERT [dbo].[last_seen_images] OFF
GO
SET IDENTITY_INSERT [dbo].[last_seen_videos] ON 
GO
INSERT [dbo].[last_seen_videos] ([last_seen_videos_id], [panoramic_image_id], [description], [video_address], [title], [pitch], [yaw], [has_sound], [duration], [volume]) VALUES (1, 27, N'Waterfall near the Henry Church Rock', N'https://www.youtube.com/embed/8VHltLWY0jk', N'Waterfall', -2, 85, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[last_seen_videos] OFF
GO
SET IDENTITY_INSERT [dbo].[panoramic_images] ON 
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (1, 2, N'https://i.imgur.com/m44owqT.jpg', 41.416393, -81.414979, 1)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (2, 2, N'https://i.imgur.com/6DGsx7r.jpg', 41.416174, -81.414924, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (3, 2, N'https://i.imgur.com/7g1ObAR.jpg', 41.416025, -81.414847, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (4, 2, N'https://i.imgur.com/qFMVIyd.jpg', 41.41582, -81.41487, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (5, 2, N'https://i.imgur.com/P6cwRuQ.jpg', 41.415646, -81.414942, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (6, 2, N'https://i.imgur.com/3i2FW1A.jpg', 41.41547, -81.414954, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (7, 2, N'https://i.imgur.com/Kd4ZSxD.jpg', 41.415275, -81.415101, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (8, 2, N'https://i.imgur.com/jd5MI0x.jpg', 41.415211, -81.415157, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (9, 2, N'https://i.imgur.com/iSZjIpe.jpg', 41.414931, -81.415241, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (10, 2, N'https://i.imgur.com/FtlSfOp.jpg', 41.414712, -81.415392, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (11, 2, N'https://i.imgur.com/wed9OKv.jpg', 41.414607, -81.415314, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (12, 2, N'https://i.imgur.com/9m6O4bm.jpg', 41.414347, -81.415342, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (13, 2, N'https://i.imgur.com/awkNJsM.jpg', 41.413987, -81.415443, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (14, 2, N'https://i.imgur.com/f0zUlBR.jpg', 41.413947, -81.415299, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (15, 2, N'https://i.imgur.com/t0i5UxZ.jpg', 41.413742, -81.415527, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (16, 2, N'https://i.imgur.com/eJlo3rW.jpg', 41.413485, -81.415608, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (17, 2, N'https://i.imgur.com/D0NRnVU.jpg', 41.413249, -81.415656, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (18, 2, N'https://i.imgur.com/eZjYSql.jpg', 41.413128, -81.415607, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (19, 2, N'https://i.imgur.com/Ii3UKpS.jpg', 41.412887, -81.415675, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (20, 2, N'https://i.imgur.com/cMGjZ7H.jpg', 41.412892, -81.415444, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (21, 2, N'https://i.imgur.com/xqlQsZS.jpg', 41.41273, -81.415393, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (22, 2, N'https://i.imgur.com/M1usx7u.jpg', 41.412936, -81.415476, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (23, 2, N'https://i.imgur.com/nQRXR6W.jpg', 41.41307, -81.415408, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (24, 2, N'https://i.imgur.com/QY9uBiJ.jpg', 41.413142, -81.415187, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (25, 2, N'https://i.imgur.com/JB6ouLO.jpg', 41.413606, -81.415113, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (26, 2, N'https://i.imgur.com/FLthASw.jpg', 41.413746, -81.415185, 0)
GO
INSERT [dbo].[panoramic_images] ([panoramic_image_id], [trail_id], [image_address], [image_latitude], [image_longitude], [is_trail_head]) VALUES (27, 2, N'https://i.imgur.com/NU2xdeS.jpg', 41.413554, -81.414932, 0)
GO
SET IDENTITY_INSERT [dbo].[panoramic_images] OFF
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (1, 2, -3, 129, 0, 55)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (2, 1, -2, -128, 0, -10)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (2, 3, -3, 72, 0, 40)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (3, 2, -4, -135, 0, -120)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (3, 4, -3, 55, 0, 80)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (4, 3, -4, -101, 0, -120)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (4, 5, -2, 93, 0, -150)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (5, 4, -3, 33, 0, -105)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (5, 6, -2, -140, 0, -250)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (6, 5, -3, -65, 0, 45)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (6, 7, -2, -250, 0, -150)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (7, 6, -3, 32, 0, -65)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (7, 8, -4, -145, 0, -220)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (8, 7, 0, -29, 0, 35)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (8, 9, -2, -221, 0, -250)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (9, 8, -3, -60, 0, -20)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (9, 10, -1, -252, 0, -250)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (10, 9, -3, -75, 0, -50)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (10, 11, -1, 109, 0, 30)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (11, 10, -3, -154, 0, -75)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (11, 12, -1, 21, 0, -150)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (12, 11, -3, 38, 0, -155)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (12, 13, -1, -145, 0, -100)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (13, 12, -2, 68, 0, 25)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (13, 14, -2, -100, 0, -185)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (14, 13, -2, -12, 0, 60)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (14, 15, -4, -196, 0, -245)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (15, 14, 1, -71, 0, 0)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (15, 16, -2, -258, 0, -310)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (16, 15, -4, -138, 0, -70)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (16, 17, 4, -320, 0, -320)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (17, 16, -7, -127, 0, -150)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (17, 18, -5, -333, 0, -160)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (18, 17, -2, 5, 0, -130)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (18, 19, -4, -158, 0, -250)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (19, 18, 0, -34, 0, 20)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (19, 20, -29, 81, 0, 90)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (20, 19, 20, -145, 0, 0)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (20, 21, -25, 83, 0, 0)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (21, 20, 15, -20, 0, -140)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (21, 22, -24, 5, 0, 70)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (22, 21, 18, -112, 0, -50)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (22, 23, -6, 63, 0, 70)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (23, 22, 1, -110, 0, -90)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (23, 24, -3, 57, 0, 20)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (24, 23, -2, -165, 0, -90)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (24, 25, -3, 10, 0, 0)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (25, 24, -12, -195, 0, -170)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (25, 26, -12, -23, 0, 0)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (26, 25, -6, -150, 0, -180)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (26, 27, -27, 108, 0, -120)
GO
INSERT [dbo].[panoramic_linking] ([source_panoramic_id], [destination_panoramic_id], [hotspot_pitch], [hotspot_yaw], [destination_start_pitch], [destination_start_yaw]) VALUES (27, 26, 24, -45, 0, 180)
GO
SET IDENTITY_INSERT [dbo].[park_images] ON 
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (1, 1, N'https://s3.us-east-2.amazonaws.com/metropark/acacia.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (2, 2, N'https://s3.us-east-2.amazonaws.com/metropark/bedford.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (3, 3, N'https://s3.us-east-2.amazonaws.com/metropark/bigcreek.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (4, 4, N'https://s3.us-east-2.amazonaws.com/metropark/bradleywoods.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (5, 5, N'https://s3.us-east-2.amazonaws.com/metropark/brecksville.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (6, 6, N'https://s3.us-east-2.amazonaws.com/metropark/brookside.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (7, 7, N'https://s3.us-east-2.amazonaws.com/metropark/euclidcreek.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (8, 8, N'https://s3.us-east-2.amazonaws.com/metropark/garfield.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (9, 9, N'https://s3.us-east-2.amazonaws.com/metropark/hinkley.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (10, 10, N'https://s3.us-east-2.amazonaws.com/metropark/huntington.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (11, 11, N'https://s3.us-east-2.amazonaws.com/metropark/lakefront.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (12, 12, N'https://s3.us-east-2.amazonaws.com/metropark/millstream.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (13, 13, N'https://s3.us-east-2.amazonaws.com/metropark/northchagrin.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (14, 18, N'https://s3.us-east-2.amazonaws.com/metropark/rockyriver.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (15, 19, N'https://s3.us-east-2.amazonaws.com/metropark/southchagrin.jpg', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (16, 20, N'http://hikingohioparks.com/images/south-chagrin-reservation-picture-8.JPG', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (17, 21, N'https://outgress.com/proxy/aHR0cDovL2xoNC5nZ3BodC5jb20vNlVhZWwxaVJLRlNLOGdFUDNLQ2pYUG5EOUxlUTFMYzRKLUFYNDl4T3gwejQzWjBBcWNQN1Eyb0F2LVZtdHFkZlFoOUVtX2lrTVNYYjJLYmZncUFmblE%3D/image.png', 0)
GO
INSERT [dbo].[park_images] ([park_image_id], [park_id], [park_image_address], [local]) VALUES (18, 22, N'https://photos.smugmug.com/Portfolio/Ohio-Parks-and-Gardens/Metroparks/West-Creek-Reservation/i-RpbkBgD/0/468bf620/M/WestCreek_7-28-2013_2489-M.jpg', 0)
GO
SET IDENTITY_INSERT [dbo].[park_images] OFF
GO
SET IDENTITY_INSERT [dbo].[parks] ON 
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (1, N'Acacia', N'Acacia Reservation, a 155-acre green space oasis, is located in the City of Lyndhurst. The west branch of Euclid Creek flows northwest through Acacia Reservation to join the main creek branch in Euclid Creek Reservation. A 1.7-mile paved loop trail is located in the Reservation, and the building at the main entrance is currently available to rent for programming and events.', 41.505898, -81.492452, 15)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (2, N'Bedford Reservation', N'This reservation features a deep gorge -- declared a National Natural Landmark -- carved out by Tinker’s Creek, with picturesque vistas and waterfalls. Mature trees and abundant wildflowers are found within its deep forests. It offers trails for hiking, mountain biking and horseback riding, as well as picnic areas and Shawnee Hills Golf Course. At over 2,200 acres, Bedford Reservation gives the appearance of a continuous forest of large trees as it was not logged due to its rugged terrain. Tinker’s Creek, the largest tributary of the Cuyahoga River. A scenic overlook along Gorge Parkway offers a spectacular vista, particularly in the fall.', 41.377143, -81.56566, 13)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (3, N'Big Creek Reservation', N'A major component of Big Creek Reservation is Big Creek Parkway, a refreshing alternative to the standard suburban commuter routes to Cleveland. The reservation runs parallel to Pearl Road from Valley Parkway to Brookpark Road, and is located in Brooklyn, Parma, Parma Heights, Middleburg Heights, and Strongsville. Undoubtedly the highlight of the reservation is the Lake to Lake Trail, a 2.4 mile, universally accessible all purpose trail that connects Lake Abram to Lake Isaac. On foot, by bicycle, or by wheelchair, one crosses Abram Creek and Bagley Road as they travel the trail that passes through 175 acres of headwater wetlands joining the largest wetlands in Cuyahoga County.', 41.412679, -81.754273, 15)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (4, N'Bradley Woods Reservation', N'located in North Olmsted and Westlake, is on a massive formation of Berea sandstone. The stone is easily seen in the old quarry sites located in various areas of the reservation. The quarries were in operation over 50 years ago and produced sandstone for building stones. The reservation is filled with deep forests of red maples, sour gums, tupelos, yellow birches, and pin oaks. Bunns Lake, dedicated in 1986, was created to provide waterfowl habitat, and serve as a pleasant spot for nature lovers. The reservation also conserves wildlife habitat with large tracts of relatively undisturbed woodlands and open areas with a large deer population.', 41.412114, -81.957769, 14)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (5, N'Brecksville Reservation', N'From the oak-hickory forests on the ridge tops to the cottonwoods, willows and sycamores of Chippewa Creeks flat floodplain, Brecksville Reservation is a study of contrasts. The reservation is deeply cut by seven distinct gorges which have a wide variety of soil and sunlight conditions, fostering the growth of rare, unusual and endangered plants. Chippewa Creek, in the northern section of the reservation, flows through a remarkable gorge that was left behind by the glaciers that once covered this area. The reservation has an excellent and extensive system of trails, including a section of the Buckeye Trail. Squire Rich Home & Museum, managed by the Brecksville Historical Society, is located on Brecksville Road. Sleepy Hollow Golf Course and Seneca Golf Course are also a part of the reservation.', 41.309311, -81.608507, 13)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (6, N'Brookside Reservation', N'Brookside Reservation was one of the City of Clevelands oldest neighborhood parks before its acquisition by Cleveland Metroparks in 1993. The land was purchased in 1894 and has been a center for recreation since the early 1900s. Still a recreation hub, the area now boasts baseball and soccer/football fields. The 132-acre reservation serves as a refuge for diverse wildlife in an urban setting. It is also an attractive spot for area picnickers and a resting site for walkers, cyclists and others who use the All Purpose Trail. This reservation connects to Cleveland Metroparks Zoo.', 41.448763, -81.723073, 15)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (7, N'Euclid Creek Reservation', N'Follow Euclid Creek Valley along 2.5 miles of interesting geology along this verdant corridor, from Quarry Picnic Area to Highland Picnic Area. Historic points of interest include former Bluestone quarries, CCC camp, and Euclid Beach Park. As the creek flows northward to Lake Erie, so does the reservation. Part of Euclid Creek Reservation includes Wildwood Marina, Villa Angela Park and Beach, and Euclid Beach.', 41.550857, -81.529233, 14)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (8, N'Garfield Reservation', N'Garfield Park Reservation is located in Garfield Heights. The reservation features picnic areas, a wetland, and trails. The history of Garfield Park dates back almost a century. In 1894, the city of Cleveland purchased three farms, a half mile south of the city limits as a site for a new south side park. It was officially opened in 1895, as Newburg Park, and soon thereafter re-named Garfield Park. Much of the beautiful stonework still evident in the reservation today dates from the 1930s New Deal Era projects. Garfield Park was leased to Cleveland Metroparks in 1986. The old lake beds have been reclaimed by nature and are managed as green space for wildlife. The rich deep woodlands support a host of songbirds throughout the year.', 41.43391, -81.611864, 14)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (9, N'Hinckley Reservation', N'At the southern end of Cleveland Metroparks is Hinckley Reservation, the site of the nationally-known annual Return of the Buzzards. From hiking at Whipps Ledges to kayaking on Hinckley Lake, there are a variety of activities here for everyone.', 41.216352, -81.709617, 14)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (10, N'Huntington Reservation', N'Huntington Reservation is located in Bay Village on the shores of Lake Erie. Picnic areas high above the beach offer visitors opportunities to enjoy the striking and ever-changing lake views. Breakwalls allow anglers to fish in Lake Erie in all seasons. The reservation is also home to two Cleveland Metroparks affiliates: Lake Erie Nature & Science Center, and BAYarts.', 41.48774, -81.933973, 15)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (11, N'Lakefront Reservation', N'Experience Lake Erie in all its glory. Go fishing, witness the great seasonal bird migrations, have a picnic, try stand up paddle board, or take a bike ride along the lake shore.', 41.48862, -81.737879, 15)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (12, N'Mill Stream Reservation', N'Mill Stream Run Reservation is located in Berea, Middleburg Heights, North Royalton and Strongsville. Long ago nineteenth century communities like Albion, Sandersons Corners and Slab Hollow sprang up to take advantage of the water power from the east branch of the Rocky River and its tributaries. After the sawmills and grist mills were established, businesses like a basket factory, taverns, blacksmith shops and tailors followed.', 41.325285, -81.81695, 12)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (13, N'North Chagrin Reservation', N'Since the 1920s, North Chagrin Reservation has been a special combination of outdoor recreation areas and wildlife sanctuaries. North Chagrin trails and picnic areas feature woodlands and wetlands as important characteristics of this large reservation. Located in Mayfield Village, Willoughby Hills and Gates Mills, the reservation includes a nature center and nature education building. Sanctuary Marsh and Sunset Pond are both popular areas to observe waterfowl, and Squire’s Castle is an interesting historical site. The reservation is also home to Manakiki Golf Course, located off SOM Center and Eddy roads in Willoughby Hills.', 41.571339, -81.428583, 13)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (18, N'Ohio and Erie Canal Reservation', N'The Ohio & Erie Canal Reservation stretches through the villages of Cuyahoga Heights and Valley View and other surrounding communities. The reservation follows a portion of its namesake, the historic 309-mile Ohio and Erie Canal. Together with the Cuyahoga River, the northernmost remaining 4.4 miles of watered canal provides wildlife management areas, fishing opportunities and scenic beauty. Picnicking, hiking trails, a 7.2-mile All Purpose Trail, and unique natural and cultural heritage of this valley are also featured in this reservation.', 41.433929, -81.666145, 13)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (19, N'Rocky River Reservation', N'Rocky River Reservation is located in Berea, Brook Park, Cleveland, Fairview Park, Lakewood, North Olmsted, Olmsted Township, and Rocky River. The first land purchased for Cleveland Metroparks — a 3.8 acre parcel purchased in April 1919 — can be seen from the Stinchcomb-Groth Memorial. The character of the reservation is strongly influenced by the Rocky River. Massive shale cliffs rise above the willows, sycamores and cottonwoods, and many trails wind through the valleys deep floodplain forests, meadows and wetlands. Wildlife is common in the valley and visitors can expect to see numerous bird species and some common Ohio mammals year-round, including the white-tailed deer. Visit Rocky River Nature Center to learn more.', 41.433571, -81.846017, 13)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (20, N'South Chagrin Reservation', N'Rugged trails lead you through hemlock forests, sandstone ledges, coldwater creeks and ravines. The Chagrin River, designated as a Scenic River, borders the eastern edge of the reservation. Sites rich in history include Look About Lodge, Henry Church Rock, Quarry Rock, the Polo Field, and the old Boy Scout Camp.', 41.416206, -81.423261, 14)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (21, N'Washington Reservation', N'Located in Newburgh Heights the 59-acre Washington Reservation is Cleveland Metroparks 15th reservation. Golf enthusiasts will enjoy an Audubon Certified nine-hole golf course, a First Tee of Cleveland Golf Learning Center, and a 30-station driving range. History buffs will enjoy the U.S.S. Maine Memorial near the entrance of the park.', 41.456177, -81.66162, 15)
GO
INSERT [dbo].[parks] ([park_id], [park_name], [park_description], [park_latitude], [park_longitude], [default_zoom]) VALUES (22, N'West Creek Reservation', N'While neighborhoods surrounding most of the nine-mile West Creek are densely developed, this 326-acre reservation preserves a valley of rocky gorges, forest-draped hillsides, floodplains and babbling brooks.', 41.382914, -81.695003, 14)
GO
SET IDENTITY_INSERT [dbo].[parks] OFF
GO
INSERT [dbo].[points_of_interest] ([trail_id], [panoramic_image_id]) VALUES (2, 27)
GO
SET IDENTITY_INSERT [dbo].[sound_categories] ON 
GO
INSERT [dbo].[sound_categories] ([sound_category_id], [sound_category_name]) VALUES (1, N'waterfall')
GO
INSERT [dbo].[sound_categories] ([sound_category_id], [sound_category_name]) VALUES (2, N'stream')
GO
INSERT [dbo].[sound_categories] ([sound_category_id], [sound_category_name]) VALUES (3, N'birds_etc')
GO
SET IDENTITY_INSERT [dbo].[sound_categories] OFF
GO
SET IDENTITY_INSERT [dbo].[trail_images] ON 
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (1, 2, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (2, 3, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (3, 4, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (4, 5, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (5, 6, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (6, 7, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (7, 8, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (8, 9, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (9, 10, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (10, 11, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (11, 12, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (12, 13, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (13, 14, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (14, 15, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (15, 16, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (16, 17, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (17, 18, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (18, 19, N'https://clevelandmetroparks.com/getmedia/316cf087-0d68-4fc9-8b00-05f887a3fc7f/Henry-Church-Rock_thumb.jpg.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (19, 2, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (20, 3, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (21, 4, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (22, 5, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (23, 6, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (24, 7, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (25, 8, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (26, 9, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (27, 10, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (28, 11, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (29, 12, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (30, 13, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (31, 14, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (32, 15, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (33, 16, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (34, 17, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (35, 18, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (36, 19, N'http://cdn.onlyinyourstate.com/wp-content/uploads/2017/06/6137408483_9cc4934941_b-700x500.jpg', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (37, 2, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (38, 3, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (39, 4, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (40, 5, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (41, 6, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (42, 7, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (43, 8, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (44, 9, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (45, 10, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (46, 11, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (47, 12, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (48, 13, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (49, 14, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (50, 15, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (51, 16, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (52, 17, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (53, 18, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
INSERT [dbo].[trail_images] ([trail_image_id], [trail_id], [trail_image_address], [local]) VALUES (54, 19, N'https://www.clevelandmetroparks.com/getmedia/80aa28e9-d128-4644-9121-e2440b6d1bc2/ChippewaCreekGorgeListing.png.ashx?h=500&w=840&mode=crop&scale=both', 0)
GO
SET IDENTITY_INSERT [dbo].[trail_images] OFF
GO
SET IDENTITY_INSERT [dbo].[trail_sounds] ON 
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (1, N'https://s3.us-east-2.amazonaws.com/metropark/waterfall_swooshing.mp3', 1)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (2, N'https://s3.us-east-2.amazonaws.com/metropark/waterfall_birds.mp3', 1)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (3, N'https://s3.us-east-2.amazonaws.com/metropark/waterfall2.mp3', 1)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (4, N'https://s3.us-east-2.amazonaws.com/metropark/waterfall.mp3', 1)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (5, N'https://s3.us-east-2.amazonaws.com/metropark/loud_waterfall_birds.mp3', 1)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (6, N'https://s3.us-east-2.amazonaws.com/metropark/trail_birds.mp3', 2)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (7, N'https://s3.us-east-2.amazonaws.com/metropark/stream_pour.mp3', 1)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (8, N'https://s3.us-east-2.amazonaws.com/metropark/stream_bird.mp3', 2)
GO
INSERT [dbo].[trail_sounds] ([trail_sound_id], [trail_sound_file], [sound_category_id]) VALUES (9, N'https://s3.us-east-2.amazonaws.com/metropark/drips.mp3', 1)
GO
SET IDENTITY_INSERT [dbo].[trail_sounds] OFF
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (1, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (2, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (3, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (4, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (5, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (6, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (7, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (8, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (9, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (10, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (11, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (12, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (13, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (14, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (15, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (16, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (17, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (18, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (19, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (20, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (21, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (22, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (23, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (24, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (25, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (26, 2)
GO
INSERT [dbo].[trail_sounds_associative] ([panoramic_image_id], [sound_category_id]) VALUES (27, 2)
GO
SET IDENTITY_INSERT [dbo].[trails] ON 
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (2, 20, N'Henry Church Rock', N'This long-term ephemeral landmark is a piece of cultural history immersed in nature by the riverside.  Blacksmith, spiritualist, and artist Henry Church carved the images in the rock, dating the piece in 1885. Visit the rock, and youll discover many images, which include an eagle, shield, papoose, woman, quiver, and others. The sandstone rock itself stands, a weathering testament to the early settlement in Bentleyville-Solon.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (3, 1, N'Lake Loop Trail', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (4, 2, N'Hemlock Loop', N'Access this trail loop from Hemlock Creek Picnic Area located at the intersection of Tinkers Creek Rd and Dunham Rd.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (5, 3, N'Big Creek All Purpose Trail', N'This out-and-back route begins at Fern Hill Picnic Area and runs south to Beech Hill Pond at the southern end of Big Creek Reservation.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (6, 4, N'Cahoon Creek Loop', N'This trail loops through a mixed bottomland forest along the creek. Pileated woodpeckers frequent this area.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (7, 5, N'Brecksville All Purpose Trail', N'Paved trail for activities like cycling, walking and in-line skating. Motorized vehicles are prohibited.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (8, 6, N'Brookside Overlook Loop', N'Begin the trail at Meadow Ridge Picnic Area. The paved loop is just east of the picnic area with an overlook with benches available for a break.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (9, 7, N'Glenridge Loop', N'This route begins across Euclid Creek Pkwy from Welsh Woods Picnic Area.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (10, 8, N'North Ravine Loop', N'Follow the All Purpose Trail west from Old Birch Picnic Area to start the North Ravine Trail. The scenic, hilly trail highlights a mature, wooded ravine.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (11, 9, N'Hinckley All Purpose Trail Loop', N'Paved trail for activities like cycling, walking and in-line skating. Motorized vehicles are prohibited.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (12, 10, N'Songbird Loop', N'Begin at Wolf Picnic Area and take the All Purpose Trail east to the start of the Songbird Loop. This trail winds its way through a typical mature Ohio forest. Look for cardinals, woodpeckers, squirrels and foxes.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (13, 11, N'Lower Edgewater Loop', N'Accessible from the main parking lot for Edgewater Beach. This short loop circles the lower portion of Edgewater Park and offers views of Lake Erie.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (14, 12, N'Royalview Yellow Loop', N'Begin this route at the Royalview Ln parking lot.  If the lot is full then continue down Royalview Ln to the picnic area parking lot.  Please review signage for direction of travel for hiking or mountain biking.  This trail meanders through young forests and passes by an old foundation and chimney. Enjoy gentle climbs and beautiful creek views.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (15, 13, N'North Chagrin All Purpose Trail - south section', N'Begin this section of the All Purpose Trail at North Chagrin Nature Center and head to the southern terminus at Wilson Mills Road.  Paved trail for activities like cycling, walking and in-line skating. Motorized vehicles are prohibited.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (16, 18, N'Towpath Trail, Ohio & Erie Canal Reservation', N'12.1 miles (out & back). 6 miles of level, paved trail follows the original Canal Towpath built in 1827. This trail connects to the Cuyahoga Valley National Park at Rockside Road.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (17, 19, N'Morley Ford Trail', N'An out-and-back trail beginning at the parking lot nearest Morley Ford.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (18, 21, N'Washington Reservation All Purpose Trail Loop', N'0.5 mile of paved trail for activities like cycling, walking and in-line skating. Motorized vehicles are prohibited.')
GO
INSERT [dbo].[trails] ([trail_id], [park_id], [trail_name], [trail_description]) VALUES (19, 22, N'Lookout Ridge Loop', N'The trailhead is located adjacent to the small parking lot across the street from Keystone Shelter.')
GO
SET IDENTITY_INSERT [dbo].[trails] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [Role]) VALUES (N'22a73e7c-df8f-4702-a3d2-148fa26a73ea', N'User')
GO
INSERT [dbo].[UserRoles] ([UserId], [Role]) VALUES (N'0b8c50f1-f440-41bd-919f-521689a6a317', N'Admin')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [PasswordHash], [SecurityStamp]) VALUES (N'22a73e7c-df8f-4702-a3d2-148fa26a73ea', N'user@email.com', N'ACO6XjLqToQmAFXzntfIayguRwqLW/NKqYZiT5aDkbVAUrfqZ/TyzcC9rWqVAPpbLw==', N'3aff97c3-981e-42bb-b8dc-ff702b679422')
GO
INSERT [dbo].[Users] ([UserId], [UserName], [PasswordHash], [SecurityStamp]) VALUES (N'0b8c50f1-f440-41bd-919f-521689a6a317', N'admin@email.com', N'AMbD0PWossWLtfV6r96KiJxT5kWpNSbkjRN9Csuruhh3l39w5Ehp+OGWv/80Fpxqrg==', N'f2b86f63-9d80-4337-b800-6a3b89f20e4a')
GO
ALTER TABLE [dbo].[panoramic_linking] ADD  DEFAULT ((0)) FOR [hotspot_pitch]
GO
ALTER TABLE [dbo].[panoramic_linking] ADD  DEFAULT ((0)) FOR [hotspot_yaw]
GO
ALTER TABLE [dbo].[panoramic_linking] ADD  DEFAULT ((0)) FOR [destination_start_pitch]
GO
ALTER TABLE [dbo].[panoramic_linking] ADD  DEFAULT ((0)) FOR [destination_start_yaw]
GO
ALTER TABLE [dbo].[last_seen_images]  WITH CHECK ADD  CONSTRAINT [fk_panoramic_images_last_seen_images_panoramic_image_id] FOREIGN KEY([panoramic_image_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[last_seen_images] CHECK CONSTRAINT [fk_panoramic_images_last_seen_images_panoramic_image_id]
GO
ALTER TABLE [dbo].[last_seen_videos]  WITH CHECK ADD  CONSTRAINT [fk_panoramic_images_last_seen_videos_panoramic_image_id] FOREIGN KEY([panoramic_image_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[last_seen_videos] CHECK CONSTRAINT [fk_panoramic_images_last_seen_videos_panoramic_image_id]
GO
ALTER TABLE [dbo].[panoramic_images]  WITH CHECK ADD  CONSTRAINT [fk_trails_panoramic_images_trail_id] FOREIGN KEY([trail_id])
REFERENCES [dbo].[trails] ([trail_id])
GO
ALTER TABLE [dbo].[panoramic_images] CHECK CONSTRAINT [fk_trails_panoramic_images_trail_id]
GO
ALTER TABLE [dbo].[panoramic_linking]  WITH CHECK ADD  CONSTRAINT [fk_panoramic_linking_destination_panoramic_id] FOREIGN KEY([destination_panoramic_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[panoramic_linking] CHECK CONSTRAINT [fk_panoramic_linking_destination_panoramic_id]
GO
ALTER TABLE [dbo].[panoramic_linking]  WITH CHECK ADD  CONSTRAINT [fk_panoramic_linking_source_panoramic_id] FOREIGN KEY([source_panoramic_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[panoramic_linking] CHECK CONSTRAINT [fk_panoramic_linking_source_panoramic_id]
GO
ALTER TABLE [dbo].[park_images]  WITH CHECK ADD  CONSTRAINT [fk_park_images_parks_park_id] FOREIGN KEY([park_id])
REFERENCES [dbo].[parks] ([park_id])
GO
ALTER TABLE [dbo].[park_images] CHECK CONSTRAINT [fk_park_images_parks_park_id]
GO
ALTER TABLE [dbo].[points_of_interest]  WITH CHECK ADD  CONSTRAINT [fk_points_of_interest_panoramic_image_id] FOREIGN KEY([panoramic_image_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[points_of_interest] CHECK CONSTRAINT [fk_points_of_interest_panoramic_image_id]
GO
ALTER TABLE [dbo].[points_of_interest]  WITH CHECK ADD  CONSTRAINT [fk_points_of_interest_trail_id] FOREIGN KEY([trail_id])
REFERENCES [dbo].[trails] ([trail_id])
GO
ALTER TABLE [dbo].[points_of_interest] CHECK CONSTRAINT [fk_points_of_interest_trail_id]
GO
ALTER TABLE [dbo].[trail_images]  WITH CHECK ADD  CONSTRAINT [fk_trails_trail_images_trail_id] FOREIGN KEY([trail_id])
REFERENCES [dbo].[trails] ([trail_id])
GO
ALTER TABLE [dbo].[trail_images] CHECK CONSTRAINT [fk_trails_trail_images_trail_id]
GO
ALTER TABLE [dbo].[trail_sounds]  WITH CHECK ADD  CONSTRAINT [fk_trail_sounds_sound_category_id] FOREIGN KEY([sound_category_id])
REFERENCES [dbo].[sound_categories] ([sound_category_id])
GO
ALTER TABLE [dbo].[trail_sounds] CHECK CONSTRAINT [fk_trail_sounds_sound_category_id]
GO
ALTER TABLE [dbo].[trail_sounds_associative]  WITH CHECK ADD  CONSTRAINT [fk_panoramic_images_trail_sounds_associative_panoramic_image_id] FOREIGN KEY([panoramic_image_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[trail_sounds_associative] CHECK CONSTRAINT [fk_panoramic_images_trail_sounds_associative_panoramic_image_id]
GO
ALTER TABLE [dbo].[trail_sounds_associative]  WITH CHECK ADD  CONSTRAINT [fk_trail_sounds_associative_sound_category_id] FOREIGN KEY([sound_category_id])
REFERENCES [dbo].[sound_categories] ([sound_category_id])
GO
ALTER TABLE [dbo].[trail_sounds_associative] CHECK CONSTRAINT [fk_trail_sounds_associative_sound_category_id]
GO
ALTER TABLE [dbo].[trails]  WITH CHECK ADD  CONSTRAINT [fk_trails_parks_park_id] FOREIGN KEY([park_id])
REFERENCES [dbo].[parks] ([park_id])
GO
ALTER TABLE [dbo].[trails] CHECK CONSTRAINT [fk_trails_parks_park_id]
GO
ALTER TABLE [dbo].[user_panoramic_associative]  WITH CHECK ADD  CONSTRAINT [fk_panoramic_images_user_panoramic_associative_panoramic_image_id] FOREIGN KEY([panoramic_image_id])
REFERENCES [dbo].[panoramic_images] ([panoramic_image_id])
GO
ALTER TABLE [dbo].[user_panoramic_associative] CHECK CONSTRAINT [fk_panoramic_images_user_panoramic_associative_panoramic_image_id]
GO
ALTER TABLE [dbo].[user_panoramic_associative]  WITH CHECK ADD  CONSTRAINT [fk_Users_user_panoramic_associative_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[user_panoramic_associative] CHECK CONSTRAINT [fk_Users_user_panoramic_associative_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [fk_UserRoles_Users]
GO
