USE [MixiBook]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/24/2022 2:57:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[role] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 3/24/2022 2:57:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[bookID] [int] IDENTITY(1,1) NOT NULL,
	[bookName] [nvarchar](255) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[genreID] [int] NULL,
	[author] [nvarchar](50) NULL,
	[publisher] [nvarchar](max) NULL,
	[publicDATE] [date] NULL,
	[img] [varchar](255) NULL,
	[desc] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 3/24/2022 2:57:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[genreID] [int] NOT NULL,
	[genreName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[genreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 3/24/2022 2:57:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[orderDATE] [date] NULL,
	[totalPrice] [float] NULL,
	[shippingID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/24/2022 2:57:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NULL,
	[bookName] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/24/2022 2:57:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[ShippingID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (1, N'sa', N'fdf', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 1)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (21, N'ss', N'ss', N'Quách Thị Thu Hương', N'quachh111@gmail.com', N'0974789731', 0)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (47, N'sadsdsdd', N'123', N'Quách Thị Thu Hương', N'quachh111@gmail.com', N'0974789731', 1)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (48, N'sadsdsdsd', N'123', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 1)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (49, N'sads', N'123', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 0)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (52, N'safdsfsdfds', N'123', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 0)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (50, N'saddd', N'123', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 0)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (53, N'sadsdsdsad', N'123', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 0)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (46, N'sad', N'123', N'Quách Thị Thu Hương', N'quachh111@gmail.com', N'0974789731', 1)
INSERT [dbo].[Account] ([id], [user], [pass], [fullname], [email], [phone], [role]) VALUES (51, N'safdfdf', N'123', N'Trần Xuân Sơn', N'sowndev@gmail.com', N'0363451610', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (1, N'Doraemon truyện ngắn', 16.5, 3, 1, N'Fujiko F. Fujio', N'Kim Đồng', CAST(N'1992-10-16' AS Date), N'doraemon.jpg', N'Manga Doraemon (ドラえもん?) ban đầu được họa Fujiko F. Fujio sáng tác, đăng tải trên sáu tạp san khác nhau của nhà xuất bản Shogakukan từ tháng 12 năm 1969. Về sau các chương truyện được Shogakukan tổng hợp dưới dạng tankōbon. Nội dung truyện kể về con cháu nhiều đời sau của nhà Nobi đã gửi chú mèo robot Doraemon về quá khứ giúp đỡ tổ tiên mình là Nobita hậu đậu gặp nhiều trắc trở khiến con cháu khổ sở. Với mong muốn khi quá khứ thay đổi thì tương lai cũng sẽ được cải thiện. Mỗi chương truyện thường bắt đầu với việc Nobita gặp một rắc rối gì đó và Doraemon đưa bảo bối ra giúp. Tuy nhiên không phải lúc nào cũng suôn sẻ bởi Nobita thường sử dụng quá đà khiến cậu còn gặp rắc rối lớn hơn trước. Thỉnh thoảng, các bảo bối bị bạn bè của cậu lấy trộm sử dụng không đúng mục đích và cuối truyện thường kết lại hậu quả từ việc làm trên.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (2, N'Conan', 20, 5, 3, N'Aoyama Gosho', N'Kim Đồng', CAST(N'1994-01-19' AS Date), N'conan.jpg', N'Meitantei Conan (名探偵コナン Danh thám trinh Conan?) hay còn được biết với tên tiếng Việt chính thức Thám tử lừng danh Conan là một series manga trinh thám được sáng tác bởi Aoyama Gōshō. Tác phẩm được đăng tải trên tạp chí Weekly Shōnen Sunday của nhà xuất bản Shogakukan vào năm 1994 và được đóng gói thành 100 tập tankōbon tính đến tháng 10 năm 2021. Truyện xoay quanh thám tử trung học Kudo Shinichi bị ép uống một loại thuốc độc khiến cậu teo nhỏ thành một đứa bé khi điều tra một tổ chức áo đen bí ẩn và phá nhiều vụ án khi đóng giả làm em của người bạn thân thời thơ ấu và các nhân vật khác.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (3, N'Dragon Ball', 14, 4, 4, N'Toriyama Akira', N'Kim Đồng', CAST(N'1993-12-30' AS Date), N'dragonball.jpg', N'Dragon Ball (ドラゴンボール Doragon Bōru?) là bộ truyện tranh nhiều tập được viết và vẽ minh họa bởi Toriyama Akira. Loạt truyện tranh bắt đầu xuất bản hàng tuần trong tạp chí Weekly Shōnen Jump từ năm 1984 đến 1995 với 519 chương và sau đó được xuất bản trong 42 tập truyện dày bởi nhà xuất bản Shueisha. Sau 20 năm dừng sáng tác, từ năm 2015, tác giả Toriyama Akira đã tiếp tục sáng tác bộ truyện Dragon Ball Super, với nội dung tiếp nối bộ truyện gốc.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (4, N'Shin', 21, 98, 2, N'Usui Yoshito', N'Kim Đồng', CAST(N'2000-10-23' AS Date), N'shin.jpg', N'Crayon Shin-chan (クレヨンしんちゃん Kureyon Shin-chan?) là một bộ manga Nhật Bản được Usui Yoshito sáng tác và minh họa. Nội dung kể xoay quanh cậu bé Shin với những câu chuyện về cuộc sống hàng ngày cùng với bố mẹ, em gái, chú chó Bạch Tuyết, bạn bè, hàng xóm, họ hàng thân quen và những nhân vật khác.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (5, N'Trạng Quỳnh', 16.5, 34, 1, N'Kim Khánh', N'Trẻ', CAST(N'1999-11-30' AS Date), N'trangquynh.jpg', N'Trạng Quỳnh – Trạng Quỷnh là một bộ truyện tranh thiếu nhi nhiều tập của Việt Nam được thực hiện bởi tác giả Kim Khánh, tập truyện đầu tiên mang tên "Sao sáng xứ Thanh" được Nhà xuất bản Đồng Nai phát hành giữa tháng 6 năm 2003. Ban đầu, tác phẩm được đặt là Trạng Quỳnh (từ tập 1 đến tập 24), còn từ tập 25 trở đi thì đặt tên là Trạng Quỷnh. Trung bình một tháng thì hai tập truyện tranh đen trắng được phát hành. Trạng Quỳnh – Trạng Quỷnh được xem là một trong những bộ truyện tranh Việt Nam nổi tiếng và được độc giả – đa phần là thiếu nhi các thế hệ X và thế hệ Z những năm đầu tiên – đón nhận nhiều nhất. Bộ truyện đã được ghi danh vào Sách Kỷ lục Việt Nam với kỷ lục "Bộ truyện tranh nhiều tập nhất".')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (6, N'Tý Quậy', 22.5, 2, 2, N'Đào Hồng Hải', N'Kim Đồng', CAST(N'1998-12-23' AS Date), N'tyquay.jpg', N'Tý Quậy là bộ truyện tranh Việt Nam nổi tiếng đã gắn liền với kí ức tuổi thơ độc giả của họa sĩ Đào Hải (1958 - 2014), Hoài Thu, Nguyễn Quang Toàn do Nhà xuất bản Kim Đồng ấn hành từ năm 2003 đến năm 2021. Trước đây, bộ truyện có tên là "Tý và Tèo" sau mới đổi thành Tý Quậy. Trung bình khoảng 2 năm thì ra mắt 1 tập. Tý Quậy được bình chọn trong những bộ truyện tranh đáng đọc nhất của Việt Nam.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (7, N'Thần Đồng Đất Việt', 12.5, 35, 1, N' Lê Linh', N'Trẻ', CAST(N'2001-04-03' AS Date), N'thandongdatviet.jpg', N'Thần đồng Đất Việt là một bộ truyện tranh thiếu nhi Việt Nam do họa sĩ Lê Linh sáng tác và phát hành bởi công ty Phan Thị cùng với sự phối hợp của nhà xuất bản Trẻ. Bộ truyện diễn tả lại cuộc sống và những nét văn hoá của người Việt dưới thời phong kiến.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (8, N'Dấu Ấn Rồng Thiêng', 11, 0, 4, N'Sanjo Riku', N'Kim Đồng', CAST(N'2002-04-15' AS Date), N'dauanrongthieng.jpg', N'Dragon Quest Dai no Daibōken (DRAGON QUEST -ダイの大冒険-, ドラゴンクエスト ダイのだいぼうけん) là một bộ manga do Sanjou Riku viết nội dung và Inada Hiroshi vẽ minh họa. Truyện được sáng tác dựa trên game Dragon quest - một dòng game nhập vai rất nổi tiếng của Nhật. Ban đầu hai tác giả chỉ sáng tác một truyện ngắn gồm hai chương có tên Derupa! Iruiru!. Sau thành công của Derupa! Iruiru!, phần tiếp theo mang tên Dai Bakuhatsu!!! ra đời, và sau nữa thì truyện được mở rộng với cốt truyện dài kỳ, trở thành bộ truyện Dai no Daibouken hoàn chỉnh.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (9, N'Yu-Gi-Oh!', 13, 53, 4, N'Takahashi Kazuki', N'Kim Đồng', CAST(N'1999-11-09' AS Date), N'yugioh.jpg', N'Yu-Gi-Oh! (遊☆戯☆王 (Du Hí Vương) Yū-Gi-Ō!?, "Vua Trò Chơi") là một manga tiếng Nhật được sáng tác bởi Takahashi Kazuki. Truyện đã được chuyển thể thành nhiều anime, video game và trò chơi trading card game. Phần lớn bộ truyện tập trung vào trò chơi hư cấu gọi là Duel Monster (tên ban đầu gọi là Phép thuật và phù thuỷ), trong đó các nhân vật sử dụng các lá bài để "đấu" (duel) bằng các "quái thú" (monster) giả lập. Yu-Gi-Oh! Trading Card Game là một trò chơi ngoài đời thực dựa trên Duel Monster. Tại Việt Nam, bộ phim đã được chiếu trên HTV2 vào khoảng năm 2014-2015 với tên là "Vua Trò Chơi Yu-Gi-Oh"')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (10, N'Doremon Truyện Dài', 16, 47, 2, N'Fujiko F. Fujio', N'Kim Đồng', CAST(N'1993-04-02' AS Date), N'doremondai.jpg', N'Daichōhen Doraemon (Nhật: 大長編ドラえもん (Đại trường biên Doraemon)?) là xê-ri manga khoa học viễn tưởng về Doraemon do họa sĩ Fujiko Fujio (sau này là Fujiko F. Fujio) sáng tác. Xê-ri này được viết dựa trên các tác phẩm điện ảnh cùng tên phát hành hằng năm tại rạp từ 1980 và được đăng trên tạp chí CoroCoro Comic trước khi phim ra mắt. Xuyên suốt xê-ri đề cập đến nhóm 5 người bạn Doraemon, Nobita, Shizuka, Suneo và Jaian về những cuộc phiêu lưu đến thời cổ đại khủng long, thăm hành tinh Koyakoya xa xôi nơi dãy Ngân Hà đến thám hiểm vương quốc loài chó trong khu vực tách biệt thế giới ở châu Phi và rồi trầm mình dưới đáy biển khám phá lâu đài bí ẩn.... Sau đó các mẩu truyện được Shogakukan tập hợp lại đóng thành cuốn phát hành. Có tổng cộng 24 tập đã được xuất bản trong đó bao gồm 17 tập do tác giả thực hiện. Sau khi tác giả bộ truyện qua đời vào năm 1996 công việc sáng tác được Fujiko Pro thực hiện. "Nobita" là cụm từ mở đầu xuyên suốt trong các tựa truyện. Xê-ri này được Nhà xuất bản Kim Đồng ấn hành và tái bản thường xuyên tại Việt Nam và được biết đến với tên gọi Truyện dài Doraemon.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (11, N'Naruto', 12, 0, 1, N'NULLKishimoto Masashi', N'Kim Đồng', CAST(N'1995-07-03' AS Date), N'naruto.jpg', N'Naruto là một loạt manga Nhật Bản được viết và minh họa bởi Kishimoto Masashi. Manga được đăng lần đầu trên tạp chí Weekly Shonen Jump từ tháng 9 năm 1999 đến tháng 11 năm 2014, và sau đó được Shueisha phát hành thành 72 tập tankōbon. Câu chuyện xoay quanh Uzumaki Naruto, một ninja trẻ muốn tìm cách khẳng định mình để được mọi người công nhận và nuôi ước mơ trở thành Hokage - người lãnh đạo Làng Lá. Cốt truyện được chia làm hai phần – phần đầu lấy bối cảnh vài năm trước tuổi thiếu niên (Naruto Dattebayo) và phần thứ hai là ở tuổi thiếu niên của Naruto (Naruto Shippuden). Series dựa trên hai Yomikiri của Kishimoto: Karakuri (1995), đã giúp Kishimoto đạt danh hiệu Hop Step Award hàng tháng của Shueisha ở những năm tiếp theo, và Naruto (1997).')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (12, N'Doraemon bóng chày', 12.5, 25, 2, N'Fujiko F. Fujio', N'Kim Đồng', CAST(N'2002-04-30' AS Date), N'bongchay.jpg', N'Dorabase (ドラベース Dorabēsu?), phiên bản tiếng Việt có tên là Doraemon bóng chày, tên đầy đủ là Doraemon Bóng chày - Truyền kì về bóng chày siêu cấp (ドラえもん超野球(スーパーベースボール)外伝 Doraemon sūpā bēsubōru gaiden? Doraemon siêu dã cầu (Super Baseball) ngoại truyện)[1] là một bộ truyện tranh về bóng chày do Mugiwara Shintaro (むぎわら しんたろう?) sáng tác dựa trên hình ảnh chú mèo máy Doraemon của bộ truyện tranh cùng tên của tác giả Fujiko F. Fujio. Ông là học trò của bộ đôi 3F. Truyện được đăng trên tạp chí CoroCoro Comic của Shogakukan. Phần hai của bộ truyện, Shin Dorabase đã ra mắt vào năm 2012 khi CoroCoro Comic vừa đăng chương cuối cùng của bộ truyện (thực ra còn thiếu 3 trang). Tân Doraemon bóng chày cũng được đăng trên CoroCoro Comic.')
INSERT [dbo].[Books] ([bookID], [bookName], [price], [quantity], [genreID], [author], [publisher], [publicDATE], [img], [desc]) VALUES (13, N'Doraemon màu', 25, 0, 1, N'Fujiko F. Fujio', N'Kim Đồng', CAST(N'2004-05-20' AS Date), N'doremonmau.jpg', N'Manga Doraemon (ドラえもん?) ban đầu được họa Fujiko F. Fujio sáng tác, đăng tải trên sáu tạp san khác nhau của nhà xuất bản Shogakukan từ tháng 12 năm 1969. Về sau các chương truyện được Shogakukan tổng hợp dưới dạng tankōbon. Nội dung truyện kể về con cháu nhiều đời sau của nhà Nobi đã gửi chú mèo robot Doraemon về quá khứ giúp đỡ tổ tiên mình là Nobita hậu đậu gặp nhiều trắc trở khiến con cháu khổ sở. Với mong muốn khi quá khứ thay đổi thì tương lai cũng sẽ được cải thiện. Mỗi chương truyện thường bắt đầu với việc Nobita gặp một rắc rối gì đó và Doraemon đưa bảo bối ra giúp. Tuy nhiên không phải lúc nào cũng suôn sẻ bởi Nobita thường sử dụng quá đà khiến cậu còn gặp rắc rối lớn hơn trước. Thỉnh thoảng, các bảo bối bị bạn bè của cậu lấy trộm sử dụng không đúng mục đích và cuối truyện thường kết lại hậu quả từ việc làm trên.')
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
INSERT [dbo].[Genre] ([genreID], [genreName]) VALUES (1, N'Vui nhộn')
INSERT [dbo].[Genre] ([genreID], [genreName]) VALUES (2, N'Giải trí')
INSERT [dbo].[Genre] ([genreID], [genreName]) VALUES (3, N'Hài hước')
INSERT [dbo].[Genre] ([genreID], [genreName]) VALUES (4, N'Trinh thám')
INSERT [dbo].[Genre] ([genreID], [genreName]) VALUES (5, N'Hành động')
GO
SET IDENTITY_INSERT [dbo].[ORDER] ON 

INSERT [dbo].[ORDER] ([orderID], [id], [orderDATE], [totalPrice], [shippingID]) VALUES (4, 1, CAST(N'2022-03-09' AS Date), 4, 4)
INSERT [dbo].[ORDER] ([orderID], [id], [orderDATE], [totalPrice], [shippingID]) VALUES (6, 1, CAST(N'2022-03-09' AS Date), 6, 6)
INSERT [dbo].[ORDER] ([orderID], [id], [orderDATE], [totalPrice], [shippingID]) VALUES (8, 1, CAST(N'2022-03-17' AS Date), 0, 0)
INSERT [dbo].[ORDER] ([orderID], [id], [orderDATE], [totalPrice], [shippingID]) VALUES (5, 1, CAST(N'2022-03-09' AS Date), 0, 0)
INSERT [dbo].[ORDER] ([orderID], [id], [orderDATE], [totalPrice], [shippingID]) VALUES (7, 1, CAST(N'2022-03-09' AS Date), 7, 7)
SET IDENTITY_INSERT [dbo].[ORDER] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [orderID], [bookName], [img], [price], [quantity]) VALUES (4, 5, N'Tý Quậy', N'tyquay.jpg', 22.5, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookName], [img], [price], [quantity]) VALUES (5, 6, N'Dragon Ball', N'dragonball.jpg', 14, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookName], [img], [price], [quantity]) VALUES (7, 8, N'Doraemon truyện ngắn', N'doraemon.jpg', 16.5, 2)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookName], [img], [price], [quantity]) VALUES (6, 7, N'Dragon Ball', N'dragonball.jpg', 14, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([ShippingID], [name], [phone], [address]) VALUES (4, NULL, N'0974789731', N'Chung cÆ° mini ThiÃªn Long, Khu KNC HÃ²a Láº¡c')
INSERT [dbo].[Shipping] ([ShippingID], [name], [phone], [address]) VALUES (6, NULL, N'02162298213', N'7667 Brentwood Drive')
INSERT [dbo].[Shipping] ([ShippingID], [name], [phone], [address]) VALUES (7, NULL, N'0363451610', N'')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_role]  DEFAULT ((0)) FOR [role]
GO
ALTER TABLE [dbo].[ORDER] ADD  CONSTRAINT [DF_ORDER_orderDATE]  DEFAULT (getdate()) FOR [orderDATE]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Genre] FOREIGN KEY([genreID])
REFERENCES [dbo].[Genre] ([genreID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Genre]
GO
