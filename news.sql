USE [News]
GO
/****** Object:  Table [dbo].[DemID]    Script Date: 6/22/2020 10:17:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemID](
	[countID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTin]    Script Date: 6/22/2020 10:17:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTin](
	[IDloaitin] [nvarchar](50) NOT NULL,
	[tenLT] [nchar](200) NULL,
	[thutuLT] [int] NULL,
	[anhienLT] [tinyint] NULL,
	[IDtheloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiTin] PRIMARY KEY CLUSTERED 
(
	[IDloaitin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/22/2020 10:17:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[IDtheloai] [nvarchar](50) NOT NULL,
	[tenTL] [nchar](250) NULL,
	[thutuTL] [int] NULL,
	[anhienTL] [tinyint] NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[IDtheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/22/2020 10:17:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[IDtintuc] [nvarchar](50) NOT NULL,
	[tieude] [nvarchar](250) NULL,
	[tomtat] [nvarchar](250) NULL,
	[noidung] [nvarchar](max) NULL,
	[urlHinh] [nvarchar](250) NULL,
	[ngaydang] [date] NULL,
	[solanxem] [int] NULL,
	[keyword] [nvarchar](200) NULL,
	[tinnoibat] [tinyint] NULL,
	[anhientin] [tinyint] NULL,
	[IDloaitin] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[IDtintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/22/2020 10:17:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDuser] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](150) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](250) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [tinyint] NULL,
	[IDgroup] [tinyint] NULL,
	[ngaydangky] [date] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'1', N'Nhân vật                                                                                                                                                                                                ', 1, 1, N'7')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'10', N'Phim                                                                                                                                                                                                    ', 10, 1, N'3')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'11', N'Sao Thế Giới                                                                                                                                                                                            ', 11, 1, N'1')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'12', N'Paparazzi                                                                                                                                                                                               ', 12, 1, N'1')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'13', N'Pháp Luật                                                                                                                                                                                               ', 13, 1, N'6')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'14', N'Hot News                                                                                                                                                                                                ', 14, 1, N'6')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'15', N'Khám phá                                                                                                                                                                                                ', 15, 1, N'8')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'16', N'Lạ&Cool                                                                                                                                                                                                 ', 16, 1, N'8')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'2', N'Xem-Ăn-Chơi                                                                                                                                                                                             ', 2, 1, N'7')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'3', N'Skincare                                                                                                                                                                                                ', 3, 1, N'5')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'4', N'Makeup & Hair                                                                                                                                                                                           ', 4, 1, N'5')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'5', N'Bóng đá                                                                                                                                                                                                 ', 5, 1, N'9')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'6', N'Thể thao khác                                                                                                                                                                                           ', 6, 1, N'9')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'7', N'Âu-Mỹ                                                                                                                                                                                                   ', 7, 1, N'4')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'8', N'Châu Á                                                                                                                                                                                                  ', 8, 1, N'4')
INSERT [dbo].[LoaiTin] ([IDloaitin], [tenLT], [thutuLT], [anhienLT], [IDtheloai]) VALUES (N'9', N'Mọt phim                                                                                                                                                                                                ', 9, 1, N'3')
GO
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'1', N'Star                                                                                                                                                                                                                                                      ', 1, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'2', N'TVShow                                                                                                                                                                                                                                                    ', 2, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'3', N'Ciné                                                                                                                                                                                                                                                      ', 3, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'4', N'Musik                                                                                                                                                                                                                                                     ', 4, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'5', N'Beauty& Fashion                                                                                                                                                                                                                                           ', 5, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'6', N'Xã hội                                                                                                                                                                                                                                                    ', 6, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'7', N'Đời sống                                                                                                                                                                                                                                                  ', 7, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'8', N'Thế giới                                                                                                                                                                                                                                                  ', 8, 1)
INSERT [dbo].[TheLoai] ([IDtheloai], [tenTL], [thutuTL], [anhienTL]) VALUES (N'9', N'Thể Thao                                                                                                                                                                                                                                                  ', 9, 1)
GO
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'101', N'MC Diệu Linh sau 2 năm chiến đấu cùng ung thư máu: Quyết tâm sống chung với bệnh ', N'"1 năm đầu tiên, có những đêm ngủ trong vô thức mình vẫn giật mình tỉnh dậy, không nghĩ hoàn cảnh này lại thật sự rơi vào mình" - MC Diệu Linh chia sẻ.', N'Vừa qua, thông tin MC Diệu Linh (sinh năm 1991) đã và đang phải chiến đấu với căn bệnh ung thư máu suốt 2 năm khiến nhiều người không khỏi bàng hoàng. Phát hiện bản thân bị ung thư trong những năm tháng tuổi trẻ rực rỡ nhất, nhiều hứa hẹn nhất chắc chắn là điều không hề dễ dàng để chấp nhận. Rồi quãng thời gian phải chung sống và chiến đấu với bệnh cùng muôn vàn khó khăn có thể đánh gục bất kì ai. Tuy nhiên trên MXH, người theo dõi vẫn thấy Diệu Linh tỏ ra đầy lạc quan. Nếu không chia sẻ, có lẽ không ai biết cô gái này đang mang bệnh nặng trong người. ', N'https://kenh14cdn.com/2020/6/3/96854034102211334201023224345421419287412736o-15905504966121497375163-1591200007380994242678.jpg', CAST(N'2020-06-13' AS Date), 10, N'MC Diệu Linh', 1, 0, N'1')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'102', N'Bị mụn 5 năm không bớt - Bất ngờ hiệu quả sau 3 tuần điều trị tại O2 SKIN', N'Phương pháp điều trị chuẩn y khoa của O2 SKIN đã chứng tỏ được hiệu quả tuyệt vời trong trị mụn thành công cho hàng trăm ngàn khách hàng. Trong đó có La Thành Thái - tự trị mụn 5 năm không bớt, bất ngờ hiệu quả sau 3 tuần điều trị tại O2 SKIN.', N'La Thành Thái (19 Tuổi - sinh viên, TP.HCM) đến O2 SKIN với khuôn mặt nhiều mụn viêm, mụn ẩn, vết thâm và cả sẹo rỗ. Thái cho biết, mụn trứng cá đã ở khuôn mặt mình gần 5 năm qua, từ khi Thái bắt đầu tuổi dậy thì. Loay hoay trong một thời gian dài với nhiều thuốc bôi, tự tìm cách điều trị nhưng chưa khi nào Thái nhận được kết quả như mong đợi. Mụn trên khuôn mặt cũng gây nhiều bất tiện đến cuộc sống. "Mụn làm mình cảm thấy rất tự ti, vì lúc đó các bạn trong lớp ai cũng có da khỏe mạnh, và họ luôn cảm thấy tự tin khi chụp hình. Còn với mình, mỗi lần giao tiếp và chụp hình lớp là một cảm giác vô cùng nặng nề", Thái buồn bã nhớ lại.', N'https://channel.mediacdn.vn/2020/6/12/photo-3-1591975066990144061997.jpg', CAST(N'2020-10-28' AS Date), 58, N'O2SKIN', 1, 0, N'2')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'103', N'5 sản phẩm skincare giá bình dân nhưng lại hô biến được lỗ chân lông to "há miệng"', N'Muốn "hack" lỗ chân lông nhỏ mịn mà không tốn nhiều tiền, bạn cần biết tới 5 sản phẩm chăm sóc da này.', N'Sáp tẩy trang Banila Co Clean It Zero. Hẳn bạn sẽ thắc mắc sáp tẩy trang sao có thể "thu nhỏ" lỗ chân lông, nhưng ngẫm ra thì việc làm sạch và kích cỡ lỗ chân lông có liên quan mật thiết đến nhau. Khi bụi bẩn, dầu thừa bị mắc kẹt trong lỗ chân lông, chúng sẽ làm lỗ chân lông phình to hơn hẳn bình thường. Nói cách khác, lỗ chân lông bị bít tắc trông sẽ to hơn lỗ chân lông được làm sạch kỹ càng. Mà để làm sạch lỗ chân lông một cách hiệu quả thì sáp tẩy trang chính là ứng viên xuất sắc nhất.', N'https://kenh14cdn.com/2020/6/12/photo-2-1591952302463138933534.jpg', CAST(N'2020-05-20' AS Date), 11, N'skincare', 1, 1, N'3')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'104', N'"Cân" đẹp những màu son khó nhằn, nhan sắc của Linh Ngọc Đàm quả không phải loại thường đâu', N'Chinh phục bao màu son thế này, bảo sao Linh Ngọc Đàm đang là streamer hot nhất nhì Việt Nam.', N'Là một trong những streamer nổi tiếng nhất nhì hiện nay, Linh Ngọc Đàm sở hữu nhan sắc đẹp chẳng kém gì idol xứ Hàn. Nàng hot streamer này còn thường xuyên thay đổi khoản tóc tai, makeup để làm mới hình ảnh. Theo dõi hình ảnh của Linh Ngọc Đàm, có thể nhận ra cô từng thử qua nhiều màu son khác nhau, có nhiều màu khó nhằn khiến dân tình "chùn bước" nhưng Linh Ngọc Đàm vẫn có thể cân đẹp.', N'https://kenh14cdn.com/2020/6/12/photo-2-1591952302463138933534.jpg', CAST(N'2020-09-07' AS Date), 6, N'Linh Ngọc Đàm', 1, 0, N'4')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'105', N'Hà Tĩnh cầm hòa Hà Nội', N'Dù bị dẫn và hai lần phải ngừng thi đấu giữa trận, đội chủ nhà kịp gỡ hòa 1-1 bằng pha lập công phút cuối.', N'Giữa Hà Tĩnh và Hà Nội có nhiều mối liên kết. Đội quân của HLV Phạm Minh Đức tiền thân là đội Hà Nội B được chuyển giao từ cuối mùa 2018. Bản thân ông Đức cũng từng dẫn dắt Hà Nội đầu mùa 2018, trước khi được thay bằng HLV hiện tại Chu Đình Nghiêm. Nhiều cầu thủ trẻ tài năng của Hà Tĩnh hiện tại vẫn mơ một ngày được trở về khoác áo đội bóng Thủ đô.', N'https://kenh14cdn.com/2020/6/4/h2-1591258482260704963642.jpg', CAST(N'2020-05-09' AS Date), 2, N'Hà Tĩnh', 1, 1, N'5')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'106', N'Câu chuyện đẫm nước mắt ẩn sau mái tóc kỳ dị của ngôi sao NBA', N'Lonnie Walker IV, cầu thủ thuộc biên chế đội bóng San Antonio Spurs đã từng sở hữu một mái tóc không giống ai ở NBA. Thế nhưng, câu chuyện đằng sau mái tóc ấy sẽ khiến nhiều người phải giật mình.', N'Kỳ NBA Daft 2018 là nơi có sự hiện diện của những tân binh đầy triển vọng năm ấy như Luka Doncic, Trae Young hay DeAndre Ayton. Báo chí và NHM luôn dành sự chú ý cho những cầu thủ này và gần như không hề để ý đến một cầu thủ được lựa chọn ở vị trí thứ 18 bởi San Antonio Spurs. Tất cả những gì mà họ nhớ đến chính là một mái tóc kỳ dị đến mức chiếc mũ lưỡi trai cũng không thể che giấu được vầng trán nhô cao của cầu thủ này. Thời điểm ấy, nhiều người đã bật cười trước sự lập dị của Lonnie Walker IV và đưa anh vào hàng ngũ của những kiểu tóc xấu xí nhất mọi thời đại tại NBA. Thế nhưng, sau khi Lonnie Walker IV thổ lộ trên Instagram cá nhân của mình sự thật về mái tóc ấy, hẳn nhiều người sẽ cảm thấy chua xót và không khỏi chạnh lòng.', N'http://kenh14cdn.com/zoom/280_175/2020/6/12/photo1591961225557-15919612255611621549054-crop-1591961287962350235101.jpg', CAST(N'2020-05-27' AS Date), 9, N'Lonnie Walker IV', 1, 0, N'6')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'107', N'CHROMATICA - Lady Gaga: Nữ hoàng Electro-pop của 2009 thực sự trở lại!', N'CHROMATICA tràn ngập trong những ảnh hưởng mạnh mẽ của thập niên 90s phối hợp hoàn hảo với chính màu sắc của Lady Gaga trong quá khứ để tạo nên một hỗn hợp electro-pop tuyệt vời của riêng cô.', N'CHROMATICA tràn ngập trong những ảnh hưởng mạnh mẽ của thập niên 90s phối hợp hoàn hảo với chính màu sắc của Lady Gaga trong quá khứ để tạo nên một hỗn hợp electro-pop tuyệt vời của riêng cô.', N'https://kenh14cdn.com/2020/6/1/gaga4-15909875886661942847283.jpg', CAST(N'2020-03-06' AS Date), 7, N'CHROMATICA - Lady Gaga', 1, 0, N'7')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'108', N'"Eight" của IU và SUGA (BTS) - Đôi bạn đồng niên trong giấc mơ về niềm hạnh phúc vĩnh viễn', N'IU cùng SUGA đưa vào “Eight” những suy tư của bản thân khi bước sang tuổi 28, chia đều sự chú ý và tạo nên một màn kết hợp cho thấy sự trưởng thành đáng kinh ngạc trong chuỗi series tuổi tác của IU.', N'Chẳng cần những lời phát biểu đao to búa lớn, một nghệ sĩ tài năng như IU luôn biết cách bộc lộ từng bước trong quá trình trưởng thành của bản thân bằng chính âm nhạc. Khởi đầu với “Twenty-three”, bước sang “Palette”, và giờ là “Eight”, IU vẽ ra thật chi tiết mọi trải nghiệm của bản thân cô qua từng lứa tuổi. Và cứ đi qua một giai đoạn, ta lại thấy có những sự thay đổi nhất định bên trong cô gái ấy.', N'https://kenh14cdn.com/2020/5/7/3328952-iu-xung-dang-la-em-gai-qu-0-15888245744121773850577.jpg', CAST(N'2020-09-08' AS Date), 5, N'IU', 1, 1, N'8')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'109', N'Anh Chỉ Thích Em - Thành công rực rỡ nhờ bứt khỏi lối mòn phim thanh xuân', N'Không đơn thuần là phim thanh xuân lãng mạn, Anh Chỉ Thích Em có rất nhiều yếu tố "lạ" giúp phim được đánh giá cao về chiều sâu nội dung.', N'Sau một năm 2018 tưng bừng với cổ trang, 2019 xem chừng là "thời" của phim hiện đại Hoa ngữ với loạt tác phẩm gây tiếng vang trải đều từ đầu năm đến nay. Trong đó Anh Chỉ Thích Em là một tác phẩm nổi trội, xuất sắc tiếp nối thành công của dòng phim thanh xuân nhưng lại mang nhiều nét mới độc đáo giúp phim được đánh giá cao hơn hẳn các tác phẩm thuần thanh xuân vườn trường, dần dần chiếm được thiện cảm của nhiều đối tượng khán giả. Nam chính không quá đẹp nhưng rất "độc"', N'http://kenh14cdn.com/zoom/280_175/2019/5/30/d7uquz8u0aavepu-1559147881535789391718-crop-15593226118421802440943.jpg', CAST(N'2019-10-11' AS Date), 25, N'Anh chỉ thích em', 0, 1, N'9')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'110', N'Đạt 10.000 vé chỉ sau hai ngày, SKY TOUR MOVIE của Sơn Tùng M-TP xô đổ mọi kỉ lục phim Việt', N'Số lượng vé SKY TOUR MOVIE bán ra sau 48h đã phá vỡ mọi kỉ lục phim Việt.', N'Là phim tài liệu âm nhạc về tour diễn của Sơn Tùng M-TP, SKY TOUR MOVIE nhận được rất nhiều sự quan tâm của cộng đồng fan hâm mộ Sơn Tùng nói riêng và cả khán giả mê điện ảnh nói chung. Bằng chứng là ngay sau khi các rạp mở bán vé, khán giả đã thi nhau lấp đầy rạp phim. Chiều ngày 11/6, sau 48h mở bán vé online và còn gần một ngày trước khi suất chiếu đầu tiên ra mắt, SKY TOUR đạt 10.000 vé bán ra - con số kỷ lục mà chưa bộ phim Việt Nam nào làm được. Vậy mới thấy sức ảnh hưởng của Sơn Tùng mạnh mẽ đến thế nào.', N'http://kenh14cdn.com/zoom/280_175/2020/6/4/animation-18-1591274763647160926272-crop-15912750209981692232972.gif', CAST(N'2019-06-23' AS Date), 21, N'SKY TOUR', 0, 1, N'10')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'112', N'Tái hợp với Giả Nãi Lượng, Lý Tiểu Lộ có thái độ "câu kéo" chồng cũ với loạt ảnh gợi cảm?', N'Sau bao ồn ào, Lý Tiểu Lộ ngày càng thích khoe hình ảnh gợi cảm, quyến rũ trên mạng xã hội.', N'Suốt 2 tuần qua, làng giải trí Hoa ngữ sục sôi với nghi vấn cặp đôi nổi tiếng Lý Tiểu Lộ - Giả Nãi Lượng tái hợp sau 2 năm rưỡi scandal ngoại tình nổ ra. Cả hai liên tục có những hành động "đáng ngờ", từ việc Giả Nãi Lượng liên tục tới nhà Lý Tiểu Lộ cho tới việc cặp đôi không biết vô tình hay hữu ý diện đồ đôi quay clip.', N'https://kenh14cdn.com/2020/6/12/photo-1-1591980398148685629087.jpg', CAST(N'2019-12-05' AS Date), 15, N'Giả Nãi Lượng', 1, 1, N'12')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'113', N'Ủy ban Thẩm phán ra phán quyết vụ bị cáo nhảy lầu tại TAND tỉnh Bình Phước', N'Ủy ban Thẩm phán TAND Cấp cao tại TP HCM đã chấp nhận kháng nghị, hủy bản án sơ thẩm của TAND TP Đồng Xoài, bản án phúc thẩm của TAND tỉnh Bình Phước để điều tra, xét xử lại vụ bị cáo nhảy lầu tự tử.', N'Chiều 12-6, Ủy ban Thẩm phán TAND Cấp cao tại TP HCM xử giám đốc thẩm vụ án "Vi phạm quy định về điều khiển khiển giao thông đường bộ" đối với bị cáo Lương Hữu Phước (SN 1965, ngụ TP Đồng Xoài, bị cáo nhảy lầu tự tử ngay sau phiên tòa phúc thẩm). Chủ tọa phiên giám đốc thẩm là thẩm phán Lê Thành Văn (Chánh tòa hình sự TAND Cấp cao tại TP HCM).', N'https://kenh14cdn.com/2020/6/12/photo-1-15919525112531518127209.png', CAST(N'2019-07-29' AS Date), 32, N'nhảy lầu', 0, 0, N'13')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'114', N'Page Theanh28 bị kêu gọi tẩy chay vì đăng bài xuyên tạc, cợt nhả nạn nhân vụ án hiếp dâm', N'Fanpage Theanh28 Entertainment đăng tải thông tin về vụ án hiếp dâm ở An Giang nhưng lại lồng ghép thông tin sai lệch, diễn đạt bằng giọng văn cợt nhả, bôi bác. Nội dung này của Theanh28 đang nhận rất nhiều chỉ trích từ cư dân mạng.', N'Theanh28 gây phẫn nộ vì đăng bài cợt nhả nạn nhân bị hiếp dâm', N'https://kenh14cdn.com/2020/6/10/anh-chup-man-hinh-2020-06-09-luc-211119-15917173934321977077550-1591764590249113844570.png', CAST(N'2019-04-27' AS Date), 19, N'Page Theanh28', 1, 1, N'14')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'115', N'Sinh vật chẳng ai nghĩ đến này có thể chính là "siêu anh hùng" giải cứu thế giới trong tương lai', N'Một sinh vật hiện đang đem lại cho con người cả hai cảm xúc yêu ghét lẫn lộn, khi vừa có thể làm hư hỏng thực phẩm nhưng cũng vừa tạo ra thực phẩm, vừa gây bệnh lại vừa cung cấp các dược chất chữa bệnh.', N'Loài vật nào có thể cứu rỗi loài người, cứu rỗi Trái đất này trong bối cảnh biến đổi khí hậu đang diễn ra với tốc độ không thể kiểm soát?', N'https://kenh14cdn.com/2020/6/4/h2-1591258482260704963642.jpg', CAST(N'2019-11-06' AS Date), 25, N'siêu anh hung', 1, 0, N'15')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'116', N'Ra mắt kem đánh răng vị lẩu cay Tứ Xuyên tại Trung Quốc', N'Dùng xong có lẽ phải đánh lại răng bằng kem vị trà xanh cho sạch mồm...', N'Vị cay tê nồng nàn sau khi ăn lẩu Trung Quốc, đặc biệt là lẩu Tứ Xuyên là điều khiến thực khách thương thầm trộm nhớ.', N'https://kenh14cdn.com/2019/5/11/photo-1-1557552296130165745521.jpg', CAST(N'2019-07-09' AS Date), 22, N'Lẩu Tứ Xuyên', 1, 1, N'16')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'117', N'Netizen phát cuồng vì V (BTS) và Tzuyu (TWICE) chung khung hình: 2 gương mặt đẹp nhất thế giới có khác, nhưng có giống hẹn hò?', N'Khoảnh khắc hai đại diện nhan sắc của những nhóm nhạc đình đám Tzuyu và V cùng chung khung hình khiến cư dân mạng phải trầm trồ khen ngợi.', N'Mới đây, khoảnh khắc cặp đôi visual V (BTS) và Tzuyu (TWICE) đứng chung một khung hình là chủ đề bàn luận sôi nổi trên mạng xã hội Hàn Quốc. Người hâm mộ đã "đào" lại khoảnh khắc hai idol chung khung hình trong lễ trao giải AAA 2018. Đây là thời điểm các nghệ sĩ tham gia chương trình cùng bước ra sân khấu chụp hình kỷ niệm, vị trí ngồi của V ngay phía trước Tzuyu.Ngay lập tức, cư dân mạng Hàn Quốc đã nhanh chóng phát cuồng khoảnh khắc "bùng nổ visual" này. Nếu như V được biết đến với vẻ đẹp "thần thánh", "quý tộc", thường lọt top đầu trong các bảng xếp hạng nhan sắc cả trong nước lẫn quốc tế thì Tzuyu cũng là một trong những visual hàng đầu gen 3 nhờ gương mặt nhỏ nhắn, sống mũi cao thanh thoát, đường nét kiều diễm, mọi cử chỉ đều toát lên thần thái nhã nhặn, thanh lịch. Bên cạnh đó, Tzuyu là thành viên cao nhất nhóm khi cao đến 1,72m và sở hữu thân hình chuẩn hết chỗ chê. Điểm chung cung của 2 idol là đều từng giành No.1 top 100 gương mặt đẹp nhất thế giới.Trang phục, kiểu tóc của cả hai idol cũng được khen ngợi "đẹp như công chúa, hoàng tử Disney", "sang trọng như quý tộc". Cư dân mạng Hàn Quốc dù khó tính cũng phải dành hàng loạt lời khen cho cặp đôi visual đến từ hai nhóm nhạc đình đám này.

', N'https://kenh14cdn.com/2020/6/18/1592412306-v-tzuyu-1592447557540935611380.jpeg', CAST(N'2020-06-19' AS Date), 100, N'V', 1, 1, N'11')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'118', N'Netizen tổng hợp các pha đụng chạm "mùi mẫn" của BTS, tình nhất chắc là V & Jungkook!', N'Tình thân của 7 thành viên BTS đã gắn kết như một gia đình nên việc thể hiện tình cảm thế này cũng không có gì làm lạ.', N'Trang cộng đồng Theqoo mới đây đã tổng hợp những hành động biểu hiện rõ sự vô thức chi phối ý thức của 7 thành viên BTS. Những màn động chạm chân tay, thân thiết như gia đình của BTS khiến fan vừa thấy hài hước nhưng cũng không kém phần đáng yêu.Các thành viên đã ở cùng nhau 7 năm qua, con số có thể là nhiều hơn như thế nếu tính cả thời gian thực tập. Sự khăng khít và gắn kết của họ đều thể hiện qua mỗi hành động, cử chỉ dù chỉ là nhỏ nhất. Có lẽ vì thế, mọi hành động tác động lên đối phương đều diễn ra rất tự nhiên, thân thiết, quen thuộc.

Để thấy được điều này rõ nhất phải kể đến những show "cây nhà lá vườn" như "Run!BTS", "Bon Voyage" để chứng kiến Chemistry giữa hội "anh em cây khế", cứ gọi là quắn quéo , nhắng nhít. 7 anh em từ làm trò, chăm sóc, cưng nựng nhau,… cái nào cũng cũng chẳng thiếu.Phản ứng của cư dân mạng và fan BTS khi xem những khoảnh khắc tình cảm vô cùng tự nhiên của nhóm:

- Mình nhớ có bạn từng nói không biết j-hope có phải Hàm Hương không mà Kook lúc nào cũng thích táp vô hít hà ôm ấp.

- Nghĩ rằng Jungkook có sở thích chạm vào đùi j-hope.

- Họ kiểu như cơ thể bạn là của tôi và cơ thể tôi là cơ thể của bạn ấy

- Trông họ như một gia đình vậy. Họ cứ vô thức chạm vào một thành viên khác, nhưng người mà bị chạm lại thì không hề quan tâm đến điều đó.

- Skinship của họ rất tự nhiên.

- Xem cái này hài quá. Họ trông rất tự nhiên.

- Đây gọi là tình cảm gia đình đấy!

- Có phải điều này quá dễ thương không?

- Điều này chứng tỏ rằng BTS là một gia đình.

- Dễ thương thật! Họ như đang vuốt ve thú cưng vậy.', N'http://kenh14cdn.com/zoom/280_175/2020/6/18/81-15924616449961158733350-crop-15924619085561303852174.gif', CAST(N'2020-06-20' AS Date), 1000, N'V,JungKook', 1, 1, N'11')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'119', N'Đô vật gây sốc khi hất thẳng ca nước tiểu vào mặt đối thủ cơ bắp, khiến người này không ngừng nôn thốc nôn tháo', N'Đang cầm ca đựng mẫu thử nước tiểu trên tay, đô vật Jeff Hardy bỗng hất luôn vào mặt đối thủ Sheamus.', N'Tình huống gây tranh cãi diễn ra trong sự kiện WWE SmackDown (vật biểu diễn) cách đây ít ngày. Mọi chuyện bắt đầu khi hai đô vật Jeff Hardy và Sheamus thương thảo với nhau về trận thượng đài sắp tới. Vào thời điểm đôi bên chuẩn bị đặt bút ký vào bản giao kèo, Sheamus bất ngờ yêu cầu Hardy thực hiện bài kiểm tra nước tiểu ngay tại sàn đấu để chứng minh bản thân "trong sạch".

Quay về từ sau tấm bạt che, Hardy đã có mẫu thử của mình. Tuy nhiên, thay vì để nguyên cho đội ngũ y tế làm việc, đô vật người Mỹ lại hất thẳng vào mặt đối thủ cơ bắp Sheamus. Quá sợ hãi, Shaemus đã chạy khắp nơi nôn ọe và phải cởi luôn áo để "tránh mùi".WWE (World Wrestling Entertainment) thực chất là sàn đấu biểu diễn. Vì thế, chiêu trò của các võ sĩ đều có kịch bản sẵn. Ly nước hất vào mặt Sheamus cũng chưa chắc là nước tiểu. Tuy nhiên, nhiều người cho rằng đôi bên đã làm hơi "lố". Tờ Mirror nhận định: "Việc diễn trong các show của WWE là điều chúng ta đều biết nhưng cả hai có lẽ đã đi quá xa".

"Thật ghê rợn. Tôi nghĩ họ không nên làm vậy", một fan bình luận.

"Tôi không thể tin rằng họ sẽ làm vậy. Nhưng dù sao, trông ca nước tiểu đó giống nước táo hơn".Theo tờ The Sun, Fox, đơn vị phát sóng sự kiện, đã không hài lòng vì màn hất nước tiểu của Hardy. Cảnh này sẽ bị cắt đi khi kênh này phát sóng sự kiện SmackDown tại nhiều nước.', N'https://kenh14cdn.com/zoom/500_314/2020/6/20/photo-1-15926204122152023481048-crop-15926205406191275605726.jpg', CAST(N'2020-06-18' AS Date), 50, N'Jeff Hardy', 1, 1, N'6')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'120', N'Nóng: Nghi thảm án ở Điện Biên, 3 người tử vong', N'Một người phụ nữ khoảng 40 tuổi được phát hiện tử vong trên cánh đồng. Cách đó không xa, trong một ngôi nhà, hai người đàn ông bị cũng bị thương nặng, cơ thể chảy máu.', N'Trưa 20/6, Chủ tịch UBND huyện Tuần Giáo, tỉnh Điện Biên cho biết, trên địa bàn vừa xảy ra vụ việc 3 người tử vong chưa rõ nguyên nhân. Huyện đã chỉ đạo lực lượng công an điều tra, xác minh, làm rõ nguyên nhân vụ án.

Trước đó, khoảng 8h sáng 20/6, người dân phát hiện trên cánh đồng tại khối Trường Xuân, huyện Tuần Giáo một thi thể phụ nữ khoảng 40 tuổi trong tư thế nằm ngửa, trên người có nhiều vết thương.


Cách đó không xa, trong một ngôi nhà, hai người đàn ông bị cũng bị thương nặng, cơ thể chảy máu. Được biết, 2 người đàn ông cũng đã tử vong.

Đại tá Tráng A Tủa - PGĐ Công an tỉnh Điện Biên xác nhận tại hiện trường, 3 người đã tử vong, lực lượng chức năng đã xử lý hiện trường, khám nghiệm tử thi.

', N'https://kenh14cdn.com/zoom/500_314/2020/6/20/photo-1-15926293939601081348839-crop-15926294269421893782340.jpg', CAST(N'2020-06-20' AS Date), 200, N'thảm án', 1, 1, N'14')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'121', N'Bác sĩ Chiêm Quốc Thái ra khỏi phòng xử khi bà Trần Hoa Sen vắng mặt', N'Sau 3 lần tạm hoãn trước đó, sáng nay (19/6), TAND Cấp cao tại TP.HCM đã đưa vụ án vợ cũ bác sĩ Chiêm Quốc Thái là bị cáo Vũ Thụy Hồng Ngọc thuê người chém "chồng" với giá 1 tỷ đồng ra xét xử phúc ...', N'13h, sau khi tiến hành nghị án, HĐXX nhận thấy vụ việc có nhiều phát sinh, tính chất phức tạp nên sẽ nghị án kéo dài. HĐXX sẽ tuyên án vào lúc 7h30 ngày 22/6 ở TAND cấp cao tại TP.HCM.

12h, luật sư đại diện cho ông Thái cho biết điều mà phía ông Thái quan tâm nhất là vai trò của bà Trần Hoa Sen. 

"Ở đây, chúng tôi thấy có một cuộc sắp đặt gặp gỡ giữa bị cáo Ngọc và bị cáo Thanh (2 người không quen biết), do bà Hoa Sen kết nối. Bởi không thể nào ngay buổi gặp đầu tiên giữa 2 người không quen biết lại có thể chia sẻ chuyện "thầm kín" về mâu thuẫn vợ chồng như vậy. Cả 2 bị cáo Ngọc - Thanh tại nhà bà Sen đã có cuộc gặp gỡ "mờ ám" trong buồng, nếu không có sự cho phép của bà Sen thì sao 2 bị cáo lại tự nhiên vô đó được. 

Sau buổi gặp gỡ đó, Ngọc với Thanh không lấy số điện thoại của nhau, cả 2 bị cáo cũng cho biết nhờ bà Sen liên hệ... 

Cho nên, phía bị hại Chiêm Quốc Thái cho rằng bà Trần Hoa Sen có liên quan đến vụ chém bác sĩ Thái, cần phải làm rõ vấn đề này. Việc tòa không triệu tập bà Hoa Sen đến khiến ông Thái bức xúc, rời khỏi tòa vào sáng nay.

11h44, Sau khi VKS phát biểu, HĐXX tiến hành hội ý và quyết định tiếp tục phiên tòa phúc thẩm. 

Chủ tọa phiên tòa mời luật sư bị cáo Ngọc trình bày ý kiến. Luật sư cho biết việc VKS cho rằng chỉ vì "vô cớ" mà Ngọc thuê người chém ông Chiêm Quốc Thái là chưa chính xác. Luật sư cho rằng để dẫn tới điều đó là cả một quá trình dồn nén của bị cáo Ngọc trước mâu thuẫn với ông Thái. 

Việc VKS cho rằng bị cáo Ngọc phạm tội có tổ chức là chưa thỏa đáng bởi Ngọc chỉ gặp Thanh, chứ không phải như VKS nêu (tòa sơ thẩm cũng đã nhận định Ngọc không phạm tội có tổ chức). Riêng mức độ hành vi phạm tội, số tiền được xác định trong vụ án là 1 tỷ đồng nhưng số tiền này nó không phải là căn cứ để định tội (tiền lớn tiền nhỏ không phải vấn đề). 

"Bị cáo Ngọc chịu nhiều sức ép, Ngọc khi đó cũng có điều kiện về kinh tế..., nên bị cáo Ngọc bức xúc, phải nhờ bị cáo Thanh đánh dằn mặt Chiêm Quốc Thái" - luật sư nêu.10h45, đại diện VKS phát biểu ý kiến, cho rằng sự việc xảy ra có liên quan đến bà Trần Hoa Sen. 

"Các lời khai của bị cáo Ngọc, bị cáo Thanh cho thấy liên quan đến việc chém Chiêm Quốc Thái có sự tham gia của Trần Hoa Sen". 

VKS cho biết qua quá trình điều tra ban đầu, có cơ sở khẳng định bà Sen có sự tham gia vào việc chém người. "Đến giai đoạn chung tiền, bà Sen là người trực tiếp giao tiền cho Thanh. Ở đây chúng tôi dùng các căn cứ, lời khai đủ khách quan (lời khai ban đầu có sự tham gia của KSV, luật sư), phù hợp với không gian, thời gian. Nên việc các bị cáo sau này thay đổi lời khai là không chấp nhận. Đến thời điểm này, chúng tôi khẳng định cần phải khởi tố bà Trần Hoa Sen với vai trò đồng phạm, tránh bỏ lọt tội phạm". 

Vấn đề thứ 2 VKS cho biết cần phải đánh giá lại mức độ tội phạm. Các bị cáo đã thỏa thuận giá chém 1 tỷ đồng nhưng cấp sơ thẩm lại nhận định 500 triệu đồng. Tại phiên tòa hôm nay, bị cáo Ngọc cho biết cái giá 1 tỷ đồng do bị cáo đưa ra. Cho nên, kết luận tại cấp sơ thẩm không đúng với tính chất, mức độ nguy hiểm. Trong quá trình điều tra về động cơ, giữa các bị cáo không mâu thuẫn với bị hại (trừ bị cáo Ngọc, ly hôn chia tài sản với ông Thái). Như vậy, chỉ vì mục đích tiền bạc nên các bị cáo vô cớ chém người. Riêng bị cáo Ngọc vì sự ích kỷ đã thuê mướn người chém chồng cũ (có sự phân công theo dõi ông Thái...). 

Vấn đề thứ 3, Ngọc đã "bỏ mặc" để bị cáo Thanh đánh chém chồng cũ mà không cần biết bằng thủ đoạn gì. Ngọc là chủ mưu của vụ án, riêng bị cáo Thanh là người cầm đầu, phân công các bị cáo khác thực hiện (Thanh còn có tiền án tiền sự). Tuy nhiên cấp sơ thẩm chưa áp dụng tình tiết tăng nặng, cho ra bản án quá nhẹ. Mức hình phạt 1 năm 3 tháng mà bị cáo Thanh nhận còn nhẹ hơn những người thực hiện (dù Thanh là kẻ cầm đầu). 

Từ những điều trên, VKS thấy rằng cấp sơ thẩm chưa đánh giá đúng mức độ của vụ việc, tuyên phạt các bị cáo với mức án quá nhẹ. 

Chúng tôi đề nghị HĐXX chấp nhận toàn bộ kháng nghị của VKSND cấp cao để điều tra lại vụ việc.

9h30, HĐXX bắt đầu vào phần xét hỏi. Bị cáo Ngọc cho biết vì lý do muốn dằn mặt ông Thái nên mới thuê nhóm của Phan Nguyễn Duy Thanh với giá 1 tỷ đồng tại nhà của bà Hoa Sen. Bị cáo Ngọc cho biết không có liên quan đến bà Sen, đây là chủ ý của Ngọc.

Phan Nguyễn Duy Thanh cho biết bị cáo nhận được điện thoại của bà Hoa Sen nên đến nhà gặp bị cáo Ngọc. Bị cáo Thanh cho biết bà Ngọc ngỏ ý muốn Thanh đánh dằn mặt ông Thái và hứa cho 1 tỷ đồng. 

VKS hỏi: "Đánh dằn mặt hay chém, đánh đập mạnh" - bị cáo Thanh cho biết chỉ đánh dằn mặt. 

Đồng thời, Thanh cho biết sau cuộc gặp với bị cáo Ngọc, hôm sau bị cáo Thanh có đến nhà bà Sen thì được bà Sen đưa cho 1 bịch (sau đó bà Sen xuống bếp), bị cáo mở ra mới thấy là 500 triệu nên cầm về. Lý giải về điều này, bị cáo Thanh cho biết nghĩ đó là tiền của bị cáo Ngọc bồi dưỡng (như lời hứa lúc trước) nên thản nhiên cầm về. 

Bị cáo Thanh cũng khẳng định sau khi chém ông Thái để dằn mặt, bị cáo Thanh không hề gọi điện báo lại cho bà Trần Hoa Sen.

', N'https://kenh14cdn.com/zoom/500_314/2020/6/19/1044912902591618753489497214349896928830638n-1592534150547674224765-crop-15925351773021324767758.jpg', CAST(N'2020-06-20' AS Date), 50, N'Chiêm Quốc Thái', 1, 1, N'13')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'122', N'Quá bất ngờ: Erik vượt mặt cả "siêu phẩm" kết hợp của IU và Suga, lọt top 10 MV được xem nhiều nhất thế giới tuần vừa qua!', N'Bất chấp màn comeback đã gây không ít tranh cãi về tính sáng tạo của Erik, nhưng MV "Em Không Sai Chúng Ta Sai" vẫn sở hữu lượt view "khủng long".
', N'Mới đây, tài khoản Instagram có tên Music Daily World, trang chuyên cập nhật tin tức về âm nhạc thế giới hằng ngày, đã đăng tải danh sách 10 MV được xem nhiều nhất thế giới trong tuần lễ vừa qua. Hai cái tên dẫn đầu không mấy xa lạ: 6ix9ine và Ariana Grande - Justin Bieber, đặc biệt hơn cả chính là sự góp mặt của Erik với thứ hạng còn cao hơn cả sản phẩm hợp tác giữa IU và Suga (BTS)! Cũng cần lưu ý, BXH này chỉ tính lượt view tăng thêm trong đúng 7 ngày qua (từ Thứ Hai 11/5 cho đến Chủ nhật 17/5), lượt view trước ngày 11/5 sẽ không tính vào thành tích của tuần này.

MV "Gooba" của 6ix9ine là sản phẩm đứng hạng nhất trong tuần này với 128 triệu lượt xem trong 7 ngày, 50 triệu view chỉ trong 24 giờ đầu tiên - một thành tích "khủng" của quốc tế. Tuy nhiên, 6ix9ine đã vấp phải không ít tranh cãi khi đây là sản phẩm đầu tiên của nam rapper phát hành sau khi ngồi từ 2 năm vì những hành vi bạo lực, anh cũng không hề tỏ ra hối cãi khiến dư luận phẫn nộ. Rất nhiều khán giả đã không thể hiểu nổi khi sản phẩm của một nhân vật tai tiếng như vậy vẫn nhận được lượt view cao ngất ngưởng như trên.

Quá bất ngờ: Erik vượt mặt cả siêu phẩm kết hợp của IU và Suga, lọt top 10 MV được xem nhiều nhất thế giới tuần vừa qua! - Ảnh 1.
Đứng thứ hai trong danh sách trên là MV "Stuck With U" của Justin Bieber và Ariana Grande, ca khúc đầy ý nghĩa nhằm gây quỹ cho cuộc chiến chống Covid-19. Bên cạnh việc Justin Bieber "khoe" những cảnh vô cùng hạnh phúc bên bà xã thì Ariana Grande lẫn Demi Lovato cũng nhân dịp này gây chấn động khi công khai bạn trai mới, xuất hiện cùng cô nàng ở những giây phút cuối! MV thu về 35,3 triệu lượt xem trong tuần vừa rồi.

Ariana Grande & Justin Bieber - Stuck with U (Official Video)

Và đây, ở ngay vị trí thứ 7 là đại diện duy nhất đến từ Việt Nam - "Em Không Sai Chúng Ta Sai" của nam ca sĩ Erik với 18,2 triệu lượt xem được ghi nhận trong 1 tuần. Ca khúc "Em Không Sai Chúng Ta Sai" là một bản ballad sáng tác bởi nhạc sĩ Phúc Thiện nói về cảm xúc của người con trai sau khi kết thúc cuộc tình dang dở, qua đó nói lên bài học khá cay đắng trong tình yêu.

MV "Em Không Sai Chúng Ta Sai" - Erik.


Nội dung MV được xây dựng dựa trên giai điệu và ca từ của ca khúc "Em Không Sai Chúng Ta Sai". Erik là một chàng ca sĩ vô cùng nổi tiếng, đi đến đâu cũng được khán giả mến mộ và săn đón. Anh có mối quan hệ tình cảm với Tiểu Vy, nhưng vì tính chất công việc, anh chưa bao giờ công khai bạn gái và luôn phải giấu giếm mọi thứ. Bên cạnh đó, cuộc sống và công việc của một ca sĩ nổi tiếng đã tạo cho cặp đôi nhiều áp lực, dần đẩy cả hai ra xa hơn. Cái kết của MV khiến cho khán giả không khỏi thương cảm cho cả hai nhân vật vì quả thật: cả Tiểu Vy lẫn Erik đều không làm gì sai nếu xét theo lí trí, chỉ là cả hai không thể cùng nhau bước tiếp vì quá nhiều điểm khác biệt.

Quá bất ngờ: Erik vượt mặt cả siêu phẩm kết hợp của IU và Suga, lọt top 10 MV được xem nhiều nhất thế giới tuần vừa qua! - Ảnh 4.
Mặc dù MV nhận được không ít ý kiến trái chiều, chủ yếu từ việc cho rằng Erik đang dần đi vào lối mòn, đánh mất đi sự sáng tạo, nhưng không ai có thể phủ nhận sự thành công của "Em Không Sai Chúng Ta Sai". Đến tận thời điểm hiện tại, MV vẫn giữ vị trí top 2 trending YouTube Việt Nam sau gần 1 tuần "xâm chiếm".

Thật khó tin khi MV của Erik lại có lượt view nằm ở vị trí cao hơn cả ca khúc "Eight" - màn kết hợp đang "gây bão" diện rộng, là cú "bắt tay" giữa IU và SUGA (BTS), tuy nhiên điều này đơn giản là vì MV của IU đã ra mắt một thời gian, lượt xem không thể so sánh với những ngầy đầu tiên mới ra mắt. Ca khúc nằm ở ngay vị trí thứ 8, ngay sau Erik. Đây là một sáng tác viết về " những mất mát được ghi khắc ở tuổi 28" như lời IU chia sẻ, điểm nhìn của ca khúc lại hướng về một nơi không có sự đau thương, nơi mãi mãi có chỉ có tuổi trẻ như khi nữ ca sĩ cất lên hai chữ "forever young". Chính vì vậy, người nghe cảm nhận được nỗi buồn mà IU đang truyền tải nhưng không lấy đó làm bi quan, mà hướng về một thế giới tốt đẹp hơn nơi có "những tia nắng vàng cam rực rỡ" và "không có bóng đêm u tối".

MV "eight" – IU (Prod. & ft. SUGA of BTS)

Rõ ràng, "đọ" gì thì "đọ", nhưng "so kè" về lượt view thì khán giả Việt không hề kém cạnh bất kì nước nào!

Quá bất ngờ: Erik vượt mặt cả siêu phẩm kết hợp của IU và Suga, lọt top 10 MV được xem nhiều nhất thế giới tuần vừa qua! - Ảnh 6.
Quá bất ngờ: Erik vượt mặt cả siêu phẩm kết hợp của IU và Suga, lọt top 10 MV được xem nhiều nhất thế giới tuần vừa qua! - Ảnh 7.
Top 10 MV được xem nhiều nhất trong tuần của Music Daily World.', N'http://kenh14cdn.com/zoom/280_175/2020/5/17/ava1-1589693521281112151492-crop-15896935275182002612079.png', CAST(N'2020-05-21' AS Date), 100, N'Erik', 1, 1, N'8')
INSERT [dbo].[TinTuc] ([IDtintuc], [tieude], [tomtat], [noidung], [urlHinh], [ngaydang], [solanxem], [keyword], [tinnoibat], [anhientin], [IDloaitin]) VALUES (N'123', N'Phát hiện đàn chó 500 con vừa chết, vừa đuối sức trên máy bay của hãng hàng không nước ngoài, cảnh sát lập tức điều tra', N'500 chú chó con, trong đó 38 con đã chết, được tìm thấy trên khoang máy bay của hãng hàng không Ukraine International Airlines (UIA)..', N'Trong một tuyên bố hôm 20/6, Cơ quan Thanh tra Thực phẩm Canada cho biết họ đã phát hiện khoảng 500 chú chó con, trong đó có 38 con đã chết, trên khoang máy bay của hãng Ukraine International Airlines tại sân bay ở Toronto (Canada).

Được biết, chiếc máy bay chở đàn chó con hạ cánh xuống sân bay Toronto Pearson hôm 13/6. Ngoài 38 con chết, hơn 400 chú chó con vẫn còn sống nhưng trong tình trạng mất nước, yếu sức và nôn mửa. Hầu hết chúng thuộc giống bull Pháp - một giống chó được nuôi phổ biến ở Canada.

Phát hiện đàn chó 500 con vừa chết, vừa đuối sức trên máy bay của hãng hàng không nước ngoài, cảnh sát lập tức điều tra - Ảnh 1.
Ảnh minh họa.

Cơ quan Thanh tra Thực phẩm Canada tuyên bố sẽ mở cuộc điều tra để làm rõ vụ việc. Họ sẽ xác định các bước tiếp theo sau khi quá trình điều tra hoàn tất.


Cả đàn chó 500 con bị nhốt trên khoang máy bay khiến một người làm nhiệm vụ vận chuyển động vật tại sân bay phải thốt lên với phóng viên đài CBC rằng: "Cảnh tượng như một cơn ác mộng vậy".

Đại diện hãng hành không UIA đã gửi lời chia buồn của họ về cái chết của những con vật tội nghiệp trên chuyến bay đồng thời cho biết họ đang làm việc với chính quyền địa phương.

Phát hiện đàn chó 500 con vừa chết, vừa đuối sức trên máy bay của hãng hàng không nước ngoài, cảnh sát lập tức điều tra - Ảnh 2.
Ảnh minh họa.

Chó con là mặt hàng buôn bán mang lại lợi nhuận lớn ở Canada. Ông Scott Weese từ Đại học Guelph nói với phóng viên CBC: "Hầu hết những người mua đều tin rằng giống chó này được nhân giống ở Canada nhưng thực tế là chúng ta không biết rõ bao nhiêu con chó được đưa tới nước này, chúng được đưa tới đâu và chúng từ đâu tới. Có thể đó là một phần của hoạt động tội phạm có tổ chức".

“Nói đến chó bull Pháp, nếu chúng được đưa ra bán ngoài thị trường, mỗi con có giá khoảng 3.000 - 4.000 USD (69,7 - 93 triệu đồng) , đó là một khoản tiền lớn”, ông Weese cho biết thêm.

', N'http://kenh14cdn.com/zoom/420_264/2020/6/22/photo-1-1592810382172347284483-crop-159281042572875849145.jpg', CAST(N'2020-06-22' AS Date), 70, N'Chó', 1, 1, N'15')
GO
INSERT [dbo].[Users] ([IDuser], [hoten], [username], [password], [email], [ngaysinh], [gioitinh], [IDgroup], [ngaydangky]) VALUES (N'111', N'bao uyen', N'buyen', N'123', N'1754050108uyen@ou.edu.vn', CAST(N'1999-07-27' AS Date), 1, 1, CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Users] ([IDuser], [hoten], [username], [password], [email], [ngaysinh], [gioitinh], [IDgroup], [ngaydangky]) VALUES (N'112', N'lam trinh', N'ltrinh', N'456', NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Users] ([IDuser], [hoten], [username], [password], [email], [ngaysinh], [gioitinh], [IDgroup], [ngaydangky]) VALUES (N'113', N'thuy quynh', N'tquynh', N'789', NULL, NULL, 1, 0, NULL)
GO
/****** Object:  StoredProcedure [dbo].[getMostViewedAtthistime]    Script Date: 6/22/2020 10:17:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<tin tuc>
-- Create date: <2020-06-16>
-- Description:	<nhap thoi gian bat dau va thoi gian ket thuc xuat ra tin tuc duoc xem nhieu nhat trong khoang thoi gian do>
-- run: exec getMostViewedAtthistime '2020-06-10','2020-09-20'
-- =============================================
Create PROCEDURE [dbo].[getMostViewedAtthistime]
	-- Add the parameters for the stored procedure here
	@datef datetime = null,
	@datet datetime = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT top 1 a.tieude AS tieude, a.solanxem, a.ngaydang
	FROM TinTuc a
	WHERE ngaydang between @datef and @datet
	ORDER BY a.solanxem DESC
END


GO
