USE [LoveMirroring]
GO
SET IDENTITY_INSERT [dbo].[Corpulences] ON 

INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (1, N'Enrobé')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (2, N'Maigre')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (3, N'Sportif')
INSERT [dbo].[Corpulences] ([CorpulenceId], [CorpulenceName]) VALUES (4, N'Normal')
SET IDENTITY_INSERT [dbo].[Corpulences] OFF
SET IDENTITY_INSERT [dbo].[HairColor] ON 

INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (1, N'Rouge')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (2, N'Noir')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (3, N'Brun')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (4, N'Blond')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (5, N'Roux')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (6, N'Vert')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (7, N'Bleu')
INSERT [dbo].[HairColor] ([HairColorId], [HairColorName]) VALUES (8, N'Pas mentionné')
SET IDENTITY_INSERT [dbo].[HairColor] OFF
SET IDENTITY_INSERT [dbo].[HairSizes] ON 

INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (1, N'Court')
INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (2, N'Long')
INSERT [dbo].[HairSizes] ([HairSizeId], [HairSizeName]) VALUES (3, N'Volumineux')
SET IDENTITY_INSERT [dbo].[HairSizes] OFF
SET IDENTITY_INSERT [dbo].[Sexes] ON 

INSERT [dbo].[Sexes] ([SexeId], [SexeName]) VALUES (1, N'Homme')
INSERT [dbo].[Sexes] ([SexeId], [SexeName]) VALUES (2, N'Femme')
SET IDENTITY_INSERT [dbo].[Sexes] OFF
SET IDENTITY_INSERT [dbo].[Sexualities] ON 

INSERT [dbo].[Sexualities] ([SexualityId], [SexualityName]) VALUES (1, N'Hétérosexuel')
INSERT [dbo].[Sexualities] ([SexualityId], [SexualityName]) VALUES (2, N'Homosexuel')
SET IDENTITY_INSERT [dbo].[Sexualities] OFF
SET IDENTITY_INSERT [dbo].[Subscriptions] ON 

INSERT [dbo].[Subscriptions] ([SubscriptionId], [SubscriptionName], [SubscriptionPrice], [SubscriptionDate]) VALUES (1, N'1 Mois', 10.0000, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Subscriptions] ([SubscriptionId], [SubscriptionName], [SubscriptionPrice], [SubscriptionDate]) VALUES (2, N'1 Année', 60.0000, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Subscriptions] OFF
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted]) VALUES (N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', 2, 2, 1, 1, NULL, 1, 0, N'd6b2d046-52fd-47a2-ad9b-a2b04f3e63f6', N'thermituo@gmail.com', 1, 1, NULL, N'THERMITUO@GMAIL.COM', N'BOBO', N'AQAAAAEAACcQAAAAEESI381vTL/wAUt1UNWEVhNuErweFETCas4dJ26fgemmpEX8RAuEixVkxmzglR65ug==', N'+41788235424', 1, N'4CJN4DORMGNEH2RGR3FGWAA3K5L5XF6O', 0, N'Bobo', CAST(N'1962-05-01T00:00:00.0000000' AS DateTime2), N'Tim', N'Allemann', 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted]) VALUES (N'599e91da-1506-4669-bdd3-872fbab14d60', 3, 4, 1, 1, NULL, 1, 0, N'157e8fe6-b55a-4253-8252-b959af35ab0c', N'berger.sebastien@bluewin.ch', 1, 1, NULL, N'BERGER.SEBASTIEN@BLUEWIN.CH', N'SEB2', N'AQAAAAEAACcQAAAAEEm4ezTuDwqu++VHBPqsKLZYEXbvlsAtCmjcPmXHwm8+hx3EzjN3bHIQJz4YbbkxYQ==', N'+41793084965', 1, N'VN7VBPBHQSXM3SJFHNCX62YUJBHB4BRB', 0, N'seb2', CAST(N'1995-05-03T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 1)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted]) VALUES (N'6cb3fdb9-4592-4289-8e07-bf3dce64c28b', NULL, NULL, 1, NULL, NULL, NULL, 0, N'a0f34146-f8ba-44c3-bfdd-57be916f4928', N'sebastien.berger@eduvaud.ch', 1, 1, NULL, N'SEBASTIEN.BERGER@EDUVAUD.CH', N'SEB', N'AQAAAAEAACcQAAAAEEYxUzYIiytmpL2stnOM/+gVvmyrk9xRTpBiFKH/T2tabNEsY4n5GfsMfsWELHQEOQ==', N'+41793084965', 1, N'HXCPL75ARLKXFGVZFYY3QTGAJJO57UJH', 0, N'seb', CAST(N'2020-04-06T00:00:00.0000000' AS DateTime2), N'Sébastien', N'Berger', 0)
INSERT [dbo].[AspNetUsers] ([Id], [HairColorId], [CorpulenceId], [SexeId], [HairSizeId], [SubscriptionId], [SexualityId], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Birthday], [Firstname], [LastName], [QuizCompleted]) VALUES (N'782a6960-9153-465f-9e47-fd0266aaee4b', 1, 1, 1, 1, NULL, 1, 0, N'7f0a2bb3-d400-4fcf-a8ec-522dbf65eb8e', N'asdgdh@gmasdkljg.com', 0, 1, NULL, N'ASDGDH@GMASDKLJG.COM', N'ALICE', N'AQAAAAEAACcQAAAAECwmfX537mTOViHpMLHZ+XxccJgmC114DCtkC4aaGtPPbamTUsj0p4bZqJ49Pa+jfQ==', N'+41', 0, N'JUCQ2E3YTS4UEEMH2FHB53ILMALV6EU4', 0, N'alice', CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2), N'asdg', N'asdg', 0)
SET IDENTITY_INSERT [dbo].[Preferences] ON 

INSERT [dbo].[Preferences] ([PreferenceId], [Id], [SexualityId], [AgeMin], [AgeMax]) VALUES (2, N'6cb3fdb9-4592-4289-8e07-bf3dce64c28b', 1, 18, 30)
INSERT [dbo].[Preferences] ([PreferenceId], [Id], [SexualityId], [AgeMin], [AgeMax]) VALUES (3, N'599e91da-1506-4669-bdd3-872fbab14d60', 2, 18, 25)
SET IDENTITY_INSERT [dbo].[Preferences] OFF
SET IDENTITY_INSERT [dbo].[Profils] ON 

INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (1, N'Empathique', N'Empathique')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (3, N'Travaillomane', N'Travaillomane')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (4, N'Persévérant', N'Persévérant')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (5, N'Promoteur', N'Promoteur')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (6, N'Rêveur', N'Rêveur')
INSERT [dbo].[Profils] ([ProfilId], [ProfilName], [ProfilDescription]) VALUES (7, N'Rebelle', N'Rebelle')
SET IDENTITY_INSERT [dbo].[Profils] OFF
INSERT [dbo].[UserProfils] ([ProfilId], [Id], [UserProfilValue]) VALUES (3, N'599e91da-1506-4669-bdd3-872fbab14d60', NULL)
SET IDENTITY_INSERT [dbo].[UserSubscriptions] ON 

INSERT [dbo].[UserSubscriptions] ([UserSubscriptionsID], [UserID], [UserSubscriptionsDATE], [UserSubscriptionsAmount], [SubscriptionsID]) VALUES (8, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T14:38:42.163' AS DateTime), CAST(60 AS Decimal(18, 0)), 2)
SET IDENTITY_INSERT [dbo].[UserSubscriptions] OFF
SET IDENTITY_INSERT [dbo].[UserTraces] ON 

INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (4, NULL, CAST(N'2020-04-30T15:47:46.477' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (5, NULL, CAST(N'2020-04-30T15:47:50.730' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (6, NULL, CAST(N'2020-04-30T15:49:00.777' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (7, NULL, CAST(N'2020-04-30T15:51:28.293' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (8, NULL, CAST(N'2020-04-30T15:52:41.340' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (9, NULL, CAST(N'2020-04-30T15:53:39.730' AS DateTime), N'SignUp : A User is trying to sign up', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (10, N'782a6960-9153-465f-9e47-fd0266aaee4b', CAST(N'2020-04-30T15:54:27.057' AS DateTime), N'SignUp : User created a new account', N'::1')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (11, NULL, CAST(N'2020-05-04T13:53:18.153' AS DateTime), N'SignUp : A User is trying to sign up', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (12, NULL, CAST(N'2020-05-04T13:53:59.103' AS DateTime), N'SignUp : A User is trying to sign up', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (13, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T13:54:20.333' AS DateTime), N'SignUp : User created a new account', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (14, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T13:55:03.757' AS DateTime), N'Login : A User signs in ', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (15, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T13:55:34.753' AS DateTime), N'Login : A User signs in ', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (16, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T14:00:49.647' AS DateTime), N'Login : A User signs in ', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (17, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T14:06:51.227' AS DateTime), N'Login : A User signs in ', N'213.55.220.255')
INSERT [dbo].[UserTraces] ([LOGID], [ID], [LOGDATE], [PAGEVISITED], [IPADRESS]) VALUES (18, N'1ea41d57-f0ae-4ef3-b248-2b05e5ca959a', CAST(N'2020-05-04T14:25:35.523' AS DateTime), N'Login : A User signs in ', N'213.55.220.255')
SET IDENTITY_INSERT [dbo].[UserTraces] OFF
INSERT [dbo].[PreferenceCorpulences] ([PreferenceId], [CorpulenceId]) VALUES (2, 1)
INSERT [dbo].[PreferenceCorpulences] ([PreferenceId], [CorpulenceId]) VALUES (3, 2)
INSERT [dbo].[PreferenceHairColors] ([PreferenceId], [HairColorId]) VALUES (3, 1)
INSERT [dbo].[PreferenceHairSizes] ([PreferenceId], [HairSizeId]) VALUES (3, 1)
SET IDENTITY_INSERT [dbo].[Religions] ON 

INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (1, N'Musulman')
INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (2, N'Chrétien')
INSERT [dbo].[Religions] ([ReligionId], [ReligionName]) VALUES (3, N'Athé')
SET IDENTITY_INSERT [dbo].[Religions] OFF
INSERT [dbo].[PreferenceReligions] ([PreferenceId], [ReligionId]) VALUES (2, 1)
INSERT [dbo].[PreferenceReligions] ([PreferenceId], [ReligionId]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (1, N'Quels sont vos points fort ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (2, N'Quel est votre activité professionnelle ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (3, N'Quel est sont vos points négatifs ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (4, N'Vous aimez plutôt ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (5, N'Quels sont vos besoins psychologique ?')
INSERT [dbo].[Questions] ([QuestionId], [QuestionText]) VALUES (6, N'En général vous ?')
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (2, 1, 1, N'sensible, chaleureux, compatissant', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (4, 3, 1, N'logique, responsable, organisé, pragmatique, sérieux, ordonné, efficace', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (5, 4, 1, N'conscencieux, engagé, observateur, personne de parole, défend son point de vue avec férocité', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (6, 5, 1, N'adaptable, charmeur, plein de ressources, intuitif, aime le risque', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (7, 6, 1, N'calme, imaginatif, réfléchi, résistant au stress', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (8, 7, 1, N'créatif, ludique, spontané, rayonnant, enthousiaste, social, joueur, plaisantin', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (9, 1, 2, N'métiers relationels', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (10, 1, 2, N'métiers sensoriels', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (11, 3, 2, N'ingénieur', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (12, 3, 2, N'technicien', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (13, 3, 2, N'scientifique', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (14, 3, 2, N'gestionnaire', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (15, 4, 2, N'politique', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (16, 5, 2, N'vente', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (17, 5, 2, N'sports', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (19, 6, 2, N'chercheur', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (20, 6, 2, N'artisan', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (21, 6, 2, N'artiste', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (22, 6, 2, N'écrivain', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (23, 7, 2, N'créatif', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (24, 7, 2, N'métier dans le loisir', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (25, 7, 2, N'artiste', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (26, 7, 2, N'indépendant', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (27, 1, 3, N's''adapte trop, ne s''affirme pas', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (28, 3, 3, N'aime le contrôle, se surmener, faire les choses par soi-même', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (29, 4, 3, N'partir en croisade', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (30, 5, 3, N'manipulateur, tirer avantage de la situation', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (32, 6, 3, N'se replier sur soi-même, mauvaise gestion du stress', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (33, 7, 3, N'conteste facilement, aime blâmer les autres, éviter les reponsabilités', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (34, 1, 4, N'vous habiller pour plaire', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (35, 1, 4, N'sourire', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (36, 1, 4, N'travailler en groupe', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (38, 1, 4, N'décorer ou personnaliser votre environnement', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (39, 3, 4, N'vous habiller selon la situation', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (40, 3, 4, N'travailler en petit groupe', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (41, 3, 4, N'vous aimer les environnements fonctionnels', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (42, 4, 4, N'vous habiller selon des normes', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (43, 4, 4, N'être dans le traditionnel', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (44, 4, 4, N'vous aimer les normes culturelles', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (45, 4, 4, N'vous aimer les normes professionelles', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (46, 5, 4, N'ne pas vous occuper de votre aspect extérieur', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (47, 5, 4, N'vous aimer travailler seul', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (48, 5, 4, N'être efficace sur les tâches répétitives', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (49, 7, 4, N'vous habiller pour être original', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (51, 7, 4, N'être expressif', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (52, 7, 4, N'rire', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (53, 7, 4, N'travailler en groupe', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (54, 6, 4, N'à aimer les lieux tranquilles', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (55, 6, 4, N'à ne pas vous occuper de votre aspect extérieur', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (56, 1, 5, N'être reconnu comme personne', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (57, 1, 5, N'se sentir aimé via sa personnalité', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (58, 3, 5, N'aime être reconnu par son talent', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (59, 3, 5, N'aime être reconnu par se qu''il fait', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (60, 3, 5, N'aime être reconnu par ses idées', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (61, 4, 5, N'aime être reconnue par ses opinions', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (62, 4, 5, N'aime être reconnue par la qualité de son travail', 4)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (63, 5, 5, N'besoin d''excitation', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (64, 5, 5, N'cherche des sensations fortes', 5)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (65, 6, 5, N'calme', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (66, 6, 5, N'solitude', 6)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (67, 7, 5, N'cherche les contacts ludiques', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (68, 7, 5, N'cherche les contacts dynamiques', 7)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (69, 1, 6, N'vous vous basez sur vos ressentis', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (70, 1, 6, N'utiliser un language émotionnel', 1)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (72, 3, 6, N'aimez classifier les personnes', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (73, 3, 6, N'aimez classifier les idées', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (74, 3, 6, N'aimez classifier les événements', 3)
INSERT [dbo].[Answers] ([AnswerId], [ProfilId], [QuestionId], [AnswerText], [AnswerValue]) VALUES (75, 3, 6, N'utilisez un language basé sur les idées', 3)
SET IDENTITY_INSERT [dbo].[Answers] OFF
