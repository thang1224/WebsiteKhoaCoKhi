USE [WebsiteKhoaCoKhi]
GO
ALTER TABLE [dbo].[Notice] DROP CONSTRAINT [FK__Notice__category__1DE57479]
GO
ALTER TABLE [dbo].[New] DROP CONSTRAINT [FK__New__categoryId__1CF15040]
GO
/****** Object:  Table [dbo].[SubMenu]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[SubMenu]
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[Notice]
GO
/****** Object:  Table [dbo].[New]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[New]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[CategoryNew]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[CategoryNew]
GO
/****** Object:  Table [dbo].[AdminAccount]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[AdminAccount]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/9/2021 11:42:58 PM ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminAccount]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminAccount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[status] [bit] NULL DEFAULT ((1)),
	[name] [nvarchar](100) NULL,
	[phoneNumber] [char](10) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoryNew]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryNew](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[metaTitle] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [nvarchar](150) NOT NULL,
	[link] [varchar](100) NOT NULL,
	[displayOrder] [nvarchar](100) NULL,
	[typeMenu] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[New]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[New](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[metaTitle] [nvarchar](150) NOT NULL,
	[content] [ntext] NOT NULL,
	[images] [varchar](150) NULL,
	[attachFile] [nvarchar](150) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](100) NULL,
	[modifyDate] [datetime] NULL,
	[modifyBy] [varchar](100) NULL,
	[newView] [int] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[metaTitle] [nvarchar](150) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[content] [ntext] NOT NULL,
	[images] [varchar](150) NULL,
	[attachFile] [nvarchar](150) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](100) NULL,
	[modifyDate] [datetime] NULL,
	[modifyBy] [varchar](100) NULL,
	[newView] [int] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubMenu]    Script Date: 5/9/2021 11:42:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [nvarchar](150) NOT NULL,
	[link] [nvarchar](100) NOT NULL,
	[displayOrder] [nvarchar](100) NULL,
	[typeMenu] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SubMenu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202009200837579_create-database', N'Model.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B6FDB36147E1FB0FF20E87168AD2445812DB05BA46E32046D92224EBBBD15B444DB4425D213A934C6B05FB687FDA4FD851DDD49EA46298E9376C680C1A178BE7378782EBC1CF6DFBFFF19BFBE0B7CEB16879C303AB10F4707B685A9CB3C4297133B128BE73FDBAF5FFDF8C3F8D40BEEAC4F79BF17713FA0A47C62AF84581F3B0E775738407C141037649C2DC4C86581833CE61C1D1CFCE21C1E3A18206CC0B2ACF17544050970F207FC3965D4C56B1121FF8279D8E7593B7C9925A8D6250A305F23174FECA4C7E8F4CCB64E7C8280FF0CFB0BDB42943281044877FC91E39908195DCED6D080FC9BCD1A43BF05F239CEA43E2EBB9B0EE0E0281E805312E6506EC4050B7A021EBEC834E2E8E483F46A171A039D9D826EC5261E75A2B7897DE205849EB82E03ADDB96CEF078EA8771E752B52399E09995343F2B261F6C24FEEF99358D7C11857842712442043D3E44739FB8EFF0E6867DC1744223DF970503D1E09BD2004D1F42B6C6A1D85CE345262EF16CCB51E91C9DB0209368D2419C53F1E2C8B62E81399AFBB8987769C033C142FC2BA63844027B1F90103884693BF770A2B90A778D57C47118FFCA3982B181B7D8D605BA7B8FE952AC26F64B708F337287BDBC2113E22325E05BA5501529DB39AF11E75F59E8B5703E3C7818D61C7417F19CF11BC67C8C6817116DD752B7AC228CBA95B262145F46C11C87ADBC345629B4AE957656E088C4DF86F2653663A774D856379E82B52E59B8B9C45F8DBC58EABF77E2BEA6D9E9C1A9FD7479D125BA25CB44608D3F4C0A78D335F6938F7C45D669269367ED73DAE92C64C135F3550B48BE7D9EB12874E371B0860E37285C62D1432C26888B0D24CBFB3508977E6E972FEB5327A2B14F98FAC2DE07FAFBC0D1967C40E30A92F9AD6C0DB3424FB60116E8A683F5B6BC5E63ED322A70BCF46A640C3F1F823109D012F37B0DD8880F181E725767642BCAEDD06588635B7F0BFFCB79C5BF6F48604AFA66B3ED0C5E636CB0815A6C86089952EE42468ABF7E2271F854C24D870AB3F87DAE4729D3FCA2AC61EE9BFDF2CCD198FDF2F4332CB524F9C92CBB245DF709669F601E27C17898BB2159A7C7072D9BD27D76DB67B77D766B56E14EB39BD90EAA35C769BBAC4169EE02D3C828C9C51DF729AE926CF05D5BE87BA080EF13FAE5110E013DC2D73EDA5C855EC759DB3662A100F8D438DBE7D2C4EA4F38672E4926BCEAAAE9425395E5947A56D7994B3A7CCDAF4111E009640DB60F724CEC83D1E8B032D216F4C2DF4BF41AD49F2A90E031388C4D16F9538839E083848AAA7B11EA9235F23BC6A6D1193A66ACFE8283FEE52D5E631AFB54C7C04D58CB71BA2A42C1498B1A5D1A1A3B9295F4309E2C8E1BCDB07E2CB67513D2B3866445D976E6E10D491DE4AE6D49D5C01334A73442018D000A1C6642FC86E79C08FC6EC5D094BD5B91B7F3B847925C2AB9F923C7597AE65928D56D23E630C3A2E6FE0F161C6588CC4C43BD1FAC189A0A2629BB0E4BB1E30EA8060823D27CF554A5CEECBC0320CE2C75E469C6D188A599AC5544765421756B3ACED0CDCB20CF1492EBBAAFD8AA415A91C0EA4014A3855E7DD590CF4A8726EA42A671D0BCB73EB41829AB2497DF582BF982A370E7B274C1496B17F21A07A7A1C8617C81D66B584149450F598B354B2B1EA6CF67FD8B028214C371794D6D40216DC10916C1B099D6BE026B90F48C845CC0060FCD51BCDC9A7A41A55B73F06A70C29C6F5D7CAACE62EEA23955FC3BF3E2BA8A859AA09F519EC12083386F248B7E69E2DBC9933A14E4A3B0669F31657E14D0E634D64C5D9611C81865AB39525916202395ADE648F92DBF8C93B799A3D0CAA868DF11C977FACAA0E40FE678D9C5BD8C94355531C68E662D952541C522B568A19BB9911328B16C900FC8A9B7BF0BB4523F8C0798DBC923CDC9F0B91836074F52F74D08D931BB0C913599634867E6328ED46C8E559C43CB4845A3394E7EACACE8366B3347910F8D6524B9BDC7D8E47361657CF287DE78F1416C0DDA9BCAA957EB1C4AA7C1CA244AED7DD174C1CAD61E169E9F002B469E37F6D095B43D5494D5B26D7CBC88D5B8B436095AE9D66940DC6A20DC872E332CE5FE4E46533EEC43E13E14EE43A171284C4F780605C2E410A87F18AC277B9820981E0D2A112C69314748EF906484B4A547D852AE8394B8A57CE931AAE2CE471959D1BA63E3AA9CEEE85D0AEEC5298F769A33CE4E56BADFB5548E5AD22EB6052ABA255E7CCC32DB70818351DC6134FBC39FFA2489E779870B44C90273915EB8DA47078747DA2399A7F360C5E1DCF37BBC5A51E76C0737C724D66CE7DD70CFFB53FDE5C82D0ADD150A2B4F47EEF92CA40E36B993BDD79B8F39113282C9152E95C64A0DA41AF8DCA306B62FAAF2B26390A4839E717C1F66DD3DCD9D46DDABE0FF7FA2B5A301A140A97DAC471D10082AA58D0367B98AAC150F66379EF72A043410CD242254ABFE4C063DB0C8CF83DF22A99F1B045516D46D29C8562BFC864AA857FC6D4940ADBC2F71D09EAAAB14FB91DAD7B1E7D4C37713FBCF84ECD83AFFFD7349F9CC4A56B8C7D681F5D796B243DD51CA3EC47DCB21AEA638BB16FBE500A9F7E1731F3EF7E153AF66FE3E82A75C59BCB56024170E6F6B9B585715BCADDD9E5E04AC59EACE4B80B754B3A923EDA4C47717A598A66CBED512DE6DCD7F56A4F808F5B93BB182A68BC4473784FAE2DB6A995BC30D43DDD164573D6D7A8E0B6172CE60C2D3B835B4E2B6ABE0B68E57CF8ADCA682DC3A68F34ADD9642DD5A60F322DEC61ADE3ADCA750DDDB54C1DA5AC0AAD3D569FEE9D5EE0E1BAA6230727DC18394E5562F6820BC48FF3C1904374E962544FC8F9551EC2A81A5E8734E172C8F719A4479176D817301FB4ED81CA09350900572057C06F5F2E449D527E447D0E5349863EF9C5E45621D0918320EE6BE72FD1BC7C936FE49EDB12AF3F82AD990F26D0C01C424F1FEE68ABE8988EF15729FD52CCE1A20E2009C2D9DE3B914F1127AB929902E193504CAD457E48D1B1CC0DA54607E4567E8160F91ED23C7EFF112B99BFC9EAD19A47B2254B58FDF12B40C51C0338C921EFE041BF682BB57FF01CE91BE28A54F0000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202009220625546_AutomaticMigration', N'Model.Migrations.Configuration', 0x1F8B0800000000000400ED5CDD6EE3B815BE2FD077107459CCDA49060BB481BD8B8C9314C16C92C13833EDDD8096689B588972452A13A3E893F5A28FD45728255112FF2451B2E2245321406053E4770E0FCF0F499DE3FFFEFB3FB35F9FC2C079843141119EBBA79313D781D88B7C84377337A1EB9FFEECFEFACB1FFF30BBF2C327E76BD1EF7DDA8F8DC464EE6E29DD9D4FA7C4DBC210904988BC3822D19A4EBC289C023F9A9E9D9CFC657A7A3A850CC265588E33FB9C608A42987D615F1711F6E08E2620B88D7C1810DECE9E2C3354E70E8490EC8007E76ED6637275ED3A1701028CFE12066BD70118471450C6DDF9170297348EF066B9630D2078D8EF20EBB70601819CEBF3AABBED044ECED2094CAB81059497101A851D014FDF73894CD5E1BDE4EA96126332BB62B2A5FB74D699DCE6EE851F227CE1791193BAEBA804CF17419C76AE443B1107BC73B2E677E5E2331D49FFDE398B24A0490CE718263406ACC7A7641520EF23DC3F44BF433CC74910888C31D6D833A981357D8AA31D8CE9FE335C737691EF3A5379DC541D580E13C6E493B8C1F4FD99EBDC31E26015C072DD85092F6914C3BF420C6340A1FF09500A63B66C373ECC24A75157682504C6E9A782225336662DAE730B9E7E837843B773F767661ED7E809FA450367E20B46CCB62AA6342E9B29EF0021DFA3D86FA07C7AF23CA409935D420AC21FA2288000B70DC2CD526AE795C649BB50B611867749B88271232D85540EAD4AA599143344140C217C91CC6C5A196CA3192F98B66EA2787F07BF5B59B1D07F34E2AEAAD96AC1B9FEB459D11D78449B8C61853E5B14664D9F61903D245BB4CB2399B86ADFF24ED771147E8E025903B267DF9651127BE93CA29A0E0F20DE40DA81AD88220F5A7056F4AB612E7FDCCC1FEF6362D1DA266C6D61B481EE367036900D28541967412359CBA8D0916C08297868213D94D52BA4BD0853986EBD6A09B38FCF4118856003C94113B6A2C3140F78DB6B3488705B6419C354D72FD9BF8256FAF90185B6433FEC878EE006656307A8F5BE0F93F9C863F088E1F7AF28759F92BB691121F7DF37AA97B28D2FD21EE6D0E857448EDAE857849F7EA1258B4F76D125EB3A069831C0BC4C80F121F162B4CBAF0F1A0EA563741BA3DB18DDEA4578D4E86677826A8C71CA29AB5798BB8538B10A7269C731C469C1063E35B9BE6772F801C2BFBFC025A08FC82E00FBFBD86FB96B1BC21752069F2B67F35ADA1AE73259A570E6BB0DFEF05B4EB03249B15DB345E9E14146C891ACEC90F71D4DF10731C57E3BBEB76C8939565F2B54EF148D266A63851784441ECA78D0E3777EFA942774857DA7ED22365F0925D8B33561368976CC0A191F73F7643239D5C4D5805E3A9E0ADD80FA270D92D92E8C53E301C182099A790384A96EE8087B68078296B929E32C5D442AFE9282FAE412EE204EADBB65E236A4C5CD9BCE424949F15F6D129A4D052DE9A03C7C7367B5C2EA5DF9E02AA46E25052DE2771CCFAF48F2248FAD4BB204DE843A49BEB06E99CD8EB15ADF725FD1B6C03590069531E19DAA229DDDE34B18400A9D0B2FCF895800E2015F0F12CC37FB03E89A89EB23289949FE3664AB887A04DDCAA31F1B43D908187316FE06570451F8711B8145F4718B2E57698F6C0BA56D42BF10C8F7A184EF1854ED49292C2135249CB0FD76157EB90EC909299A2ACA6082219BB0241FD90255036135B438AEEBA3B90F6D01E0670F6DB8490DB4C1D5D9451B5F9AB8022128835196FC7A5DE8567705AF6AA8C536A8E45F5D3E4DDD2D763D02980944D27BD6ABAB188A856D918429A25BC7F483E5A18470512405FF074B45DE7DEBE2A88F48ED314960B8D2E586C91BA390006244689873710628BD60F96C36CD730C79C36C5A938C38BB05BB1D3B5F09C989BCC559E699898B9F96DD93F7C21C63EA11430E5FC96D49899D90C1062A4F1969C6E9358A09BD0414AC407A185BF8A1D6ADDEE7D7B89F82AEC9ADEB8B5778A66254FA993B3F5366A12152F291D76C92611A65B31B0161D99B873B69BE2808406CB88458444112E2FAA05F3FBA4AF71331AA567BA42A7D4F44AA5AED918A6C3C11A768B347C1DAAC70D71989B977D2A4C407F6783CC14E44E24D3AC66CAA688BB693D23452DB7ACA6A6E650492FFEE6503E28EA5BB09348E7E1E0BB0D793175A93FE6BD16F0D5EA5ECEB10F8EB70118237D96308EFB6451CA1D91EAB7C5F2C22958DF638C5EB5F49B6BCCD1E457CB92B2289ED1DE626BEBF95E6273EE88C97BE3035A07DD0AEC41BD750786B2B2DA2D0DE154D65AC6AEDA0E1C59B5A49C98BC60EB2126E6C246135DCE4BC9CC7AA3D4ED838ADFCC4D9C36FD50C1C5D971D96946723A2490F465738BAC2D1155ABBC2FC28DFCB119A6E222CDCA079D8F338C1FC4655F260598B3D42FE825944C85B3AB82DE965B1E4B7A4271D6655DE5F4B33ABBDD57E31E52A2F9B7AE95771B7DA5DC56A478E5AF666B54CBB4354BB94D4CBBB44E5CE70C6EFEFDAAB9CB50BBDBC8BEB30113D223FBDCC5BEE0985E124ED3059FE23580428DB35141D6E01466B48689EF3E39E9D9C9E2925D3AFA77C794A881F18EE3FEB6A98E5353B42F2124A25DB9A9ED4318747AD237E04B1B705B156487C6091B00936CB0B3AA8027885A8886093468485B9620BAE7A16FF1A60BBA24A75BEBD38ED55D4FB63A875FB32B72A75A7F2CFFF13A99DF5700552258C19B58723D00A5D7AAEB28EAC9492F0748483CA422C58B3F1087A0D88CDA47B967CF8EC33CDAA297A4155E515033959BDDEA32F876AFDC7400C2AC51E998176149D56FA818CBF9572837DF83477FF990D3B776EFEFEAD1AF9CEC976B8E7CE89F3AF81A283E9C26E74716FD9C5194AF58CD83FF7E07A749FA3FB1CDDA75ADBF663384FB1B865306724D6AE0C754C3455A60C75DA530B51144D3DE42461BCB01BB5A54E5B6C56F475AA8B854F2AC6D579A40E7A364C8DD14045212AD2516A888E91866F4BE6C58B3A7AD6080DB5FE3C53FD050A808EA205756911AF5011ACAA7B44DF759CDA1B2D01BB5F35512F6DA979D3F65C353B6FA54E474FED5697ACBEF6A6B5F4267FABC4A2F02A622B9D47B7BEC5396DB539265A1D8B77EA6A774CD0F6453D0D353D4660FB7A9FDA721F136E9742A0A63A2013F62B2912AA2B84692C0551C79916F6F59500F59BAAA48F62CADEABA9EE11B5AF4AA6B128E531D5003D4F018FFE929D3965E107C7594420685341A43F3F8EA127B9E3B2CF0D5E47455C50382ABA68BF6E4081CF7CF5454CD11A78943D665A43B29F66F80A828475B90A57D0BFC1F709DD25944D1986AB404A144BA34B13FDAC4A49E679769F5D2A9221A6C0D844E91DD53DFE90A0C02FF9BE361C7C6A20D2B0C50FB4E95AD2F460BBD997487711B604E2E22BA3ED030CD9819142728F97E011F6E1ED0B81BFC10DF0F645AE443D48FB42C8629F5D22B08941483846359E7D653AEC874FBFFC0FD1BDAA9E775F0000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202009241112430_AutomaticMigration', N'Model.Migrations.Configuration', 0x1F8B0800000000000400ED5CDD6EE3B815BE2FD077107459CC5A89070BB481BD8B8C9314C16C92C13833EDDD8096689B588972452A13A3E893F5A28FD45728F5CF3F49942C3BC9541860E050E4770ECF2F49F1E8BFFFFECFECD7E7C0B79E60445088E7F6F9E4CCB62076430FE1CDDC8EE9FAA73FDBBFFEF2C73FCCAEBDE0D9FA5AF47B9FF463233199DB5B4A77178E43DC2D0C009904C88D4212AEE9C40D030778A1333D3BFB8B737EEE400661332CCB9A7D8E3145014CFF607F2E42ECC21D8D817F177AD027793B7BB24C51AD7B1040B2032E9CDB698FC9F58D6D5DFA0830FA4BE8AF6D0B601C52401977175F085CD228C49BE58E3500FF71BF83ACDF1AF804E65C5F54DD4D2770364D26E054030B283726340C3A029EBFCF25E2C8C37BC9D52E25C66476CD644BF7C9AC53B9CDED4B2F40F8D275432675DB92095E2CFC28E95C8976C20F7867A5CDEF4AE5331B49FEBDB316B14FE308CE318C6904588F4FF1CA47EE47B87F0C7F87788E63DFE71963ACB16742036BFA14853B18D1FD67B8CED9459E6D39E238471E580EE3C66493B8C5F4FDD4B6EE1971B0F261A9776EC24B1A46F0AF10C30850E87D0294C288A9EDD683A9E414EA12AD98C028F9555064C6C6BCC5B6EEC0F36F106FE8766EFFCCDCE3063D43AF68C899F88211F3AD8A2985CB66CA3B40C8F730F21A289F9F1D873461B28B4941F84318FA10E0B641B8594AEDBCD2286E17CA36C4F03E0E56306AA42591CAA065A93493628E88FC2184CF93993995C336BAF18259EB268CF6F7F0BB911773FD4727EE6A9AAD1E9CD94F472F0A20058F88FA43909628DD8327B4494523D164EA677EFB19FAE943B245BB2C67F2F6F12DEB741385C1E7D0176D2D7DF66D19C6919BB01DD6747804D106D20E6C8514B9D080B3A25F0D73D9E366FEF23E3A168DBDCFD4EB466FEBEE6DD3E3781B6DF1B4A961FE794127EF48DA0D3185C922AF9630FB790CC228001B480E9AB0111D6678C0DDDEA06344505996114C6CFD8AFD57D04A7E3FA2C074E887FDD06B058DB1B1ADDA7ADF87C96CE42978C4F0FB5794844F21DCB488308FDFB7729432CD2FC26AE9D0EC57648EDAEC57A49F7EA925CD4F66D925ED3A269831C1BC4C82F1207123B4CB0E2A1AB6BF63761BB3DB98DDEA4578D2EC66B6836ACC71D22EAB579ABB8338364A7249C731C529C9063E3785BE23057C1FE1DF5FE0B8D14364E783FD43E4B59CEA0D110B2983CF8CB35997A6CEB98C57099CFE6C237FF82D2358B924DFAEF8A2F0F02027CC918CFC30EF3BBAE20FE28AFD567C6FD91333ACBE5E289F296A5DD4C40B2F09095D94F2A0E6EF6CF7294EE81A7B56DB416CA60929D9339D309F443BE6858C8FB97D36999C2BE26A402F034F85AE41FD9302C97C174689F3007FC104CDA201C2547574845DB4037ECBDCA471862122117F49417E7205771027DEDD327113D2FCE24D65A1A424C5AF3609CD1CCE4A3A184FBEB833D2B07C563EB809C94B49CE8AF2338EE31B9238C953DB92288137614E422CAC53B33E3056FA2DD7156D0AAE81D4988C0EEF5C16E9EC015F411F52685DBAD9ED8B05202EF0D424C162B33780ADE9B83E8191E9E46F42B6CAA827B0AD2CFBB131948D8051CEC2DFE08A200A3F6E43B0083F6ED1D52AE9912EA19445E81702F37528C9570CB2F5241496906AAEB6B0F576957E731B12AFBE28A62882718EACC31262640B540D84D1D062BBAE8ECE63680B40BEF75086EBCC40195CED5D94F1A58B4B109C316865991FAF73DDEA8EE0650B35580695FCCBEA53CCDD60D5C381E94004BB67BDBA8AA1506C8B247419DD38A71F2C0F2985F32229F83F582AE2EA5B15477D466ACF491CC3952D374C5E9B8538102D42C39C8B3D401905CB673327BBCD9837CC9C9A6B8FB33BB0DBB1FD15770D326FB196D91DC8C54FCBEED704830CC37189E6B660C96D4989ED90C1064A4F1969C6E90D8A08BD0214AC40B2195B7881D2AD3EE6D7849F82AE2EACABCA2B2253312AF99D073FDD1D464DA6CC47DEB0490649964D4F0438B5370FB7929BA9C00791E6106211FA7180EB937EFDE8EA62218F51B59A2355170579A4AAD51CA9B8F7C7E3146DE628589915EE3A23FE969F3029FE81395E7E958F47CA9B548C9923598BB292522C52597A8A666EE40442FCEEE503FC8AA5BB0B348E3E8E071C6E27DCBB511E866B7E35FAEDAFD77EFA7C537AA4AA0E699DFE86B4853AACF2DD338F54369AE314AF9205D9E66DE628FC8B621E896FEF3037FE5DB0303FFE4167BCE4E5AB06ED8372BCDEA843EE0DB0A044AEBD2B9ACC58D5DAC1C28BB7BE8291178D1D64C59DFE08C26A38157AB98855BB3531095AD9EEB547DCAA1938862E332CE1CE0E8F263C1843E1180AC750681C0AB363815E815077AA611006F5C38E1304B3D3592182A52DE608D9CB6A1E216BE910B68417CF42DC129E74985579162ECCACF684FCC58CAB3CB8EA655FC5396D7713AB1D395AD99BB532E53C52EE52522FCF25A5F3C7597E16D85E9BAD1C0E665D6C8B89E80979C9C1E0724F280C264987C9F21FFEC247E9AAA1E87007305A4342B3FB43F6F4EC7C2A157ABF9EA26B8710CFD79CA5D6555E8B3A3BC145289448B6F5AA53C7FB4072F5F31388DC2D8894F2E7034B9B75B0E91DA383EA965788F2082657923037576CC055CF92650D6C5754A13AB917A7BD4A917F0CB36E57730FA3560A354C900F50CBFF913AA63DD4415B5531ED11617A29B94FBD4B7E67E2A0DA955EF6A782AA852AFD2C5B3367B52EC563BF695AF2D10BAAAA0119287AAB45297D39948B54066250AA48491DB4A3E894FA14A4FD74CC2DF6E0F3DCFE673AECC2BAFDFBB76AE43B2B5D3A5F5867D6BF868A6F9A93C031C4BDE510A7A927D462FFDC83EB317C8EE1730C9F7201DE8F113CF90A9CC182115F6033D4FE53573E33D43652AE96912CF5906F4D694F02476BA9B316138DBE4E73318849C5B8BA88D4C1CE8629841AA87245463A49A1D3296A054CC9BC78E549CF42A6A1F49F5FA77F812AA5935841DD7D8B5768084625487CEC3A4D8190724BBC5FC9532F6BA9798577ACC2A2B7524CA4DE3F9755565F20D45A1F94BDAE62597815324D67D9AD6F05515B01918E56C70AA3BA02231DB479E55143E19116D8BC28A9B6264987DBA55AA9A9584987FD4A2A99EAAA751AEB55E4713AC5BEBE3AA57E5315EC91BF0BF86A4A9078EBAB6EE918D41BE90A958E5365A4BEBD674199FBFE3ACB08046D2A88E46BEC18BA42382EFBDCE27558E40589A3A28BF209060A3C16AB2F238AD6C0A5EC31B31A927E3FE22BF063D6E53A5841EF163FC4741753366518AC7CE1065A925D9AE8A7A55422CFB387F450910C3105C6264ACEA81EF08718F95EC9F78D66E3530391A4AD7C439BE892261BDBCDBE44BA0FB121502EBE32DB3EC2806D1829240F78099E601FDEBE10F81BDC00775F5CC2A80769578428F6D915029B080424C7A8C6B33F990D7BC1F32FFF03E858559686600000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[AdminAccount] ON 

INSERT [dbo].[AdminAccount] ([id], [userName], [password], [status], [name], [phoneNumber], [email]) VALUES (1, N'thanguk02', N'e10adc3949ba59abbe56e057f20f883e', 1, N'Dương Thắng', N'01234     ', N'sdadas')
SET IDENTITY_INSERT [dbo].[AdminAccount] OFF
SET IDENTITY_INSERT [dbo].[CategoryNew] ON 

INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (1, N'Tuyển dụng', N'tuyen-dung')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (2, N'Thông báo', N'thong-bao')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (3, N'Hội thảo', N'hoi-thao')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (4, N'Tin tức', N'tin-tuc')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (5, N'Quy chế đào tạo', N'quy-che-dao-tao')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (6, N'Đào tạo Đại học', N'dao-tao-dai-hoc')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (7, N'Đào tạo sau Đại học', N'dao-tao-sau-dai-hoc')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (8, N'Đề tài NCKH các cấp', N'de-tai-nghien-cuu-khoa-hoc-cac-cap')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (9, N'Các bài báo khoa học', N'cac-bai-bao-khoa-hoc')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (10, N'Chuyển giao công nghệ', N'chuyen-giao-cong-nghe')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (11, N'Hoạt động', N'hoat-dong')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (12, N'Học bổng', N'hoc-bong')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (13, N'Các biểu mẫu ', N'cac-bieu-mau')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (14, N'Ban Chủ nhiệm khoa', N'ban-chu-nhiem-khoa')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (15, N'Bộ môn Chế tạo máy', N'bo-mon-che-tao-may')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (16, N'Bộ môn Thiết kế cơ khí', N'bo-mon-thiet-ke-co-khi')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (17, N'Bộ môn Công nghệ Vật liệu', N'bo-mon-cong-nghe-vat-lieu')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (18, N'Bộ môn Cơ điện tử', N'bo-mon-co-dien-tu')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (19, N'Trung tâm Thí nghiệm Thực hành Cơ khí', N'trung-tam-thi-nghiem-thuc-hanh-co-khi')
INSERT [dbo].[CategoryNew] ([id], [name], [metaTitle]) VALUES (20, N'Tuyển sinh', N'tuyen-sinh')
SET IDENTITY_INSERT [dbo].[CategoryNew] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (1, N'Giới thiệu', N'gioi-thieu', N'1', 1)
INSERT [dbo].[Menu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (2, N'Đào tạo', N'dao-tao', N'2', 2)
INSERT [dbo].[Menu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (4, N'Khoa học công nghệ', N'khoa-hoc-cong-nghe', N'3', 3)
INSERT [dbo].[Menu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (5, N'Sinh viên', N'sinh-vien', N'4', 4)
INSERT [dbo].[Menu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (6, N'Tin tức', N'tin-tuc', N'5', 5)
INSERT [dbo].[Menu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (7, N'Cựu sinh viên', N'cuu-sinh-vien', N'4', 6)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[New] ON 

INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (1, N'Hội thảo tuyển dụng', N'Hội thảo tuyển dụng Samsung 2020', N'hoi-thao-tuyen-dung-samsung-2020', N'Hội thảo tuyển dụng Samsung 2020 là chương trình để sinh viên tiếp cận thông tin đầy đủ hơn về công ty và việc làm tại Samsung', N'tuyen-sinh.jpg', NULL, NULL, NULL, CAST(N'2020-09-19 21:29:46.263' AS DateTime), NULL, 0, 1)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (3, N'Chào tháng 5', N'Chào tháng 5 rực rỡ', N'chao-thang-nam-ruc-ro', N'Hội thảo chào tháng 5', N'tuyen-sinh.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (16, N'Hội thảo', N'nhân viên', N'nhan-vien', N'<p style="text-align:center">Hội thảo tuyển dụng</p>

<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
', N'/Data/images/about_img.jpg', NULL, NULL, NULL, NULL, NULL, 0, 3)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (17, N'Tin tuyển sinh năm học 2020', N'tin tuyển sinh', N'tin-tuyen-sinh-nam-hoc-2020', N'<p>th&ocirc;ng tin tuyển sinh năm học</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 0, 2)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (18, N'Thông báo tổ chức ngày hội tuyển dụng', N'Thông báo tổ chức ngày hội tuyển dụng', N'thong-bao-to-chuc-ngay-hoi-tuyen-dung', N'<p style="text-align:center">Th&ocirc;ng b&aacute;o tổ chức ng&agrave;y hội tuyển dụng</p>

<p>Sau đ&acirc;y l&agrave; th&ocirc;ng b&aacute;o về tổ chức ng&agrave;y hội tuyển dụng</p>
', N'/Data/images/ky-thuat-dieu-khien.PNG', NULL, CAST(N'2020-09-20 16:48:38.627' AS DateTime), N'thanguk02', NULL, NULL, 2, 2)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (19, N'Quyết định về việc chuyển hệ đại học sang hệ đào tạo VLVH', N'Quyết định về việc chuyển hệ đại học sang hệ đào tạo VLVH', N'quyet-dinh-chuyen-he-dai-hoc', N'<p><a href="/Data/files/quyet-dinh.pdf">Quyết định chuyển hệ đại học</a></p>
', N'/Data/images/VLVH.jpg', NULL, CAST(N'2020-09-22 22:54:50.030' AS DateTime), N'thanguk02', CAST(N'2020-09-23 11:39:14.243' AS DateTime), NULL, 3, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (20, N'Quyết định số về việc cho học sinh thôi học hoặc nghỉ học', N'Quyết định số về việc cho học sinh thôi học hoặc nghỉ học', N'quyet-dinh-cho-hoc-sinh-thoi-hoc', N'<p><img alt="" src="/Data/images/1111.jpg" style="height:1061px; width:750px" /></p>

<p><a href="/Data/files/QD%20so%201469%20cho%20SV%20bao%20luu%20va%20tam%20thoi%20nghi%20hoc.pdf">Quyết định cho học sinh th&ocirc;i học hoặc nghỉ học</a></p>
', N'/Data/images/BAOLUU.jpg', NULL, CAST(N'2020-09-22 22:58:06.043' AS DateTime), N'thanguk02', CAST(N'2020-09-27 22:43:45.607' AS DateTime), NULL, 3, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (21, N'Ban Chủ nhiệm khoa', N'Giới thiệu về Ban Chủ nhiệm khoa', N'ban-chu-nhiem-khoa', N'<p>Giới thiệu về Ban Chủ nhiệm khoa</p>
', NULL, NULL, CAST(N'2020-09-29 00:42:19.880' AS DateTime), N'thanguk02', NULL, NULL, 7, 14)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (22, N'Giới thiệu về bộ môn Cơ Điện tử', N'Bộ môn Cơ Điện tử', N'bo-mon-co-dien-tu', N'<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong>Giới thiệu bộ m&ocirc;n cơ điện tử</strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">Bộ m&ocirc;n Cơ điện tử được th&agrave;nh lập ng&agrave;y 9/9/2005 theo quyết định 472/QĐ &ndash; TCCB của hiệu trưởng trường đại học kỹ thuật C&ocirc;ng Nghiệp, Đại học Th&aacute;i Nguy&ecirc;n. Bộ m&ocirc;n Cơ điện tử c&oacute; sứ mệnh đ&agrave;o tạo kỹ sư kỹ thuật Cơ điện tử (m&atilde; ng&agrave;nh 7520114) cho x&atilde; hội.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Ban đầu trực thuộc khoa Cơ Kh&iacute;, trưởng Bộ m&ocirc;n trong giai đoạn 2005 đến 2008 l&agrave; PGS.TS Nguyễn Đăng H&ograve;e, trong giai đoạn n&agrave;y Bộ m&ocirc;n c&oacute; 05 Giảng vi&ecirc;n v&agrave; chưa giảng dạy chuy&ecirc;n m&ocirc;n. Từ 2008 Bộ m&ocirc;n c&oacute; thay đổi về nh&acirc;n sự, cụ thể PGS.TS Phạm Th&agrave;nh Long nguy&ecirc;n giảng vi&ecirc;n Bộ m&ocirc;n M&aacute;y &amp; Tự động h&oacute;a đảm nhận chức vụ trưởng Bộ m&ocirc;n, Th.s L&ecirc; Thị Thu Thủy l&agrave;m ph&oacute; trưởng Bộ m&ocirc;n, Bộ m&ocirc;n r&agrave; so&aacute;t c&aacute;c đề cương m&ocirc;n học, chuẩn đầu ra, chuẩn bị c&aacute;c gi&aacute;o tr&igrave;nh v&agrave; bắt đầu đ&agrave;o tạo kh&oacute;a đại học chuy&ecirc;n ng&agrave;nh đầu ti&ecirc;n l&agrave; K43 CDT (2007-2012).</span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Ảnh</span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">Theo quyết định năm 2014 của Hiệu trưởng trường ĐHKT C&ocirc;ng Nghiệp, Bộ m&ocirc;n Cơ điện tử chuyển sang trực thuộc quản l&yacute; của khoa Điện tử đến nay.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Đến nay Bộ m&ocirc;n Cơ điện tử đ&atilde; đ&agrave;o tạo ra trường 07 kh&oacute;a đại học (k43-k49) v&agrave; hiện đang quản l&yacute;, đ&agrave;o tạo 04 kh&oacute;a (k50-k53) với khoảng hơn 800 sinh vi&ecirc;n chuy&ecirc;n ng&agrave;nh. Với lực lượng giảng vi&ecirc;n hiện tại gồm 10 người, trong đ&oacute; 02 PGS, 01 TS, 02 NCS, 05 Th.s. Về cơ sở vật chất Bộ m&ocirc;n hiện đang quản l&yacute; 01 ph&ograve;ng th&iacute; nghiệm chuy&ecirc;n ng&agrave;nh, 02 ph&ograve;ng l&agrave;m việc c&ugrave;ng nhiều vật chất phục vụ giảng dạy, nghi&ecirc;n cứu kh&aacute;c.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bộ m&ocirc;n Cơ điện tử hiện đang giảng dạy 12 học phần chuy&ecirc;n m&ocirc;n trong đ&oacute; bao gồm 06 học phần l&yacute; thuyết (02 học phần cho c&aacute;c ng&agrave;nh CĐT, KTCK), 04 học phần đồ &aacute;n, 02 học phần thực h&agrave;nh, th&iacute; nghiệm.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Từ năm 2007 c&aacute;c kh&oacute;a k43 đến k48 chỉ tuyển sinh với quy m&ocirc; 01 lớp mỗi năm, c&aacute;c kh&oacute;a k49 &ndash; k51 đ&atilde; tăng quy m&ocirc; l&ecirc;n 02 lớp mỗi năm với sĩ số sinh vi&ecirc;n trung b&igrave;nh 80 sv/lớp. Ri&ecirc;ng 2 kh&oacute;a mới nhất l&agrave; k52, k53 theo nhu cầu x&atilde; hội đ&atilde; tuyển 03 lớp Cơ điện tử với tổng số sinh vi&ecirc;n mỗi kh&oacute;a l&agrave; tr&ecirc;n 200 sv. Hầu hết c&aacute;c sinh vi&ecirc;n của ng&agrave;nh đ&agrave;o tạo đều t&igrave;m được việc l&agrave;m đ&uacute;ng chuy&ecirc;n m&ocirc;n ngay sau khi tốt nghiệp ra trường ngay tại c&aacute;c tập đo&agrave;n c&ocirc;ng nghiệp lớn trong v&agrave; ngo&agrave;i tỉnh.</span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Ảnh</span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp;Đến nay, sau 13 năm th&agrave;nh lập, Bộ m&ocirc;n Cơ điện tử đ&atilde; đạt được nhiều kết quả đ&aacute;ng kể trong hoạt động khoa học tr&ecirc;n lĩnh vực nghi&ecirc;n cứu khoa học sinh vi&ecirc;n v&agrave; nghi&ecirc;n cứu khoa học của giảng vi&ecirc;n.</span></span></span></p>

<ul>
	<li><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">H&agrave;ng chục lượt học bổng Toyota cho sinh vi&ecirc;n c&oacute; th&agrave;nh t&iacute;ch học tập xuất sắc;</span></span></span></li>
	<li><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">Giải nhất Toyota về nghi&ecirc;n cứu khoa học d&agrave;nh cho sinh vi&ecirc;n;</span></span></span></li>
	<li><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">Khoảng 50 b&agrave;i b&aacute;o khoa học trong nước v&agrave; quốc tế;</span></span></span></li>
	<li><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">01 đề t&agrave;i NCKH cấp Bộ, 02 đề t&agrave;i NCKH cấp đại học, 07 đề t&agrave;i NCKH cơ sở v&agrave; nhiều đề t&agrave;i NCKH sinh vi&ecirc;n;</span></span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; &nbsp;C&oacute; 20 sản phẩm khoa học sẵn s&agrave;ng chuyển giao trong lĩnh vực Cơ điện tử ứng dụng trong c&ocirc;ng nghiệp hoặc d&acirc;n dụng, đặc biệt Bộ m&ocirc;n c&oacute; những sản phẩm c&oacute; thể tiến tới đăng k&yacute; sở hữu tr&iacute; tuệ như m&aacute;y đo tọa độ CMM, m&aacute;y đo g&oacute;c nghi&ecirc;ng b&aacute;nh răng trụ, k&eacute;t sắt bảo mật sử dụng kh&oacute;a Cơ điện tử, b&agrave;n tay robot kh&ocirc;ng sử dụng nguồn dẫn động độc lập (sản phẩm k&eacute;t sắt CĐT đ&atilde; đăng k&yacute; quyền sở hữu tr&iacute; tuệ).</span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:red">Các c&ocirc;ng trình khoa học đã c&ocirc;ng b&ocirc;́ (BM Cơ điện tử)</span></strong></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:black">Danh s&aacute;ch c&aacute;c b&agrave;i b&aacute;o - hội thảo quốc&nbsp;gia</span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:blue">Năm 2015</span></strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">1. Nguyễn Quang Ho&agrave;ng, Vũ Đức Vương, &quot;Ứng dụng thuật giải di truyền trong b&agrave;i to&aacute;n động học ngược robot chuỗi v&agrave; song song&quot;, Hội nghị to&agrave;n quốc lần thứ 3 về Điều khiển v&agrave; tự động h&oacute;a VCCA 2015, Tháng 11/2015</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">2. Ng&ocirc; Văn An, Dương Minh Đức, Nguyễn T&ugrave;ng L&acirc;m, L&ecirc; Mạnh Qu&yacute;, Nguyễn Đức Minh, &quot;Điều khiển cầu trục kết hợp chống rung lắc v&agrave; tr&aacute;nh vật cản&quot;, Hội nghị tự động h&oacute;a to&agrave;n quốc 2015 (VCCA-2015), Tháng 11/2015</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:blue">Năm 2016</span></strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">1. Q. Ho&agrave;ng, V. Đ. Vương, and N. V. Quyền, &ldquo;M&ocirc; h&igrave;nh h&oacute;a v&agrave; điều khiển robot song song dẫn động bằng động cơ điện một chiều trong kh&ocirc;ng gian thao t&aacute;c&rdquo; in Hội nghị Khoa học to&agrave;n quốc lần thứ 2 về Cơ kỹ thuật v&agrave; Tự động h&oacute;a, pp. 65&ndash;72, Th&aacute;ng 10-2016</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">2. Phạm Thành Long, Vũ Đức Bình, &quot;V&ecirc;̀ m&ocirc;̣t quan đi&ecirc;̉m đi&ecirc;̀n khi&ecirc;̉n đ&ocirc;̣ng lực học robot m&ecirc;̀m&quot;, Tạp ch&iacute; NCKH&amp; C&ocirc;ng nghệ Qu&acirc;n sự, Số Đặc san ACMEC, 07 - 2016, pp 84-91, Tháng 7/2016</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">3. Phạm Thành Long, L&ecirc; Thị Thu Thủy, &quot;Khảo s&aacute;t t&iacute;nh đẳng tốc v&agrave; giới hạn chuyển hướng kh&ocirc;ng gian của một số khớp vạn năng bằng phương ph&aacute;p số&quot; , Tạp ch&iacute; NCKH&amp; C&ocirc;ng nghệ Qu&acirc;n sự, Số Đặc san ACMEC, 07 - 2016, pp 138-145, Tháng 7/2016</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">4. Phạm Thành Long, L&ecirc; Thị Thu Thủy, &quot;T&iacute;nh to&aacute;n tương quan độ ch&iacute;nh x&aacute;c của c&aacute;c ph&eacute;p đo th&agrave;nh phần trong b&agrave;i to&aacute;n đo lường gi&aacute;n tiếp&quot; , Tạp ch&iacute; NCKH&amp; C&ocirc;ng nghệ Qu&acirc;n sự, Số Đặc san ACMEC, 07 - 2016, pp 179-186, Tháng 7/2016</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">5. Ng&ocirc; Văn An, Dương Minh Đức, Nguyễn T&ugrave;ng L&acirc;m, &quot;Phương pháp điều khiển chống rung cho c&acirc;̀u trục tr&aacute;nh vật cản&quot;,Tạp ch&iacute; NCKH&amp; C&ocirc;ng nghệ Qu&acirc;n sự, Số Đặc san ACMEC, 07 - 2016, pp 187-195, Tháng 7/2016</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:blue">Năm 2017</span></strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">1. Phạm Th&agrave;nh Long, L&ecirc; Thị Thu Thủy, &ldquo;X&aacute;c định điểm chạm v&agrave; hiệu chỉnh dữ liệu đo bằng cảm biến lực khi sử dụng đầu đo tiếp x&uacute;c tr&ecirc;n m&aacute;y CMM&rdquo;, Tạp ch&iacute; cơ kh&iacute; Việt Nam, ISSN 0866 &ndash; 7056, Th&aacute;ng 3/2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">2. Phạm Th&agrave;nh Long, L&ecirc; Thị Thu Thủy, &ldquo;Thiết kế dung sai cho nh&oacute;m robot dựa tr&ecirc;n quan hệ đồng dạng&rdquo;, Kỷ yếu HTQG &ldquo;ứng dụng c&ocirc;ng nghệ cao v&agrave;o thực tiễn&rdquo;, TNUT-2017,pp.40-48, Th&aacute;ng 5/2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">3. Trần Bảo Ngọc, Phạm Th&agrave;nh Long, Dương Quốc Kh&aacute;nh, &ldquo;Dự b&aacute;o th&ocirc;ng số đầu v&agrave;o b&agrave;i to&aacute;n điều khiển robot mềm tr&ecirc;n cơ sở m&ocirc; h&igrave;nh nội suy h&agrave;m định dạng&rdquo;, Kỷ yếu HTQG &ldquo;Ứng dụng c&ocirc;ng nghệ cao v&agrave;o thực tiễn&rdquo;, TNUT-2017, pp. 33-39, Th&aacute;ng 5/2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">4. Q. Ho&agrave;ng, N. V. Quyền, and V. Đ. Vương, &ldquo;M&ocirc; h&igrave;nh h&oacute;a v&agrave; điều khiển tay m&aacute;y đơn c&oacute; kh&acirc;u đ&agrave;n hồi tịnh tiến&rdquo;; Kỷ yếu HTQG &ldquo;Ứng dụng c&ocirc;ng nghệ cao v&agrave;o thực tiễn&rdquo;, TNUT-2017, pp. 49&ndash;56, th&aacute;ng 5-2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">5. Nguyễn Văn Khang, Nguyễn Văn Quyền, Nguễn Ngọc H&agrave;, &quot;Về phương ph&aacute;p giải b&agrave;i to&aacute;n động lực học ngược robot song song&quot;; Kỷ yếu HTQG &ldquo;Ứng dụng c&ocirc;ng nghệ cao v&agrave;o thực tiễn&rdquo;, TNUT-2017, pp. 57&ndash;66, th&aacute;ng 5-2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">6. T. Dinh, N. D. Cuong, N. D. Hao, &ldquo;Bộ điều khiển phản hồi đầu ra cho robot hai b&aacute;nh tự c&acirc;n bằng&rdquo; ; Kỷ yếu Hội thảo Quốc gia &ldquo;Ứng dụng c&ocirc;ng nghệ cao v&agrave;o thực tiễn&rdquo;; TNUT-2017, pp. 49&ndash;56, th&aacute;ng 5-2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">7. Trần Bảo Ngọc, Dương Quốc Kh&aacute;nh, &ldquo;Dự b&aacute;o th&ocirc;ng số đầu v&agrave;o b&agrave;i to&aacute;n điều khiển robot mềm tr&ecirc;n cơ sở m&ocirc; h&igrave;nh nội suy h&agrave;m định dạng&rdquo;, Tạp ch&iacute; Cơ kh&iacute;, Th&aacute;ng 3/2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">8. Trần Bảo Ngọc, Phạm Th&agrave;nh Long, Dương Quốc Kh&aacute;nh, &ldquo;Dự b&aacute;o th&ocirc;ng số đầu v&agrave;o b&agrave;i to&aacute;n điều khiển robot mềm tr&ecirc;n cơ sở m&ocirc; h&igrave;nh nội suy h&agrave;m định dạng&rdquo;, Kỷ yếu HTQG &ldquo;Ứng dụng c&ocirc;ng nghệ cao v&agrave;o thực tiễn&rdquo;, TNUT-2017, pp. 33-39, th&aacute;ng 5-2017.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">9. Q. Ho&agrave;ng, V. Đ. Vương, and N. T. L&acirc;m, &ldquo;Ph&acirc;n t&iacute;ch động học v&agrave; kỳ dị c&aacute;c robot song song phẳng ba bậc tự do,&rdquo; in&nbsp;<em>Hội nghị cơ học to&agrave;n quốc lần thứ X</em>, 2017.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">10. N. Q. Ho&agrave;ng, V. Đ. Vương, and N. T. L&acirc;m, &ldquo;Vượt kỳ dị trong m&ocirc; phỏng động lực học robot song song sử dụng kh&ocirc;ng gian b&ugrave; của ma trận Jacobi,&rdquo; in&nbsp;<em>Hội nghị cơ học to&agrave;n quốc lần thứ X</em>, 2017.</span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:black">Danh s&aacute;ch c&aacute;c b&agrave;i b&aacute;o - hội thảo quốc tế</span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:blue">Năm 2015</span></strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">1. Li Wei Guang, Trang Thanh Trung, Pham Thanh Long, &ldquo;The use of equivalent replacement structure in studying the Kinematic Problem of Parallel Robot&rdquo;, International Conference on Mechatronics and Automation Science (ICMAS 2015), Paris, France, April 13 - 14, 2015</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">2. Trang Thanh Trung, Li Wei Guang and Pham Thanh Long, &quot;A Techniques to Downgrade Objective Function in Parallel Robot Kinematics Problem&quot;, International journal of robotics and automation, ISSN 2089 &ndash; 4856, Sep 2015.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:blue">Năm 2016</span></strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">Q. Hoang, V. D. Vuong, and N. Van Quyen, &ldquo;Modeling and Model-Based Controller Design for 3RRR Planar Parallel Robots Driven by DC Motors in Joint Space&rdquo; in The 4th International Conference on Engineering Mechanics and Automation (ICEMA 4), August 2016, vol. 4, pp. 114&ndash;123.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:blue">Năm 2017</span></strong></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">1. Phạm Th&agrave;nh Long, Trang Th&agrave;nh Trung, Li Wei Guang, &ldquo;A New Method to Solve the Kinematic Problem of Parallel Robots Using General reduce Gradient algorithm&rdquo;, Journal of Robotiic and Mechatronic. vol 28- No3, trang 404,2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">2. Phạm Th&agrave;nh Long, Trang Th&agrave;nh Trung, Li Wei Guang, &ldquo;Tolerance desingn of robot parameters using generalized algorithm&rdquo;, International Journal of materials, Mechanics and manufctring, vol.5 No2; 96, May 2017</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">3. N. Q. Hoang and V. D. Vuong, &ldquo;Sliding mode control for a Planar parallel robot driven by electric motors in a task space,&rdquo;&nbsp;<em>J. Comput. Sci. Cybern.</em>, vol. 33, no. 4, pp. 325&ndash;337, 2017.</span></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong>Ph&ograve;ng th&iacute; nghiệm cơ điện tử</strong></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:white"><span style="color:black">Thực h&agrave;nh, th&iacute; nghiệm l&agrave; c&ocirc;ng t&aacute;c rất quan trong trong tất cả c&aacute;c ng&agrave;nh học v&agrave; c&oacute; vai tr&ograve; đặc biệt quan trọng trong c&aacute;c khối ng&agrave;nh kỹ thuật n&oacute;i chung v&agrave; ng&agrave;nh Cơ điện tử n&oacute;i ri&ecirc;ng. C&aacute;c b&agrave;i th&iacute; nghiệm được tiến h&agrave;nh tr&ecirc;n c&aacute;c m&ocirc; h&igrave;nh th&iacute; nghiệm sẽ cụ thể h&oacute;a kiến thức l&yacute; thuyết được học tr&ecirc;n lớp v&agrave; trong s&aacute;ch vở, từ đ&oacute; đơn giản h&oacute;a v&agrave; thực tế h&oacute;a c&aacute;c vấn đề l&yacute; thuyết trừu tượng gi&uacute;p c&aacute;c sinh vi&ecirc;n hiểu v&agrave; nắm chắc được nguy&ecirc;n l&yacute; cơ sở, c&aacute;ch thức ứng dụng v&agrave; vận h&agrave;nh hệ thống. C&aacute;c b&agrave;i th&iacute; nghiệm c&ograve;n gi&uacute;p sinh vi&ecirc;n bước đầu tiếp cận với c&aacute;c m&ocirc; h&igrave;nh hệ thống li&ecirc;n quan đến c&ocirc;ng việc sau khi ra trường, từ đ&oacute; c&oacute; định hướng trong việc t&iacute;ch lũy kiến thức, kỹ năng tốt nhất cho c&aacute; nh&acirc;n m&igrave;nh. Dưới đ&acirc;y l&agrave; một số h&igrave;nh ảnh về Ph&oacute;ng th&iacute; nghiệm thuộc Bộ m&ocirc;n Cơ điện tử, Khoa Điện tử, Trường ĐH KTCN Th&aacute;i Nguy&ecirc;n.</span></span></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Cơ điện tử l&agrave; g&igrave;? Cơ hội việc l&agrave;m ứng vi&ecirc;n ng&agrave;nh Cơ điện tử hiện nay</span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:black">&nbsp;&quot; Cơ điện tử&quot;</span></strong><span style="color:black">&nbsp;l&agrave; một thuật ngữ được sử dụng kh&aacute; phổ biến hiện nay. Vậy bạn c&oacute; biết Cơ điện tử l&agrave; g&igrave;? H&atilde;y đi t&igrave;m c&acirc;u trả lời cho vấn đề n&agrave;y c&ugrave;ng fee.tnut.edu.vn.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; Cơ điện tử l&agrave; lĩnh vực tổng hợp li&ecirc;n ng&agrave;nh giữa cơ kh&iacute;, điện tử v&agrave; tin học. Đ&acirc;y l&agrave; một ng&agrave;nh v&ocirc; c&ugrave;ng quan trọng trong sự ph&aacute;t triển của khoa học kỹ thuật hiện đại với mục ti&ecirc;u l&agrave; tạo ra c&aacute;c sản phẩm mới mang t&iacute;nh tự động h&oacute;a, t&iacute;ch hợp v&agrave; c&oacute; nhiều t&iacute;nh năng vượt trội.</span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; Ng&agrave;nh học về Cơ điện tử&nbsp; phổ biến nhất hiện nay ch&iacute;nh l&agrave; Kỹ thuật cơ điện tử. Sinh vi&ecirc;n học ng&agrave;nh n&agrave;y được trang bị nhiều kiến thức nền tảng tổng hợp về cơ kh&iacute;; robot; điều khiển nh&uacute;ng; hệ thống đo lường; điều khiển th&ocirc;ng minh...</span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Ảnh</span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:black">CƠ HỘI VIỆC L&Agrave;M CỦA ỨNG VI&Ecirc;N CHUY&Ecirc;N NG&Agrave;NH CƠ ĐIỆN TỬ HIỆN NAY</span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; Sinh vi&ecirc;n sau khi tốt nghiệp ng&agrave;nh Kỹ thuật cơ điện tử c&oacute; thể đảm nhận vị tr&iacute; nh&acirc;n vi&ecirc;n vận h&agrave;nh, kỹ sư thiết kế... trong c&aacute;c doanh nghiệp sản xuất về cơ kh&iacute; - điện tử, chế tạo khu&ocirc;n mẫu, tự động h&oacute;a...</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:black">&nbsp; &nbsp; Hiện nay, ng&agrave;nh Cơ điện tử đ&oacute;ng vai tr&ograve; cực kỳ quan trọng trong cuộc c&aacute;ch mạng c&ocirc;ng nghiệp 4.0. Bởi xu hướng ph&aacute;t triển của ng&agrave;nh c&ocirc;ng nghiệp l&agrave; tin học h&oacute;a - tự động h&oacute;a tất cả c&aacute;c kh&acirc;u, từ quản l&yacute; vật tư, chuẩn bị sản xuất, thực hiện sản xuất cho đến quản l&yacute; chất lượng sản phẩm. Hệ thống c&ocirc;ng nghệ, thiết bị đảm nhiệm những c&ocirc;ng việc n&agrave;y ch&iacute;nh l&agrave; sản phẩm của c&aacute;c kỹ sư cơ điện tử.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Ảnh</span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:white"><span style="color:black">&nbsp;Việc l&agrave;m tại c&aacute;c nh&agrave; m&aacute;y, c&aacute;c khu c&ocirc;ng nghiệp hiện nay, nhu cầu tuyển dụng c&aacute;c vị tr&iacute; Kỹ sư cơ điện; Kỹ sư điện tử; kỹ sư điện tự động h&oacute;a... l&agrave; rất lớn. Theo dự b&aacute;o của giới chuy&ecirc;n gia, nhu cầu nh&acirc;n lực ng&agrave;nh cơ điện tử c&oacute; xua hướng tăng cao đặc biệt trong v&agrave;i năm tới. Bởi nhiều doanh nghiệp trong nước, c&aacute;c c&ocirc;ng ty li&ecirc;n doanh nước ngo&agrave;i đang trong qu&aacute; tr&igrave;nh chuyển giao c&ocirc;ng nghệ, đưa v&agrave;o sử dụng nhiều d&acirc;y chuyền c&ocirc;ng nghệ hiện đại phục vụ qu&aacute; tr&igrave;nh sản xuất. Do đ&oacute; nếu bạn l&agrave; một kỹ sư chuy&ecirc;n ng&agrave;nh cơ điện tử c&oacute; nền tảng kiến thức - kỹ năng vững v&agrave;ng, tư duy tốt, chắc chắn bạn sẽ nhanh ch&oacute;ng t&igrave;m được một c&ocirc;ng việc tốt với mức lương hấp dẫn.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif"><span style="background-color:white"><span style="color:black">&nbsp;Nếu bạn c&oacute; đam m&ecirc; v&agrave; đang muốn theo học ng&agrave;nh n&agrave;y th&igrave; trường Đại học Kỹ thuật C&ocirc;ng nghiệp l&agrave; một địa chỉ uy t&iacute;n để tham khảo.</span></span></span></span></p>

<p style="text-align:center">&nbsp;</p>
', NULL, NULL, CAST(N'2020-09-29 00:45:02.257' AS DateTime), N'thanguk02', NULL, NULL, 7, 18)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (23, N'Tin tuyển sinh', N'Tuyển sinh', N'tuyen-sinh', N'<p>Tin tức về việc tuyển sinh năm học 2021<img alt="" src="/Data/images/KHOA%20CHUAN.jpg" style="height:1651px; width:1083px" /></p>
', NULL, NULL, CAST(N'2020-09-29 00:48:30.023' AS DateTime), N'thanguk02', CAST(N'2021-03-20 21:46:55.567' AS DateTime), N'thanguk02', 10, 20)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (24, N'Bộ môn Chế tạo máy', N'Giới thiệu về bộ môn chế tạo máy', N'bo-mon-che-tao-may', N'<p>Giới thiệu về bộ m&ocirc;n chế tạo m&aacute;y</p>
', NULL, NULL, CAST(N'2021-03-20 18:07:42.223' AS DateTime), N'thanguk02', NULL, NULL, 1, 15)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (25, N'Bộ môn Công nghệ vật liệu', N'Giới thiệu về bộ môn Công nghệ vật liệu', N'bo-mon-cong-nghe-vat-lieu', N'<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Giới thiệu </span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Bộ m&ocirc;n C&ocirc;ng ngh&ecirc;̣ v&acirc;̣t li&ecirc;̣u (Khoa Cơ kh&iacute;, Trường Đại học Kỹ thuật C&ocirc;ng nghiệp - Đại học Th&aacute;i Nguy&ecirc;n) được th&agrave;nh lập năm 2008 tr&ecirc;n cơ sở sáp nh&acirc;p 03 bộ m&ocirc;n, g&ocirc;̀m: Bộ m&ocirc;n Kỹ thuật v&acirc;̣t li&ecirc;̣u; Bộ m&ocirc;n Kỹ thu&acirc;̣t Ch&ecirc;́ tạo máy; Bộ m&ocirc;n Cơ khí luy&ecirc;̣n kim - cán thép. Cả 03 bộ m&ocirc;n chuy&ecirc;n m&ocirc;n n&agrave;y đều c&oacute; lịch sử x&acirc;y dựng v&agrave; trưởng th&agrave;nh hơn nửa thế kỷ c&ugrave;ng với sự hình thành, phát tri&ecirc;̉n của Nhà trường (06/12/1966) và khoa Cơ kh&iacute; (30/10/1972). </span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">V&ecirc;̀ nh&acirc;n lực</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hiện nay, Bộ m&ocirc;n C&ocirc;ng ngh&ecirc;̣ v&acirc;̣t li&ecirc;̣u được khoa giao quản lý chuy&ecirc;n m&ocirc;n 01 chuy&ecirc;n ngành (chuy&ecirc;n ngành Gia c&ocirc;ng áp lực thu&ocirc;̣c ngành Kỹ thu&acirc;̣t Cơ khí) và 01 ngành (ngành Kỹ thu&acirc;̣t v&acirc;̣t li&ecirc;̣u). Đội ngũ c&aacute;n bộ của B&ocirc;̣ m&ocirc;n hi&ecirc;̣n tại có 8 giảng vi&ecirc;n cơ hữu v&agrave; nhi&ecirc;̀u giảng vi&ecirc;n ki&ecirc;m nhiệm, g&ocirc;̀m: 03 Ti&ecirc;́n sĩ, 03 nghi&ecirc;n cứu sinh, 02 thạc sĩ, trong đó có 02 giảng vi&ecirc;n chính. B&ecirc;n cạnh đó, đ&ecirc;̉ tri&ecirc;̉n khai các chương trình đào tạo, b&ocirc;̣ m&ocirc;n thường xuy&ecirc;n mời các giảng vi&ecirc;n có trình đ&ocirc;̣ cao tại các trường Đại học lớn (Đại học Bách Khoa Hà N&ocirc;̣i) v&ecirc;̀ tham gia giảng dạy. Đ&ocirc;̀ng thời, đ&ecirc;̉ người học nắm được các ti&ecirc;́n b&ocirc;̣ của khoa học &ndash; kỹ thu&acirc;̣t trong sản xu&acirc;́t, nhi&ecirc;̀u cán b&ocirc;̣ kỹ thu&acirc;̣t có trình đ&ocirc;̣ cao cũng được thường xuy&ecirc;n mời giảng, đào tạo ngoại khóa.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Định hướng ph&aacute;t triển của bộ m&ocirc;n</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- X&acirc;y dựng đội ngũ giảng vi&ecirc;n trở th&agrave;nh c&aacute;c chuy&ecirc;n gia Khoa học - Kỹ thuật c&oacute; năng lực chuy&ecirc;n m&ocirc;n cao trong lĩnh vực gi&aacute;o dục đ&agrave;o tạo, nghi&ecirc;n cứu khoa học v&agrave; chuyển giao c&ocirc;ng nghệ, trọng t&acirc;m là các lĩnh vực c&ocirc;ng ngh&ecirc;̣ v&acirc;̣t li&ecirc;̣u truy&ecirc;̀n th&ocirc;́ng (đúc, hàn, gia c&ocirc;ng áp lực) và các loại v&acirc;̣t li&ecirc;̣u mới (v&acirc;̣t li&ecirc;̣u composite n&ecirc;̀n kim loại).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Gi&aacute;o dục v&agrave; đ&agrave;o tạo nguồn nh&acirc;n lực Khoa học - Kỹ thuật tr&igrave;nh độ cao, c&oacute; năng lực cạnh tranh, đ&aacute;p ứng nhu cầu x&atilde; hội, trọng t&acirc;m là các chương trình đào tạo được khoa Cơ khí giao quản lý chuy&ecirc;n m&ocirc;n. Đ&ocirc;̀ng thời, tham gia quá trình đào tạo các ngành, chuy&ecirc;n ngành trong Nhà trường và trong khoa.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Tạo lập v&agrave; quan hệ với c&aacute;c cơ sở gi&aacute;o dục - đ&agrave;o tạo, c&aacute;c tổ chức nghi&ecirc;n cứu v&agrave; doanh nghiệp để tạo điều kiện tốt nhất cho c&aacute;c hoạt động gi&aacute;o dục - đ&agrave;o tạo, nghi&ecirc;n cứu ứng dụng, v&agrave; tư vấn, chuyển giao c&aacute;c gi&aacute; trị mới về kỹ thuật c&ocirc;ng nghệ trong lĩnh vực Kỹ thu&acirc;̣t Cơ khí cũng như Kỹ thu&acirc;̣t v&acirc;̣t li&ecirc;̣u.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c lĩnh vực nghi&ecirc;n cứu</span></span></strong></span></span></p>

<ul>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phát tri&ecirc;̉n, tri&ecirc;̉n khai ứng dụng các kỹ thu&acirc;̣t gia c&ocirc;ng và xử lý v&acirc;̣t li&ecirc;̣u: gia c&ocirc;ng cắt gọt (truy&ecirc;̀n th&ocirc;́ng và ti&ecirc;n ti&ecirc;́n), gia c&ocirc;ng kh&ocirc;ng phoi (đúc, gia c&ocirc;ng áp lực), ch&ecirc;́ tạo v&acirc;̣t li&ecirc;̣u composite.</span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Thiết kế, chế tạo thiết bị v&agrave; dụng cụ c&ocirc;ng nghiệp.</span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Kỹ thuật khu&ocirc;n mẫu (thi&ecirc;́t k&ecirc;́, gia c&ocirc;ng, chuy&ecirc;̉n giao c&ocirc;ng ngh&ecirc;̣).</span></span></span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tài li&ecirc;̣u học t&acirc;̣p, giáo trình đã xu&acirc;́t bản:</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">[1]. Nguy&ecirc;̃n Thanh Tú, Tr&acirc;̀n Anh Đức, Hoàng Xu&acirc;n Tứ, Vũ Lai Hoàng, H&ocirc;̀ Ký Thanh;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Kỹ thu&acirc;̣t đúc; NXB Thanh Ni&ecirc;n, năm 2020.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Các đ&ecirc;̀ tài NCKH ti&ecirc;u bi&ecirc;̉u do giảng vi&ecirc;n của b&ocirc;̣ m&ocirc;n chủ trì:</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu c&ocirc;ng nghệ tổng hợp TiC từ TiO<sub>2</sub> trong nước (TS. Vũ Lai Hoàng; Đ&ecirc;̀ tài KHCN c&acirc;́p B&ocirc;̣; MS: B2010-TN01-05).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu ứng dụng c&ocirc;ng nghệ tạo mẫu nhanh để đ&uacute;c chi tiết c&oacute; hình dạng hình học phức tạp (ThS. Tr&acirc;̀n Anh Đức; Đ&ecirc;̀ tài KHCN c&acirc;́p B&ocirc;̣; MS: B2007-TN02-05).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu sản xuất bi nghiền cao nh&ocirc;m phục vụ c&ocirc;ng nghiệp sản xuất vật liệu gốm sứ trong điều kiện Việt Nam (PGS.TS. Nguy&ecirc;̃n Phú Hoa; Đ&ecirc;̀ tài KHCN c&acirc;́p B&ocirc;̣; MS:<br />
B2012-TN01-02).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu c&ocirc;ng nghệ sản xuất gang, từ nguy&ecirc;n liệu bột tận thu (bột xỉ sắt v&agrave; bột quặng sắt) (PGS.TS. Nguy&ecirc;̃n Phú Hoa; Đ&ecirc;̀ tài KHCN c&acirc;́p B&ocirc;̣; MS: B2009-TN02-04).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu về cấu tr&uacute;c, t&iacute;nh chất điện của vật liệu gốm &aacute;p điện kh&ocirc;ng ch&igrave; Bi0.5-xLax(Na0,82K0,18)0.5TiO3 dưới t&aacute;c động của điện trường E nhỏ (TS. Vũ Lai Hoàng; Đ&ecirc;̀ tài KHCN c&acirc;́p Cơ sở; MS: T2018-B33).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu chế tạo composite nền Cu cốt hạt TiC bằng phương ph&aacute;p luyện kim bột ứng dụng l&agrave;m tiếp điểm điện trong c&ocirc;ng tắc tơ (TS. Vũ Lai Hoàng; Đ&ecirc;̀ tài KHCN c&acirc;́p Đại học; MS: ĐH2016-TN02-03).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu t&ocirc;̉ng hợp v&acirc;̣t li&ecirc;̣u t&ocirc;̉ hợp b&ecirc;̀n nhi&ecirc;̣t, đ&ocirc;̣ d&acirc;̃n đi&ecirc;̣n cao Cu-Al<sub>2</sub>O<sub>3</sub> ứng dụng ch&ecirc;́ tạo đi&ecirc;̣n cực hàn (TS. H&ocirc;̀ Ký Thanh; Đ&ecirc;̀ tài KHCN c&acirc;́p Đại học; MS: ĐH2014-TN02-04).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu c&aacute;c yếu tố ảnh hưởng đến chiều d&agrave;y lớp kh&iacute; đệm trong c&ocirc;ng nghệ đ&uacute;c mẫu ch&aacute;y, g&oacute;p phần ho&agrave;n thiện c&ocirc;ng nghệ đ&uacute;c mẫu ch&aacute;y ở Việt Nam (ThS. Bùi Ngọc Tr&acirc;n; Đ&ecirc;̀ tài KHCN C&acirc;́p Đại học; MS: ĐH2013-TN02-07).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Thiết kế v&agrave; chế tạo bộ truyền trục v&iacute;t Cycloid sử dụng trong m&aacute;y n&eacute;n kh&iacute; (TS. Nguy&ecirc;̃n Thanh Tú; Đ&ecirc;̀ tài KHCN c&acirc;́p Trường; MS: CK-T2012-72).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- M&ocirc; h&igrave;nh h&oacute;a qu&aacute; tr&igrave;nh h&oacute;a gi&agrave; hợp kim Al-Mg-Si (ThS. Hoàng Ánh Quang; Đ&ecirc;̀ tài KHCN c&acirc;́p Trường; MS: CK-T2012-88).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu khai th&aacute;c c&aacute;c thiết bị hiện c&oacute; tại Trung t&acirc;m Th&iacute; nghiệm - trường ĐH KTCN, x&acirc;y dựng b&agrave;i th&iacute; nghiệm &quot;Kỹ thuật t&aacute;i tạo ngược&quot; theo hướng t&iacute;ch cực ho&aacute; phục vụ c&ocirc;ng t&aacute;c đ&agrave;o tạo theo hệ thống t&iacute;n chỉ tại trường ĐH KTCN (ThS. Tr&acirc;̀n Anh Đức; Đ&ecirc;̀ tài KHCN c&acirc;́p Đại học; MS: TN2009-02-51T).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Thiết kế g&aacute; kẹp mẫu cho m&aacute;y m&agrave;i b&oacute;ng TNP 200F (ThS. Tr&acirc;̀n Anh Đức; Đ&ecirc;̀ tài KHCN c&acirc;́p Trường; MS: TN1-T2012-34).</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Nghi&ecirc;n cứu chế tạo compozit chịu m&agrave;i m&ograve;n cao nền Cu cốt hạt TiC v&agrave; SiC (ThS. Hoàng Ánh Quang; Đ&ecirc;̀ tài KHCN c&acirc;́p Trường; MS: T2011-19).</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>
', NULL, NULL, CAST(N'2021-03-20 18:16:17.150' AS DateTime), N'thanguk02', CAST(N'2021-04-11 19:49:54.030' AS DateTime), N'thanguk02', 2, 17)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (26, N'Bộ môn Thiết kế cơ khí', N'Giới thiệu về bộ môn Thiết kế cơ khí', N'bo-mon-thiet-ke-co-khi', N'<p>Giới thiệu về bộ m&ocirc;n Thiết kế cơ kh&iacute;</p>
', NULL, NULL, CAST(N'2021-03-20 18:17:27.547' AS DateTime), N'thanguk02', NULL, NULL, 4, 16)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (27, N'Trung tâm Thí nghiệm Thực hành cơ khí', N'Giới thiệu về Trung tâm thí nghiệm Thực hành cơ khí', N'trung-tam-thi-nghiem-thuc-hanh-co-khi', N'<p>Giới thiệu về Trung t&acirc;m th&iacute; nghiệm Thực h&agrave;nh cơ kh&iacute;</p>
', NULL, NULL, CAST(N'2021-03-20 18:18:46.497' AS DateTime), N'thanguk02', NULL, NULL, 3, 19)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (28, N'Giới thiệu về chuyên ngành gia công áp lực', N'Giới thiệu về chuyên ngành gia công áp lực', N'chuyen-nganh-gcal', N'<p style="text-align:center"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt"><span style="color:red">GIỚI THI&Ecirc;̣U V&Ecirc;̀ CHUY&Ecirc;N NGÀNH GIA C&Ocirc;NG ÁP LỰC</span></span></strong></span></span></p>

<ol>
	<li style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt">Vị trí của Kỹ thu&acirc;̣t Gia c&ocirc;ng tạo h&igrave;nh trong sản xu&acirc;́t Cơ khí?</span></strong></span></span></li>
</ol>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Trong lĩnh vực sản xu&acirc;́t cơ khí có th&ecirc;̉ sử dụng r&acirc;́t nhi&ecirc;̀u phương pháp gia c&ocirc;ng khác nhau như: Đúc; Gia c&ocirc;ng tạo h&igrave;nh bằng bi&ecirc;́n dạng dẻo (Gia c&ocirc;ng áp lực), Gia c&ocirc;ng Cắt gọt, Hàn, Sơn phủ b&ecirc;̀ mặt,&hellip; Các nhà kinh t&ecirc;́ &ndash; kỹ thu&acirc;̣t đã th&ocirc;́ng k&ecirc; và cho th&acirc;́y, càng giảm được hàm lượng gia c&ocirc;ng cắt gọt thì giá thành sản ph&acirc;̉m càng rẻ, hi&ecirc;̉n nhi&ecirc;n cùng với đó là tính cạnh tranh của sản ph&acirc;̉m sản xu&acirc;́t cũng tăng l&ecirc;n. Tuy v&acirc;̣y, n&ecirc;́u giảm kh&ocirc;́i lượng gia c&ocirc;ng cắt gọt có th&ecirc;̉ ch&acirc;́t lượng sản ph&acirc;̉m sẽ giảm. Kỹ thu&acirc;̣t Gia c&ocirc;ng áp lực được sử dụng h&acirc;̀u như khắc phục được nhược đi&ecirc;̉m cơ bản này.</span></span></span></p>

<ol start="2">
	<li style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt">C&ocirc;ng ngh&ecirc;̣ Gia c&ocirc;ng áp lực được ứng dụng trong các ngành sản xu&acirc;́t nào?</span></strong></span></span></li>
</ol>

<p style="text-align:center"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt"><img alt="http://cokhi.tnut.edu.vn/Uploads/Tinymce/hinh_cong_nghe_tao_hinh.jpg" src="http://cokhi.tnut.edu.vn/Uploads/Tinymce/hinh_cong_nghe_tao_hinh.jpg" style="height:298px; width:537px" /></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Ngoài các sản ph&acirc;̉m cán (thép hình và thép t&acirc;́m), Kỹ thu&acirc;̣t gia c&ocirc;ng tạo h&igrave;nh bằng bi&ecirc;́n dạng dẻo được sử dụng trong ch&ecirc;́ tạo ph&ocirc;i phục vụ gia c&ocirc;ng cắt gọt; ch&ecirc;́ tạo các chi ti&ecirc;́t trong &ocirc; t&ocirc; (kh&ocirc;́i lượng c&ocirc;ng vi&ecirc;̣c Gia c&ocirc;ng áp lực chi&ecirc;́m khoảng 33,35%), ch&ecirc;́ tạo vỏ tàu, ch&ecirc;́ tạo các sản ph&acirc;̉m từ nhựa và ch&acirc;́t dẻo; u&ocirc;́n tạo hình kim loại t&acirc;́m, ch&ecirc;́ tạo &ocirc;́ng hàn phục vụ đời s&ocirc;́ng xã h&ocirc;̣i. H&acirc;̀u như ở lĩnh vực nào cũng có sản ph&acirc;̉m sử dụng Gia c&ocirc;ng áp lực.</span></span></span></p>

<p style="text-align:center"><img src="/Data/images/image-20210411194335-1.jpeg" style="height:513px; width:456px" /><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">&nbsp;</span></span></span><img src="/Data/images/image-20210411194335-2.jpeg" style="height:519px; width:460px" /><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">&nbsp; </span></span></span><img src="/Data/images/image-20210411194335-3.jpeg" style="height:515px; width:458px" /></p>

<ol start="3">
	<li style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt">Các kỹ sư Gia c&ocirc;ng áp lực đóng vai trò gì trong quá trình sản xu&acirc;́t?</span></strong></span></span></li>
</ol>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">C&aacute;c kỹ sư <strong>Gia c&ocirc;ng áp lực</strong> c&oacute; nhiệm vụ chỉ đạo kỹ thuật, thi&ecirc;́t k&ecirc;́ khu&ocirc;n m&acirc;̃u và quy trình c&ocirc;ng ngh&ecirc;̣, quản l&yacute; qu&aacute; tr&igrave;nh gia c&ocirc;ng tạo ra sản phẩm theo y&ecirc;u cầu thiết kế. Kỹ sư <strong>Gia c&ocirc;ng áp lực</strong> cũng c&oacute; nhiệm vụ hỗ trợ v&agrave; tham gia l&agrave;m việc c&ugrave;ng c&aacute;c kỹ sư thiết kế, c&aacute;c chuy&ecirc;n gia thu&ocirc;̣c lĩnh vực khác trong c&aacute;c nh&oacute;m thiết kế đa ng&agrave;nh. Kỹ sư <strong>Gia c&ocirc;ng áp lực</strong> l&agrave; người tư vấn tốt nhất cho nh&agrave; sản xu&acirc;́t th&ocirc;ng qua lời khuy&ecirc;n: sử dụng phương pháp Gia c&ocirc;ng bi&ecirc;́n dạng như thế n&agrave;o để cho ra sản ph&acirc;̉m có cơ tính t&ocirc;́t nh&acirc;́t, giảm được t&ocirc;́i đa chi phí Gia c&ocirc;ng cắt gọt, do đó sản ph&acirc;̉m rẻ v&agrave; tốt nhất.</span></span></span></p>

<ol start="4">
	<li style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt">C&aacute;c kiến thức cốt l&otilde;i:</span></strong></span></span></li>
</ol>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">C&aacute;c sinh vi&ecirc;n chuy&ecirc;n ngành <strong>Gia c&ocirc;ng áp lực</strong> được cung cấp c&aacute;c kiến thức chuy&ecirc;n s&acirc;u về các kỹ thuật gia c&ocirc;ng bi&ecirc;́n dạng dẻo và thi&ecirc;́t k&ecirc;́. B&ecirc;n cạnh c&aacute;c kiến thức chung của ng&agrave;nh Kỹ thu&acirc;̣t Cơ kh&iacute; như: Cơ học kỹ thuật, Cơ học v&acirc;̣t li&ecirc;̣u, Nguy&ecirc;n l&yacute; m&aacute;y, Chi tiết m&aacute;y, V&acirc;̣t li&ecirc;̣u kỹ thu&acirc;̣t, C&ocirc;ng ngh&ecirc;̣ ch&ecirc;́ tạo máy, Máy và dụng cụ,... sinh vi&ecirc;n chuy&ecirc;n ngành Gia c&ocirc;ng áp lực c&ograve;n được học t&acirc;̣p v&agrave; r&egrave;n luyện tư duy, kiến thức v&agrave; kỹ năng về C&ocirc;ng ngh&ecirc;̣ và thi&ecirc;́t bị gia c&ocirc;ng bằng bi&ecirc;́n dạng như: C&ocirc;ng ngh&ecirc;̣ và thi&ecirc;́t bị cán; C&ocirc;ng ngh&ecirc;̣ và Thi&ecirc;́t bị rèn - d&acirc;̣p; C&ocirc;ng ngh&ecirc;̣ và Thi&ecirc;́t bị gia c&ocirc;ng t&acirc;́m; C&ocirc;ng ngh&ecirc;̣ và thi&ecirc;́t bị u&ocirc;́n tạo hình; Thiết kế khu&ocirc;n m&acirc;̃u, M&ocirc; hình hóa và m&ocirc; phỏng quá trình bi&ecirc;́n dạng...</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Ngoài ra, kh&ocirc;́i ki&ecirc;́n thức tự chọn cũng cho phép sinh vi&ecirc;n tìm hi&ecirc;̉u s&acirc;u hơn nữa v&ecirc;̀ Kỹ thu&acirc;̣t thi&ecirc;́t k&ecirc;́ hoặc gia c&ocirc;ng cắt gọt.</span></span></span></p>

<ol start="5">
	<li style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt">Cơ hội việc l&agrave;m cho kỹ sư Gia c&ocirc;ng áp lực?</span></strong></span></span></li>
</ol>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">H&acirc;̀u h&ecirc;́t các kỹ sư tốt nghiệp từ TNUT đ&atilde; ngay lập tức t&igrave;m được việc l&agrave;m trong ng&agrave;nh c&ocirc;ng nghiệp sản xuất. Với n&ecirc;̀n ki&ecirc;́n thức được học v&ecirc;̀ Kỹ thu&acirc;̣t Cơ khí tại TNUT, kỹ sư t&ocirc;́t nghi&ecirc;̣p chuy&ecirc;n ngành <strong>Gia c&ocirc;ng áp lực</strong> có đủ trình đ&ocirc;̣ đ&ecirc;̉ làm ở b&acirc;́t kỳ doanh nghi&ecirc;̣p/nhà máy sản xu&acirc;́t cơ khí nào.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Đặc bi&ecirc;̣t với ki&ecirc;́n thức chuy&ecirc;n s&acirc;u đã được học th&ecirc;m, kỹ sư <strong>Gia c&ocirc;ng áp lực</strong> sẽ có lợi th&ecirc;́ hơn r&acirc;́t nhi&ecirc;̀u khi tham gia tuy&ecirc;̉n chọn vào các doanh nghi&ecirc;̣p sản xu&acirc;́t cán, doanh nghi&ecirc;̣p ch&ecirc;́ tạo &ocirc; t&ocirc;, các doanh nghi&ecirc;̣p sản xu&acirc;́t các sản ph&acirc;̉m đ&ocirc;̀ nhựa, các doanh nghi&ecirc;̣p Cơ khí ch&ecirc;́ tạo, các doanh nghi&ecirc;̣p gia c&ocirc;ng ch&ecirc;́ tạo khu&ocirc;n m&acirc;̃u&hellip;</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">C&ocirc;ng việc phổ biến của sinh vi&ecirc;n <strong>Gia c&ocirc;ng áp lực</strong> sau khi tốt nghiệp.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">- Phụ tr&aacute;ch kỹ thuật, chỉ đạo sản xuất trong các nhà máy sản xu&acirc;́t Cơ khí, luy&ecirc;̣n kim, cán thép, đúc ép nhựa, sản xu&acirc;́t nh&ocirc;m định hình&hellip; (các doanh nghi&ecirc;̣p trong nước, li&ecirc;n doanh hoặc doanh nghi&ecirc;̣p hoàn toàn v&ocirc;́n đ&acirc;̀u tư nước ngoài).</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">- Quản l&yacute; và chỉ đạo tiến tr&igrave;nh sản xuất trong các nhà máy sản xu&acirc;́t Cơ khí, luy&ecirc;̣n kim, cán thép, đúc ép nhựa, sản xu&acirc;́t nh&ocirc;m định hình&hellip; (các doanh nghi&ecirc;̣p trong nước, li&ecirc;n doanh hoặc doanh nghi&ecirc;̣p hoàn toàn v&ocirc;́n đ&acirc;̀u tư nước ngoài).</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">- Tư vấn, ph&acirc;n t&iacute;ch kỹ thu&acirc;̣t tại các doanh nghi&ecirc;̣p trong nước, li&ecirc;n doanh hoặc doanh nghi&ecirc;̣p hoàn toàn v&ocirc;́n đ&acirc;̀u tư nước ngoài.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">- Kiểm định chất lượng trong sản xu&acirc;́t, gia c&ocirc;ng cơ khí nói chung.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">- Quản lý, thi&ecirc;́t k&ecirc;́ dự án hoặc khởi nghi&ecirc;̣p.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">- B&aacute;n h&agrave;ng, tư vấn, bảo h&agrave;nh.</span></span></span></p>
', NULL, NULL, CAST(N'2021-04-11 19:45:05.897' AS DateTime), N'thanguk02', NULL, NULL, 2, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (29, N'Giới thiệu về ngành kỹ thuật vật liệu', N'Giới thiệu về ngành kỹ thuật vật liệu', N'nganh-ktvl', N'<p style="text-align:center"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="color:red">GIỚI THI&Ecirc;̣U V&Ecirc;̀ NGÀNH KỸ THU&Acirc;̣T V&Acirc;̣T LI&Ecirc;̣U</span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black">Bạn đang chuẩn bị thi Đại học? Bạn đang băn khoăn chọn học ng&agrave;nh nào cho m&igrave;nh? Học ở đ&acirc;u thì ph&ugrave; hợp với khả năng của bạn và d&ecirc;̃ dàng ki&ecirc;́m được vi&ecirc;̣c làm? Tại sao bạn kh&ocirc;ng thử tìm ki&ecirc;́m các từ khóa li&ecirc;n quan đ&ecirc;́n lĩnh vực V&acirc;̣t li&ecirc;̣u tr&ecirc;n mạng Internet đ&ecirc;̉ tìm hi&ecirc;̉u v&ecirc;̀ m&ocirc;̣t lĩnh vực quan trọng li&ecirc;n quan m&acirc;̣t thi&ecirc;́t đ&ecirc;́n đời s&ocirc;́ng hàng ngày?</span></span></span></p>

<h1 style="text-align:justify"><span style="font-size:13pt"><span style="font-family:Arial,sans-serif"><span style="color:#002060"><strong><em><a name="_Toc445715898"><span style="font-family:&quot;Times New Roman&quot;,serif">Vai trò của V&acirc;̣t li&ecirc;̣u và ngành V&acirc;̣t li&ecirc;̣u trong đời s&ocirc;́ng</span></a></em></strong></span></span></span></h1>

<p style="text-align:justify"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black">Kỹ thuật Vật liệu nghi&ecirc;n cứu v&agrave; triển khai c&aacute;c phương ph&aacute;p chế tạo v&agrave; xử l&yacute; vật liệu nhằm thu được vật liệu mới bền hơn, nhẹ hơn, c&oacute; nhiều đặc t&iacute;nh ưu việt hơn. Tất cả m&aacute;y m&oacute;c, thiết bị, đồ d&ugrave;ng đều trở n&ecirc;n hấp dẫn v&agrave; tiện dụng hơn nhờ sử dụng vật liệu mới.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black">Lịch sử đã cho th&acirc;́y: V&acirc;̣t li&ecirc;̣u lu&ocirc;n đóng vai trò n&ecirc;̀n tảng cho sự phát tri&ecirc;̉n của m&ocirc;̃i n&ecirc;̀n văn minh và m&ocirc;̃i qu&ocirc;́c gia. T&ecirc;n v&acirc;̣t li&ecirc;̣u được đặt cho m&ocirc;̃i thời kỳ phát tri&ecirc;̉n của loài người. C&aacute;c thời kỳ Đồ Đ&aacute;, Đ&ocirc;̀ Đ&ocirc;̀ng, Đồ Sắt n&oacute;i l&ecirc;n rằng c&aacute;c c&ocirc;ng cụ gi&uacute;p con người tồn tại v&agrave; ph&aacute;t triển trong c&aacute;c thời kỳ đ&oacute; lần lượt được làm bằng đ&aacute;, rồi bằng đ&ocirc;̀ng v&agrave; sau đ&oacute; l&agrave; bằng sắt. </span></span></span></p>

<p style="text-align:justify"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black">Bạn c&oacute; biết thời kỳ hiện nay l&agrave; &ldquo;đồ&rdquo; g&igrave; kh&ocirc;ng? L&agrave; thời của Vật liệu th&ocirc;ng minh (Smart materials). Bạn c&oacute; biết, nếu kh&ocirc;ng c&oacute; c&aacute;c vật liệu mới như vật liệu si&ecirc;u dẫn, si&ecirc;u bền, si&ecirc;u nhẹ&hellip; ch&uacute;ng ta sẽ kh&ocirc;ng c&oacute; c&aacute;c m&aacute;y vi t&iacute;nh, đi&ecirc;̣n thoại di đ&ocirc;̣ng đời mới nhanh, mạnh như hiện nay; sẽ kh&ocirc;ng c&oacute; c&aacute;c m&aacute;y bay hiện đại gi&uacute;p bạn bay sang Hoa Kỳ chỉ trong khoảng thời gian </span>ngắn;<span style="color:black"> sẽ kh&ocirc;ng c&oacute; c&aacute;c vệ tinh ph&aacute;t cho bạn xem c&aacute;c trận b&oacute;ng đ&aacute; hấp dẫn đang diễn ra khắp c&aacute;c ch&acirc;u lục. Bạn c&oacute; biết tại sao c&aacute;c sản phẩm của Nhật Bản, của Hoa Kỳ lại tốt, lại bền đến vậy kh&ocirc;ng? V&igrave; họ c&oacute; c&ocirc;ng nghệ xử l&yacute; vật liệu si&ecirc;u đẳng.</span></span></span></p>

<h1 style="text-align:justify"><span style="font-size:13pt"><span style="font-family:Arial,sans-serif"><span style="color:#002060"><strong><em><a name="_Toc445715900"></a><a name="_Toc445715901"><strong>Kỹ sư V&acirc;̣t li&ecirc;̣u sẽ làm vi&ecirc;̣c gì và làm vi&ecirc;̣c ở đ&acirc;u?</strong></a></em></strong></span></span></span></h1>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Kỹ sư V&acirc;̣t li&ecirc;̣u tham gia c&aacute;c nh&oacute;m thiết kế v&agrave; ph&aacute;t triển sản phẩm trong c&aacute;c c&ocirc;ng ty to&agrave;n cầu, đa quốc gia; các t&acirc;̣p đoàn; c&aacute;c Viện nghi&ecirc;n cứu cao cấp hay c&aacute;c doanh nghiệp sản xuất, kinh doanh sản ph&acirc;̉m vật liệu. Kỹ sư Vật liệu sẽ đóng vai trò quyết định chọn loại vật liệu đ&aacute;p ứng được các y&ecirc;u c&acirc;̀u đẹp, bền, rẻ cho m&ocirc;̃i sản ph&acirc;̉m. <a name="_Toc445715899"></a></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt"><span style="color:black">Thiết kế, ph&aacute;t triển c&ocirc;ng ngh&ecirc;̣ sản xu&acirc;́t và xử lý v&acirc;̣t li&ecirc;̣u truy&ecirc;̀n th&ocirc;́ng cũng như các loại v&acirc;̣t li&ecirc;̣u mới; Phụ tr&aacute;ch kỹ thuật &ndash; c&ocirc;ng ngh&ecirc;̣, quản lý và chỉ đạo sản xuất; X&acirc;y dựng và quản l&yacute; các dự &aacute;n; Tư vấn kỹ thu&acirc;̣t, kinh doanh; Kiểm định chất lượng;&hellip; chính là th&ecirc;́ mạnh mà các Kỹ sư V&acirc;̣t li&ecirc;̣u làm chủ.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">V&igrave; hiểu r&otilde; cấu tr&uacute;c, t&iacute;nh chất v&agrave; c&aacute;ch tạo ra, c&aacute;ch cải thiện t&iacute;nh chất của c&aacute;c loại vật liệu, n&ecirc;n Kỹ sư Vật liệu c&oacute; thể l&agrave;m nhiều việc kh&aacute;c nữa. Kh&ocirc;ng chỉ c&oacute; vai tr&ograve; quan trọng trong c&aacute;c nh&agrave; m&aacute;y, doanh nghiệp chế tạo, Kỹ sư Vật liệu c&ograve;n c&oacute; thể tham gia hay l&agrave;m chủ c&aacute;c doanh nghiệp kinh doanh, tư vấn, cung cấp vật li&ecirc;̣u cho c&aacute;c doanh nghiệp sản xuất m&aacute;y m&oacute;c cơ khí hoặc d&acirc;n dụng.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Với những hi&ecirc;̉u bi&ecirc;́t s&acirc;u v&ecirc;̀ v&acirc;̣t li&ecirc;̣u của mình, các Kỹ sư V&acirc;̣t li&ecirc;̣u có th&ecirc;̉ d&ecirc;̃ dàng tìm ki&ecirc;́m vi&ecirc;̣c làm tại Các<span style="color:black"> t&acirc;̣p đoàn, c&ocirc;ng ty, nhà máy, xí nghi&ecirc;̣p Nhà nước, tư nh&acirc;n hoặc li&ecirc;n doanh với nước ngoài, các c&ocirc;ng ty hoàn toàn v&ocirc;́n nước ngoài hoạt đ&ocirc;̣ng trong các lĩnh vực: v&acirc;̣t li&ecirc;̣u kim loại (<em>gang, thép, đ&ocirc;̀ng, nh&ocirc;m, kẽm&hellip;</em>); cơ khí ch&ecirc;́ tạo với c&ocirc;ng ngh&ecirc;̣ đúc, c&ocirc;ng ngh&ecirc;̣ xử lý nhi&ecirc;̣t, c&ocirc;ng ngh&ecirc;̣ gia c&ocirc;ng áp lực&hellip;; sản xu&acirc;́t v&acirc;̣t li&ecirc;̣u Ceramic, Polymer, Composite&hellip;; tư v&acirc;́n kỹ thu&acirc;̣t và kinh doanh các sản ph&acirc;̉m v&acirc;̣t li&ecirc;̣u, các thi&ecirc;́t bị phục vụ nghi&ecirc;n cứu và sản xu&acirc;́t, xử lý v&acirc;̣t li&ecirc;̣u. Kỹ sư v&acirc;̣t li&ecirc;̣u cũng có th&ecirc;̉ làm g</span>iảng<span style="color:black"> vi&ecirc;n, nghi&ecirc;n cứu vi&ecirc;n tại c&aacute;c trường Cao đẳng v&agrave; Đại học, Viện nghi&ecirc;n cứu phát tri&ecirc;̉n v&acirc;̣t li&ecirc;̣u phục vụ đời s&ocirc;́ng xã h&ocirc;̣i, an ninh - qu&ocirc;́c phòng. </span>Đặc biệt, các Kỹ sư vật liệu c&oacute; rất nhiều cơ hội du học ở nước ngo&agrave;i như Nh&acirc;̣t, Úc, Hoa Kỳ, Pháp, Canada, Hàn Qu&ocirc;́c, Ch&acirc;u &Acirc;u.</span></span></span></p>

<h1 style="text-align:justify"><span style="font-size:13pt"><span style="font-family:Arial,sans-serif"><span style="color:#002060"><strong><em><a name="_Toc445715902"><strong>Vì sao cơ h&ocirc;̣i vi&ecirc;̣c l&agrave;m của các Kỹ sư V&acirc;̣t li&ecirc;̣u Vi&ecirc;̣t Nam lu&ocirc;n r&ocirc;̣ng mở?</strong></a></em></strong></span></span></span></h1>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Cơ hội l&agrave;m việc của c&aacute;c Kỹ sư/Chuy&ecirc;n gia Vật liệu l&agrave; khắp mọi nơi bởi v&igrave;&nbsp;</span><em><strong><span style="font-size:13.0pt"><span style="font-family:Symbol">&sup2;</span></span></strong></em><em><strong><span style="font-size:13.0pt">nếu kh&ocirc;ng c&oacute; vật liệu th&igrave; sẽ kh&ocirc;ng c&oacute; c&aacute;c ng&agrave;nh kỹ thuật</span></strong></em><em><strong><span style="font-size:13.0pt"><span style="font-family:Symbol">&sup2;</span></span></strong></em><em><span style="font-size:13.0pt">.&nbsp;Ở nước ta, cơ h&ocirc;̣i vi&ecirc;̣c làm cho các Kỹ sư V&acirc;̣t li&ecirc;̣u hi&ecirc;̣n nay r&acirc;́t lớn vì những lý do sau đ&acirc;y.</span></em></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">+ S&ocirc;́ cơ sở hi&ecirc;̣n đang đào tạo Kỹ sư V&acirc;̣t li&ecirc;̣u tr&ecirc;n cả nước ít, g&ocirc;̀m: <strong><span style="color:#002060">ĐH Kỹ thu&acirc;̣t C&ocirc;ng nghi&ecirc;̣p Thái Nguy&ecirc;n</span></strong>, ĐH Bách Khoa Hà N&ocirc;̣i, ĐH Bách Khoa TP HCM, Đại học Bách Khoa Đà Nẵng&hellip;; m&ocirc;̣t s&ocirc;́ trường Cao đẳng và Trung c&acirc;́p.</span></em></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">+ S&ocirc;́ lượng Kỹ sư V&acirc;̣t li&ecirc;̣u t&ocirc;́t nghi&ecirc;̣p m&ocirc;̃i năm tại các cơ sở đào tạo này cũng ít: m&ocirc;̃i khóa chỉ tuy&ecirc;̉n sinh khoảng 100 sinh vi&ecirc;n. </span></em></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">+ Nơi làm vi&ecirc;̣c đa dạng, có th&ecirc;̉ bạn đã bi&ecirc;́t đ&ecirc;́n m&ocirc;̣t s&ocirc;́ T&acirc;̣p đoàn, C&ocirc;ng ty li&ecirc;n doanh, C&ocirc;ng ty C&ocirc;̉ ph&acirc;̀n ti&ecirc;u bi&ecirc;̉u ở mi&ecirc;̀n Bắc và mi&ecirc;̀n Trung như: </span></em></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong><span style="font-size:13.0pt"><span style="color:#002060">- Tr&ecirc;n địa bàn tỉnh Thái Nguy&ecirc;n:</span></span></strong></em><em><span style="font-size:13.0pt"> C&ocirc;ng ty TNHH Samsung Vi&ecirc;̣t Nam và các c&ocirc;ng ty v&ecirc;̣ tinh (t&ocirc;̉ng v&ocirc;́n đ&acirc;̀u tư tr&ecirc;n 5 tỷ đ&ocirc; la Mỹ); C&ocirc;ng ty TNHH Khai thác Ch&ecirc;́ bi&ecirc;́n Khoáng sản Núi Pháo (với t&ocirc;̉ng v&ocirc;́n đ&acirc;̀u tư hơn 1 tỷ đ&ocirc; la Mỹ); C&ocirc;ng ty CP Gang Thép Thái Nguy&ecirc;n; các doanh nghi&ecirc;̣p hoàn toàn v&ocirc;́n đ&acirc;̀u tư nước ngoài (doanh nghi&ecirc;̣p FDI) tại các KCN lớn như KCN S&ocirc;ng C&ocirc;ng, KCN Đi&ecirc;̀m Thụy; KCN Y&ecirc;n Bình...</span></em></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong><span style="font-size:13.0pt"><span style="color:#002060">- Tại Vĩnh Phúc, Hà N&ocirc;̣i, Bắc Ninh:</span></span></strong></em><em><span style="font-size:13.0pt"> C&ocirc;ng ty Honda; C&ocirc;ng ty Canon; C&ocirc;ng ty Toyota; C&ocirc;ng ty Yamaha; các KCN lớn như KCN N&ocirc;̣i Bài, KCN Quang Minh, KCN Thăng Long, KCN Qu&ecirc;́ Võ; C&ocirc;ng ty CP Cơ khí Đ&ocirc;ng Anh; T&acirc;̣p đoàn C&ocirc;ng nghi&ecirc;̣p &Ocirc; t&ocirc; Vi&ecirc;̣t Nam; T&ocirc;̉ng C&ocirc;ng ty Thép Vi&ecirc;̣t Nam; T&acirc;̣p đoàn Vinfast &hellip;</span></em></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><strong><span style="font-size:13.0pt"><span style="color:#002060">- Tại các tỉnh, thành ph&ocirc;́ khác tại mi&ecirc;̀n Bắc và mi&ecirc;̀n Trung:</span></span></strong></em><em><span style="font-size:13.0pt"> C&ocirc;ng ty TNHH Gang Th&eacute;p Hưng Nghiệp FORMOSA (H&agrave; Tĩnh) với s&ocirc;́ v&ocirc;́n đ&acirc;̀u tư giai đoạn 1 là hơn 10 tỷ đ&ocirc; la Mỹ ước tính c&acirc;̀n hàng nghìn kỹ sư và nh&acirc;n vi&ecirc;n kỹ thu&acirc;̣t; C&ocirc;ng ty CP Gang Thép Nghi Sơn (Thanh Hóa) với s&ocirc;́ v&ocirc;́n hơn 6000 tỷ đ&ocirc;̀ng đang được g&acirc;́p rút hoàn thành; khu Li&ecirc;n hợp Gang Thép Lào Cai và hàng nghìn doanh nghi&ecirc;̣p v&ecirc;̀ Luy&ecirc;̣n kim, Cán thép và Cơ khí khác.</span></em></span></span></p>

<h1 style="text-align:justify"><span style="font-size:13pt"><span style="font-family:Arial,sans-serif"><span style="color:#002060"><strong><em><span style="font-family:&quot;Times New Roman&quot;,serif">Học ngành Kỹ thu&acirc;̣t v&acirc;̣t li&ecirc;̣u tại trường ĐH Kỹ thu&acirc;̣t C&ocirc;ng nghi&ecirc;̣p Thái Nguy&ecirc;n có lợi th&ecirc;́ gì?</span></em></strong></span></span></span></h1>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:13.0pt">Thái Nguy&ecirc;n với khu Gang Thép (g&acirc;̀n 10 Nhà máy, xí nghi&ecirc;̣p trực thu&ocirc;̣c) được bi&ecirc;́t đ&ecirc;́n là bi&ecirc;̉u tượng của ngành Luy&ecirc;̣n kim &ndash; V&acirc;̣t li&ecirc;̣u của nước nhà từ những năm 1960 của th&ecirc;́ kỷ 20. Với truy&ecirc;̀n th&ocirc;́ng đào tạo 50 năm của Nhà trường, đ&ocirc;̣i ngũ giảng vi&ecirc;n nhi&ecirc;̀u kinh nghi&ecirc;̣m, hàng chục giảng vi&ecirc;n từ Hoa Kỳ, Úc, Đức, Canada được nhà trường mời tham gia giảng dạy hàng năm, cơ sở v&acirc;̣t ch&acirc;́t phục vụ giảng dạy và học t&acirc;̣p được Nhà trường đ&acirc;̀u tư m&ocirc;̣t cách bài bản, người học được thực t&acirc;̣p, thực hành tại chính các nhà máy, c&ocirc;ng ty lớn tr&ecirc;n địa bàn xung quanh trường là lợi th&ecirc;́ v&ocirc; cùng lớn cho người học được ti&ecirc;́p xúc thực t&ecirc;́, tích lũy kinh nghi&ecirc;̣m thực hành ngh&ecirc;̀ nghi&ecirc;̣p. Ngo&agrave;i ra, với trang thiết bị hiện đại phục vụ cho th&iacute; nghiệm thực h&agrave;nh của ng&agrave;nh Vật liệu gi&uacute;p sinh vi&ecirc;n c&oacute; thể ứng dụng ngay sau khi ra trường v&agrave; bắt kịp được với xu thế tr&ecirc;n thế giới.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt"><span style="color:#00b0f0">Trang thiết bị th&iacute; nghiệm, thực h&agrave;nh hiện đại</span></span></strong></span></span></p>

<p style="text-align:center"><img src="/Data/images/image-20210411194645-1.jpeg" style="height:816px; width:1223px" /></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">M&aacute;y quang phổ ph&acirc;n t&iacute;ch th&agrave;nh phần kim loại, Model: Q4 Tasma</span></em></span></span></p>

<p style="text-align:center"><img src="/Data/images/image-20210411194645-2.jpeg" style="height:852px; width:1280px" /></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">K&iacute;nh hiển vi quang học OLYMPUS, Model: GX71</span></em></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img src="/Data/images/image-20210411194645-3.jpeg" style="height:747px; width:950px" /></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">M&aacute;y đo độ cứng tế vi QUALITEST, Model: QV-1000DM</span></em></span></span></p>

<p style="text-align:center"><img src="/Data/images/image-20210411194645-4.jpeg" style="height:796px; width:1024px" /></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">M&aacute;y đ&aacute;nh b&oacute;ng bề mặt BUEHLER, Model Automet-250</span></em></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img src="/Data/images/image-20210411194645-5.jpeg" style="height:882px; width:687px" /></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">M&aacute;y đo độ cứng Mitutoyo Rocwell, Model: HR-521</span></em></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:13.0pt"><span style="color:#00b0f0">Sinh vi&ecirc;n được tiếp cận với những trang thiết bị hiện đại nhất về vật liệu</span></span></strong></span></span></p>

<table cellspacing="0" class="Table" style="border-collapse:collapse">
	<tbody>
		<tr>
			<td style="vertical-align:top; width:310px">
			<p style="text-align:center"><img src="/Data/images/image-20210411194645-6.jpeg" style="height:450px; width:600px" /></p>

			<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">Hướng dẫn g&aacute; mẫu tr&ecirc;n hệ thống hiển vi điện tử qu&eacute;t</span></em></span></span></p>
			</td>
			<td style="vertical-align:top; width:310px">
			<p style="text-align:center"><img src="/Data/images/image-20210411194645-7.jpeg" style="height:450px; width:600px" /></p>

			<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">Quan s&aacute;t tổ chức vật liệu bằng k&iacute;nh hiển vi quang học</span></em></span></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top; width:310px">
			<p style="text-align:center"><img src="/Data/images/image-20210411194645-8.jpeg" style="height:450px; width:600px" /></p>

			<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">Xử l&yacute; kết quả đo độ cứng tr&ecirc;n m&aacute;y đo độ cứng tế vi</span></em></span></span></p>
			</td>
			<td style="vertical-align:top; width:310px">
			<p style="text-align:center"><img src="/Data/images/image-20210411194645-9.jpeg" style="height:801px; width:600px" /></p>

			<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><em><span style="font-size:13.0pt">Thực h&agrave;nh đo độ cứng mẫu</span></em></span></span></p>
			</td>
		</tr>
	</tbody>
</table>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><em><span style="font-size:13.0pt">Một số h&igrave;nh ảnh th&iacute; nghiệm tại tại trường</span></em></strong></span></span></p>

<h1 style="text-align:justify"><span style="font-size:13pt"><span style="font-family:Arial,sans-serif"><span style="color:#002060"><strong><em><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave;m g&igrave; để được ưu ti&ecirc;n học Kỹ thuật </span><span style="font-family:&quot;Times New Roman&quot;,serif">Vật liệu</span><span style="font-family:&quot;Times New Roman&quot;,serif">?</span></em></strong></span></span></span></h1>

<p style="text-align:justify"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&atilde;y truy cập ngay v&agrave;o <a href="http://ts.tnut.edu.vn/" style="color:blue; text-decoration:underline">http://ts.tnut.edu.vn/</a> để t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin, để được tư vấn v&agrave; lựa chọn. H&atilde;y đăng k&yacute; sớm, bạn sẽ được ưu ti&ecirc;n xem x&eacute;t tuyển chọn.</span></span></p>

<p style="text-align:justify"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&atilde;y li&ecirc;n lạc với C&ocirc; giáo ThS. Đào Li&ecirc;n Ti&ecirc;́n (số điện thoại: 0982.608.784) để được giải đ&aacute;p th&ecirc;m, tư vấn gi&uacute;p đỡ l&agrave;m hồ sơ đăng k&yacute; tuyển sinh v&agrave; nhập học một c&aacute;ch nhanh nhất.</span></span></p>

<p style="text-align:justify">&nbsp;</p>
', NULL, NULL, CAST(N'2021-04-11 19:47:17.027' AS DateTime), N'thanguk02', CAST(N'2021-04-11 19:49:24.217' AS DateTime), N'thanguk02', 2, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (30, N'Test autogen metatitle', N'Thử mã tự sinh meta', N'thu-ma-tu-sinh-meta', N'<p>sda</p>
', NULL, NULL, CAST(N'2021-04-17 00:06:37.157' AS DateTime), N'thanguk02', NULL, NULL, 3, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (31, N'Lịch sử về khoa cơ khí', N'Lịch sử khoa cơ khí', N'lich-su-khoa-co-khi', N'<h1 style="text-align:center"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:18.0pt"><span style="color:red">KHOA CƠ KH&Iacute; </span></span></span></span></h1>

<h1 style="text-align:center"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:18.0pt"><span style="color:#00b050">- Chặng đường 50 năm -</span></span></span></span></h1>

<p>&nbsp;</p>

<p style="text-align:center"><img src="/Data/images/image-20210509175407-1.jpeg" style="height:400px; width:600px" /></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:#3364ff">Trưởng Khoa&nbsp; Cơ kh&iacute;</span></span></strong></span></span></p>

<p style="text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">PGS.T.S. Dương Phạm Tường Minh</span></span></strong></span></span></p>

<p style="margin-left:256px">&nbsp;</p>

<p style="margin-right:46px; text-align:center"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">Khoa Cơ kh&iacute; trường Đại học Kỹ thuật C&ocirc;ng nghiệp - Đại học Th&aacute;i Nguy&ecirc;n được h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển tr&ecirc;n cơ sở chuy&ecirc;n ng&agrave;nh Cơ kh&iacute; chế tạo m&aacute;y của trường Đại học Cơ điện Bắc Th&aacute;i.</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">1. Giai đoạn 1972 - </span></span></strong><strong><span style="font-size:14.0pt"><span style="color:red">1975 </span></span></strong></span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-2.png" style="height:541px; width:797px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">Ng&agrave;y 30/10/1972, lễ c&ocirc;ng bố quyết định th&agrave;nh lập khoa Cơ kh&iacute; được tiến<br />
h&agrave;nh trọng thể trong một căn nh&agrave; l&aacute; đơn sơ của khu Hiệu bộ trường Đại học Cơ Điện, đ&oacute;ng tr&ecirc;n x&atilde; T&iacute;ch Lương, TP Th&aacute;i Nguy&ecirc;n, Quyết định n&agrave;y l&agrave; một mốc son đ&aacute;nh dấu qu&aacute; tr&igrave;nh ph&aacute;t triển của Khoa Cơ kh&iacute; v&agrave; trường Đại học Cơ Điện, tiền th&acirc;n của trường Đại học Kỹ thuật C&ocirc;ng nghiệp ng&agrave;y nay. Vừa mới th&agrave;nh lập được một thời gian ngắn, khoa Cơ kh&iacute; cũng như Nh&agrave; trường phải c&ugrave;ng với cả nước chống lại cuộc chiến tranh ph&aacute; hoại của giặc Mỹ. Bị thua đau ở chiến trường Miền Nam, giặc Mỹ đi&ecirc;n cuồng bắn ph&aacute; miền Bắc m&agrave; đỉnh điểm l&agrave; cuộc tập k&iacute;ch chiến lược bằng m&aacute;y bay B52 của đế quốc Mỹ v&agrave;o thủ đ&ocirc; H&agrave; Nội, th&agrave;nh phố Hải Ph&ograve;ng v&agrave; Khu Gang th&eacute;p Th&aacute;i Nguy&ecirc;n. Để duy tr&igrave; việc dạy v&agrave; học v&agrave; đảm bảo an to&agrave;n cho thầy v&agrave; tr&ograve;, ng&agrave;y 18/12/1972 Khoa Cơ kh&iacute; phải sơ t&aacute;n v&agrave;o x&oacute;m B&aacute; V&acirc;n v&agrave; x&oacute;m B&igrave;nh Định thuộc x&atilde; B&igrave;nh Sơn - thị x&atilde; S&ocirc;ng C&ocirc;ng; x&oacute;m Đầu Tr&acirc;u x&atilde; Thịnh Đức - TP Th&aacute;i Nguy&ecirc;n. V&agrave;o thời gian n&agrave;y giảng đường v&agrave; ph&ograve;ng th&iacute; nghiệm l&agrave; những căn nh&agrave; l&aacute; nằm s&acirc;u trong địa đạo, khe n&uacute;i, đ&oacute;i r&eacute;t thường xuy&ecirc;n r&igrave;nh rập nhưng thầy v&agrave; tr&ograve; vẫn &ldquo;tiếng h&aacute;t &aacute;t tiếng bom; vai kề vai, đ&egrave;n s&aacute;ch sớm h&ocirc;m&rdquo;. C&aacute;c lớp Sinh vi&ecirc;n K2, K3, K4, K5 vẫn tốt nghiệp ra trường đ&uacute;ng tiến độ v&agrave; đảm bảo chất lượng. Ng&agrave;y 27/3/1973, sau khi hiệp định Pari về việc lập lại ho&agrave; b&igrave;nh Việt Nam được k&yacute; kết, thầy tr&ograve; khoa Cơ kh&iacute; trở về x&acirc;y dựng m&aacute;i trường tr&ecirc;n mảnh đất th&acirc;n y&ecirc;u của m&igrave;nh. Sinh vi&ecirc;n K8, K9 tựu trường được sống v&agrave; học tập trong những khu nh&agrave; tầng ki&ecirc;n cố A1, A2, A3 v&agrave; thực h&agrave;nh th&iacute; nghiệm trong khu nh&agrave; C1, C2, C3 chan h&ograve;a &aacute;nh điện, rộn vang tiếng m&aacute;y, phong tr&agrave;o học tập s&ocirc;i nổi hơn l&uacute;c n&agrave;o hết. C&ocirc;ng t&aacute;c NCKH bắt đầu ph&aacute;t triển, những sản phẩm khoa học đầu ti&ecirc;n: Đề t&agrave;i nghi&ecirc;n cứu chế tạo phong điện của nh&oacute;m đề t&agrave;i: Nguyễn Hữu H&ugrave;ng (BM Vật l&yacute;), Trịnh Quang Vinh, Trần Văn Lầm (BM Nguy&ecirc;n l&yacute; m&aacute;y), Ng&ocirc; Quang Vinh (BM Sức bền); kết hợp với Đề t&agrave;i nghi&ecirc;n cứu chế tạo m&agrave;ng mỏng CDS l&agrave;m đ&egrave;n quang điện của nh&oacute;m đề t&agrave;i: Nguyễn Thư X&aacute;, Phạm Ph&uacute; Th&ugrave;y, Nguyễn C&ocirc;ng H&ograve;a, Nguyễn Thị V&acirc;n (BM Vật l&yacute;) đ&atilde; chế tạo th&agrave;nh c&ocirc;ng đ&egrave;n biển lắp tại v&ugrave;ng biển đảo Long Ch&acirc;u th&agrave;nh phố Hải Ph&ograve;ng (theo đặt h&agrave;ng của Bộ Giao th&ocirc;ng Vận tải), phục vụ kịp thời cho sự nghiệp bảo vệ v&ugrave;ng biển của Tổ quốc trong những ng&agrave;y chiến tranh &aacute;c liệt.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">2. Giai đoạn 1976 - 1979 </span></span></strong></span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-3.png" style="height:401px; width:577px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">Sau ng&agrave;y 30/4/1975, Miền Nam ho&agrave;n to&agrave;n giải ph&oacute;ng, Tổ quốc thống </span></span><br />
<span style="font-size:14.0pt"><span style="color:#00339a">nhất, ch&uacute;ng ta vui mừng đ&oacute;n ch&agrave;o gần </span></span><span style="font-size:14.0pt"><span style="color:#00339a">200 c&aacute;c anh bộ đội l&agrave; sinh vi&ecirc;n </span></span><span style="font-size:14.0pt"><span style="color:#00339a">K3, K4, K5, K6, K7 chiến thắng, từ mặt trận trở về. Ch&uacute;ng ta kh&ocirc;ng khỏi </span></span><span style="font-size:14.0pt"><span style="color:#00339a">x&uacute;c động, b&ugrave;i ng&ugrave;i trong số họ hơn 10 anh em đ&atilde; anh dũng hy sinh, vĩnh </span></span><span style="font-size:14.0pt"><span style="color:#00339a">viễn nằm lại dưới mảnh đất chiến trường. Tr&ecirc;n giảng đường lại thấp tho&aacute;ng h&igrave;nh ảnh những sinh vi&ecirc;n mặc qu&acirc;n phục&nbsp; bộ đội Cụ Hồ. &ldquo;C&aacute;c anh về m&aacute;i </span></span><span style="font-size:14.0pt"><span style="color:#00339a">ấm nh&agrave; vui&rdquo;. C&aacute;c anh kh&ocirc;ng chỉ anh dũng trong chiến đấu, m&agrave; c&ograve;n l&agrave; </span></span><span style="font-size:14.0pt"><span style="color:#00339a">những tấm gương s&aacute;ng trong học tập v&agrave; r&egrave;n luyện. Cũng những ng&agrave;y n&agrave;y </span></span><span style="font-size:14.0pt"><span style="color:#00339a">trong khoa bắt đầu c&oacute; hệ đ&agrave;o tạo chuy&ecirc;n tu: CT75, CT76 v.v &hellip;, họ l&agrave; những c&aacute;n bộ c&ocirc;ng nh&acirc;n t&iacute;ch cực được c&aacute;c nh&agrave; m&aacute;y cử đi học để về ph&aacute;t triển sản </span></span><span style="font-size:14.0pt"><span style="color:#00339a">xuất của nh&agrave; m&aacute;y sau chiến tranh. Nhưng thời gian học tập trong khung cảnh h&ograve;a b&igrave;nh chưa đầy 4 năm, th&aacute;ng 3 năm 1979 theo tiếng gọi của Tổ quốc thầy v&agrave; tr&ograve; lại g&aacute;c b&uacute;t nghi&ecirc;n l&ecirc;n huyện Tr&agrave;ng Định tỉnh Lạng Sơn x&acirc;y dựng ph&ograve;ng tuyến ph&iacute;a Bắc bảo vệ Tổ quốc. Trải qua gần 40 ng&agrave;y đ&ecirc;m &ldquo;mưa&nbsp; rừng cơm vắt&rdquo; nhưng thầy tr&ograve; đ&atilde; ho&agrave;n th&agrave;nh tốt nhiệm vụ. Do y&ecirc;u cầu bảo vệ bi&ecirc;n giới, to&agrave;n bộ sinh vi&ecirc;n K14,15 tiếp tục ở lại tập qu&acirc;n dự nhiệm 6 th&aacute;ng tại thị trấn Đu huyện Ph&uacute; Lương,&nbsp; sinh vi&ecirc;n K13, K12, K11 được trở về trường học tập. Những th&agrave;nh t&iacute;ch v&agrave; đ&oacute;ng g&oacute;p của thầy v&agrave; tr&ograve; Khoa cơ kh&iacute; đ&atilde; được ghi nhận, Khoa Cơ kh&iacute; đ&atilde; được UBND tỉnh Lạng sơn tặng bằng khen.</span></span></span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-4.png" style="height:398px; width:577px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">3. Giai đoạn 1980 - 1993 </span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">Đ&acirc;y l&agrave; giai đoạn nền kinh tế nước ta sau 2 cuộc chiến tranh đ&atilde; rơi v&agrave;o t&igrave;nh </span></span><span style="font-size:14.0pt"><span style="color:#00339a">trạng khủng hoảng trầm trọng, đời sống thầy v&agrave; tr&ograve; gặp nhiều kh&oacute; khăn, thiếu từ giấy, mực, vải mặc đến cả lương thực; điển h&igrave;nh l&agrave; năm 1983 do qu&aacute; kh&oacute; khăn, lương thực kh&ocirc;ng đủ cho sinh vi&ecirc;n n&ecirc;n trường đ&atilde; phải dừng tuyển sinh K18, c&aacute;n bộ ph&ograve;ng ban phải thay nhau nghỉ để tăng gia sản xuất tự t&uacute;c lương thực. Sinh vi&ecirc;n phải nghỉ tự t&uacute;c lương thực hai th&aacute;ng. Th&ecirc;m v&agrave;o đ&oacute;, khoa Cơ kh&iacute; phải đối mặt với một kh&oacute; khăn kh&ocirc;ng nhỏ l&agrave; lượng sinh vi&ecirc;n thi v&agrave;o khoa rất &iacute;t. Sở dĩ như vậy v&igrave; nhiều nh&agrave; m&aacute;y cơ kh&iacute; phải đ&oacute;ng cửa do kh&ocirc;ng c&oacute; việc l&agrave;m, n&ecirc;n kh&ocirc;ng c&oacute; nhu cầu tuyển dụng kĩ sư cơ kh&iacute;. Sinh vi&ecirc;n ra trường rất kh&oacute; ph&acirc;n c&ocirc;ng c&ocirc;ng việc. V&igrave; vậy trong suốt 14 năm, to&agrave;n bộ sinh vi&ecirc;n khoa Cơ kh&iacute; (kể cả hệ trung cấp v&agrave; cao đẳng mỗi kh&oacute;a chỉ tuyển từ 100 đến 300 HSSV, đặc biệt cả kh&oacute;a tuyển sinh năm 1988, K24M chỉ tuyển được 28 SV, trong Khoa chỉ c&ograve;n 32 c&aacute;n bộ, gi&aacute;o vi&ecirc;n. Do đời sống gặp qu&aacute; nhiều kh&oacute; khăn, một số thầy c&ocirc; c&oacute; gia đ&igrave;nh ở xa cũng kh&ocirc;ng trụ nổi đ&agrave;nh phải ngậm ng&ugrave;i chia tay với m&aacute;i trường về c&ocirc;ng t&aacute;c gần qu&ecirc;, m&agrave; trong th&acirc;m t&acirc;m chẳng muốn.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">Cũng ch&iacute;nh v&agrave;o thời gian n&agrave;y, dưới &aacute;nh s&aacute;ng Nghị quyết Đại hội Đảng to&agrave;n quốc lần thứ VI đ&atilde; mở ra con đường đổi mới: &ldquo;Muốn cứu nước trước hết phải tự cứu lấy m&igrave;nh&rdquo;, cũng v&agrave;o những ng&agrave;y n&agrave;y dưới sự l&atilde;nh đạo của Đảng bộ Nh&agrave; trường m&agrave; trực tiếp l&agrave; Chi bộ khoa Cơ kh&iacute; đ&atilde; đẩy mạnh c&ocirc;ng t&aacute;c NCKH &amp; LĐSX, th&agrave;nh lập ph&ograve;ng th&iacute; nghiệm chế thử (PTNCT) để thực h&agrave;nh, th&iacute; nghiệm, NCKH &amp; CGCN - cũng l&agrave; nơi r&egrave;n luyện khả năng thực tiễn của đội ngũ gi&aacute;o vi&ecirc;n, l&agrave; nơi thực hiện c&aacute;c hợp đồng kinh tế - kỹ thuật giữa Nh&agrave; trường v&agrave; c&aacute;c doanh nghiệp. Chỉ trong v&ograve;ng 6 năm (1987 - 1993) khoảng 60% gi&aacute;o vi&ecirc;n của khoa đ&atilde; được thực h&agrave;nh c&ocirc;ng nghệ cơ kh&iacute; tại PTNCT, trực tiếp chế tạo ra sản phẩm cơ kh&iacute; phục vụ sản xuất, đời sống gi&aacute;o vi&ecirc;n đ&atilde; được cải thiện.</span></span></span></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">4. Giai đoạn 1994 - 2007 </span></span></strong></span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-5.png" style="height:555px; width:798px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">Đ&acirc;y l&agrave; giai đoạn trường Đại học Kỹ thuật C&ocirc;ng nghiệp trở th&agrave;nh Đại học th&agrave;nh vi&ecirc;n của Đại học Th&aacute;i Nguy&ecirc;n; cũng l&agrave; 1 trong 14 đại học trọng&nbsp; điểm của cả nước. C&oacute; thể n&oacute;i đ&acirc;y l&agrave; giai đoạn ph&aacute;t triển vươn l&ecirc;n vượt bậc của khoa Cơ kh&iacute; n&oacute;i ri&ecirc;ng v&agrave; của trường ĐHKTCN n&oacute;i chung. Khoa Cơ kh&iacute;- Trường Đại học KTCN đ&atilde; trở th&agrave;nh một trong 3 trung t&acirc;m lớn của cả nước về đ&agrave;o tạo đội ngũ c&aacute;n bộ kỹ thuật Cơ kh&iacute; c&oacute; tr&igrave;nh độ cao của cả nước sau ĐHBK HN v&agrave; ĐHBK TPHCM</span></span><span style="font-size:14.0pt">. <span style="color:#0033cc">Giai đoạn n&agrave;y, Khoa thực hiện 4 hệ đ&agrave;o tạo: Trung cấp, Cao đẳng, Đại học v&agrave; Sau đại học với 3 chuy&ecirc;n ng&agrave;nh CKCTM, CKĐL, CKLK &amp; CT. Từ 2003- 2005, Khoa được giao th&ecirc;m nhiệm vụ đ&agrave;o tạo ở bậc đại học ng&agrave;nh Kỹ thuật M&ocirc;i trường v&agrave; ng&agrave;nh Kỹ thuật C&ocirc;ng tr&igrave;nh X&acirc;y dựng, sau đ&oacute; chuyển cho khoa Quản l&yacute; c&ocirc;ng nghiệp v&agrave; Kỹ thuật m&ocirc;i trường. Khoa đ&agrave;o tạo sau đại học ng&agrave;nh C&ocirc;ng nghệ CTM &amp; Cơ kỹ thuật v&agrave; đ&agrave;o tạo Tiến sĩ ng&agrave;nh C&ocirc;ng nghệ CTM. Đ&acirc;y l&agrave; giai đoạn khoa Cơ kh&iacute; đ&atilde; c&oacute; những cố gắng vượt bậc tr&ecirc;n tất cả c&aacute;c mặt, từ x&acirc;y dựng đội ngũ, x&acirc;y dựng cơ sở vật chất đến đổi mới nội dung chương tr&igrave;nh đ&agrave;o tạo, từng bước đổi mới c&aacute;ch dạy, c&aacute;ch học theo phương thức học chế t&iacute;n chỉ &ndash; một phương thức đ&agrave;o tạo ti&ecirc;n tiến lấy người học l&agrave;m trung t&acirc;m. Chất lượng đ&agrave;o tạo ng&agrave;y một n&acirc;ng l&ecirc;n. Ch&iacute;nh v&igrave; vậy sinh vi&ecirc;n ra trường về cơ bản c&oacute; việc l&agrave;m v&agrave; l&agrave;m đ&uacute;ng nghề. C&ocirc;ng t&aacute;c đ&agrave;o tạo, bồi dưỡng t&agrave;i năng sinh vi&ecirc;n cũng thường xuy&ecirc;n được chăm lo. Khoa đ&atilde; duy tr&igrave; được phong tr&agrave;o bồi dưỡng sinh vi&ecirc;n học sinh thi Olympic quốc gia về c&aacute;c m&ocirc;n Cơ học. Năm 2005 đạt giải nhất to&agrave;n đo&agrave;n 4 m&ocirc;n Cơ l&iacute; thuyết, Sức bền vật liệu, Nguy&ecirc;n l&yacute; m&aacute;y v&agrave; Chi tiết m&aacute;y. Trường ĐH Kỹ thuật C&ocirc;ng nghiệp được xếp thứ 6 trong tốp c&aacute;c trường h&agrave;ng đầu, được Bộ trưởng BGD &amp; ĐT tặng bằng khen. C&ocirc;ng t&aacute;c NCKH v&agrave; CGCN cũng ph&aacute;t triển rất mạnh, mỗi năm b&igrave;nh qu&acirc;n Khoa thực hiện từ 6 - 8 đề t&agrave;i NCKH cấp bộ v&agrave; cấp bộ trọng điểm, tham gia c&aacute;c đề t&agrave;i cấp Nh&agrave; nước v&agrave; kho&agrave;ng 12 - 15 đề t&agrave;i NCKH cấp cơ sở. C&aacute;c đề t&agrave;i đều hướng v&agrave;o giải quyết những vấn đề cấp b&aacute;ch của sản xuất v&agrave; tập trung v&agrave;o đổi mới phương ph&aacute;p giảng dạy. C&ocirc;ng t&aacute;c chuyển giao c&ocirc;ng nghệ v&agrave; LĐSX cũng đạt được những kết quả đ&aacute;ng kh&iacute;ch lệ. Nhiều thầy gi&aacute;o đ&atilde; trở th&agrave;nh chuy&ecirc;n gia c&oacute; uy t&iacute;n cho c&aacute;c doanh nghiệp. Mỗi năm tổng doanh thu c&aacute;c HĐKT thực hiện trong trường khoảng 4 - 5 tỷ đồng, g&oacute;p phần cải thiện đời sống v&agrave; đ&oacute;ng g&oacute;p ph&uacute;c lợi cho Nh&agrave; trường. Ngo&agrave;i ra c&ograve;n g&oacute;p phần đ&aacute;ng kể v&agrave;o c&ocirc;ng t&aacute;c bồi dưỡng đội ngũ gi&aacute;o vi&ecirc;n. Những sản phẩm cơ kh&iacute; do c&aacute;c giảng vi&ecirc;n khoa Cơ kh&iacute; chế tạo đ&atilde; giữ được uy t&iacute;n trong c&aacute;c ng&agrave;nh sản xuất th&eacute;p, giấy, dược phẩm, xi măng,&hellip; g&oacute;p phần khẳng định thương hiệu của Nh&agrave; trường. C&ocirc;ng t&aacute;c đ&agrave;o tạo chuyển giao c&ocirc;ng nghệ trong lĩnh vực c&ocirc;ng nghệ cao CAD-CAM-CNC cũng c&oacute; bước ph&aacute;t triển tốt. Khoa đ&atilde; được đầu tư một PTN C&ocirc;ng nghệ cao tương đối ho&agrave;n chỉnh v&agrave; hiện đại,&nbsp; ph&aacute;t huy c&oacute; hiệu quả cho đ&agrave;o tạo, NCKH v&agrave; CGCN. Bắt đầu từ năm học 2006 - 2007, khoa đ&agrave;o tạo th&ecirc;m 1 lớp kĩ sư CLC. </span></span></span></span></p>

<p style="margin-right:37px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">5. Giai đoạn 2008 &ndash; 2020</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">Thực hiện nghị quyết ĐH Đảng bộ trường ĐHKTCN lần thứ XII, Nghị quyết đại hội chi bộ khoa Cơ kh&iacute; nhiệm kỳ 2008-2012 v&agrave; 2010-2012, chi bộ khoa Cơ kh&iacute; đ&atilde; l&atilde;nh đạo tập thể c&aacute;n bộ gi&aacute;o vi&ecirc;n của khoa đạt được nhiều th&agrave;nh t&iacute;ch to lớn. Trong khoa đ&atilde; x&acirc;y dựng được khối đo&agrave;n kết, nhất tr&iacute; v&agrave; d&acirc;n chủ, ph&aacute;t huy được sức mạnh tập thể thực hiện tốt c&aacute;c mục ti&ecirc;u, nhiệm vụ c&ocirc;ng t&aacute;c m&agrave; Nh&agrave; trường giao cho.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">Trong giai đoạn n&agrave;y khoa Cơ kh&iacute; đ&atilde; tập trung n&acirc;ng cao chất lượng đội ngũ gi&aacute;o vi&ecirc;n, đẩy mạnh sinh hoạt học thuật tại c&aacute;c bộ m&ocirc;n v&agrave; khoa, g&oacute;p &yacute; giảng thử, dự giờ cho giảng vi&ecirc;n trẻ, động vi&ecirc;n giảng vi&ecirc;n trẻ đi học tập n&acirc;ng cao tr&igrave;nh độ chuy&ecirc;n m&ocirc;n, học sau đại học, NCS trong nước v&agrave; nước ngo&agrave;i. Thời điểm n&agrave;y, to&agrave;n khoa c&oacute; 86 c&aacute;n bộ gi&aacute;o vi&ecirc;n cơ hữu v&agrave; 24 c&aacute;n bộ gi&aacute;o vi&ecirc;n ki&ecirc;m nhiệm, thỉnh giảng; trong đ&oacute; c&oacute; 07 Ph&oacute; gi&aacute;o sư v&agrave; gi&aacute;o sư, 10 Tiến sĩ, 56 Thạc sĩ, 11 Gv đang l&agrave; học vi&ecirc;n cao học v&agrave; NCS ở nước ngo&agrave;i.&nbsp; Nhiều giảng vi&ecirc;n tham gia học c&aacute;c kh&oacute;a tiếng Anh như TA văn bằng 2, TA sau C, tiếng Anh luyện thi ToeFl vv...</span></span></span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-6.jpeg" style="height:502px; width:753px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">B&ecirc;n cạnh đ&oacute;, khoa Cơ kh&iacute; cũng lu&ocirc;n ch&uacute; trọng c&ocirc;ng t&aacute;c NCKH v&agrave; chuyển giao c&ocirc;ng nghệ đ&atilde; g&oacute;p phần quan trọng r&egrave;n luyện v&agrave; n&acirc;ng cao tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cho đội ngũ gi&aacute;o vi&ecirc;n, đ&oacute;ng g&oacute;p một phần v&agrave;o khoản thu Ng&acirc;n s&aacute;ch qua thuế.&nbsp; Khoa đ&atilde; xuất bản được 20 b&agrave;i b&aacute;o quốc tế, 45 b&agrave;i b&aacute;o quốc gia; tổ chức được 04 hội nghi khoa học cấp trường với nhiều b&aacute;o c&aacute;o c&oacute; chất lượng cao. C&aacute;n bộ gi&aacute;o vi&ecirc;n khoa Cơ kh&iacute; đ&atilde; thực hiện 07 đề t&agrave;i NCKH cấp bộ, 05 đề t&agrave;i cấp đại học, 58 đề t&agrave;i cấp trường v&agrave; 30 đề t&agrave;i NCKH sinh vi&ecirc;n g&oacute;p phần n&acirc;ng cao đời sống của CBVC v&agrave; động vi&ecirc;n phong tr&agrave;o học tập của HSSV.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">Từ năm học 2008 - 2009, mỗi năm khoa tuyển sinh 01 lớp đ&agrave;o tạo kĩ sư chất lượng cao theo chương tr&igrave;nh ti&ecirc;n tiến ng&agrave;nh Kỹ thuật Cơ kh&iacute; nhập khẩu từ ĐH New York - Mỹ do BGD &amp; ĐT thẩm định v&agrave; ph&ecirc; duyệt. Khoa đ&atilde; trực tiếp đ&agrave;o tạo 02 chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ chế tạo m&aacute;y, Cơ kỹ thuật ở bậc sau đại học v&agrave; đ&agrave;o tạo tiến sĩ chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ chế tạo m&aacute;y, Kỹ thuật m&aacute;y c&ocirc;ng cụ.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">C&ocirc;ng t&aacute;c bồi dưỡng t&agrave;i năng sinh vi&ecirc;n vẫn lu&ocirc;n được khoa quan t&acirc;m ch&uacute; trọng, đặc biệt c&ocirc;ng t&aacute;c tổ chức v&agrave; bồi dưỡng sinh vi&ecirc;n giỏi tham dự kỳ thi Olympic quốc gia.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#ed1c24"><strong><span style="font-size:14.0pt">7. KHOA CƠ KH&Iacute; NG&Agrave;Y NAY</span></strong></span> </span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-7.png" style="height:636px; width:814px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#ed1c24"><strong><span style="font-size:14.0pt"><span style="color:#2e3092">Hiện nay, khoa Cơ kh&iacute; c&oacute; 04 bộ m&ocirc;n, 01 Trung t&acirc;m, phụ tr&aacute;ch 07 chương tr&igrave;nh</span></span></strong></span><strong><span style="font-size:14.0pt"><span style="color:#2e3092"> <span style="color:#ed1c24"><strong><span style="color:#2e3092">đ&agrave;o tạo đại học, 02 chương tr&igrave;nh đ&agrave;o tạo thạc sĩ, 02 chương tr&igrave;nh</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">đ&agrave;o tạo tiến sĩ, c&oacute; khoảng tr&ecirc;n 1500 sinh vi&ecirc;n, học vi&ecirc;n cao học v&agrave;</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">nghi&ecirc;n cứu sinh đang học tập với nhiều chương tr&igrave;nh kh&aacute;c nhau. Đặc biệt, năm 2020, Trung t&acirc;m Th&iacute; nghiệm thực h&agrave;nh cơ kh&iacute; được th&agrave;nh lập. Nơi đ&acirc;y tập trung c&aacute;c trang thiết bị th&iacute; nghiệm, thực h&agrave;nh hiện đại bậc nhất về cơ kh&iacute; như: Ph&ograve;ng thiết kế với hệ thống m&aacute;y &nbsp;t&iacute;nh tốc độ cao phục vụ thiết kế, 10 trung t&acirc;m phay, tiện CNC, m&aacute;y gia c&ocirc;ng tia lửa điện (Xung, cắt d&acirc;y đồng, cắt d&acirc;y Molipđen), ph&ograve;ng đo kiểm c&ocirc;ng nghệ cao với m&aacute;y đo tọa độ 3 chiều CMM544, k&iacute;nh hiển vi điện tử qu&eacute;t, m&aacute;y ph&acirc;n t&iacute;ch th&agrave;nh phần vật liệu, m&aacute;y đo nh&aacute;m bề mặt SJ201,&hellip;</span></strong></span></span></span></strong> </span></span></p>

<p style="text-align:justify"><img src="/Data/images/image-20210509175407-8.png" style="height:637px; width:724px" /><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#ed1c24"><strong><span style="font-size:14.0pt"><span style="color:#2e3092">&nbsp;H&agrave;ng năm c&oacute; khoảng 450 sinh vi&ecirc;n hệ đại học ch&iacute;nh quy, 10 học</span></span></strong></span><strong><span style="font-size:14.0pt"><span style="color:#2e3092"> <span style="color:#ed1c24"><strong><span style="color:#2e3092">vi&ecirc;n cao học v&agrave; 03 nghi&ecirc;n cứu sinh v&agrave;o học tập v&agrave; nghi&ecirc;n cứu tại</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">Khoa.</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">To&agrave;n thể c&aacute;n bộ giảng vi&ecirc;n v&agrave; sinh vi&ecirc;n Khoa Cơ kh&iacute; phấn đấu cho</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">vai tr&ograve; h&agrave;ng đầu trong đ&agrave;o tạo v&agrave; nghi&ecirc;n cứu về kỹ thuật, c&ocirc;ng</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">nghệ, trở th&agrave;nh địa chỉ đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao đ&aacute;p</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">ứng nhu cầu của sự nghiệp c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a đất</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">nước. Khoa Cơ kh&iacute; đ&atilde; gắn kết c&oacute; hiệu quả giữa đ&agrave;o tạo v&agrave; nghi&ecirc;n</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">cứu khoa học chuyển giao c&ocirc;ng nghệ, cải tiến c&ocirc;ng nghệ v&agrave; ứng</span></strong></span> <span style="color:#ed1c24"><strong><span style="color:#2e3092">dụng c&ocirc;ng nghệ mới trong c&ocirc;ng nghiệp, ph&aacute;t triển c&ocirc;ng nghệ cao, ph&aacute;t triển hoạt động đ&agrave;o tạo, tiếp cận tri thức mới v&agrave; tiến đến mục ti&ecirc;u dẫn đầu trong nghi&ecirc;n cứu kỹ thuật, c&ocirc;ng nghệ ở Việt Nam.</span></strong></span></span></span></strong></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><strong><span style="font-size:14.0pt"><span style="color:red">8. Những phần thưởng cao qu&iacute; đ&atilde; đạt được </span></span></strong></span></span></p>

<p style="margin-right:42px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">Trong 50 năm qua, khoa Cơ kh&iacute; đ&atilde; đạt được rất nhiều th&agrave;nh t&iacute;ch, trước hết phải kể đến l&agrave; khoa Cơ kh&iacute; đ&atilde; c&ugrave;ng với khoa Điện tạo ra v&agrave; giữ vững được </span></span><span style="font-size:14.0pt"><span style="color:#00339a">thương hiệu Đại học Cơ Điện - Đại học KTCN trong l&ograve;ng người d&acirc;n khắp 3 </span></span><span style="font-size:14.0pt"><span style="color:#00339a">miền Bắc - Trung - Nam. Với những th&agrave;nh t&iacute;ch lớn lao trong sự nghiệp x&acirc;y </span></span><span style="font-size:14.0pt"><span style="color:#00339a">dựng v&agrave; bảo vệ tổ quốc khoa ch&uacute;ng ta đ&atilde; được Đảng v&agrave; Nh&agrave; nước ghi nhận bằng c&aacute;c phần thưởng: </span></span></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">- 01 Hu&acirc;n chương lao động Hạng 3 năm 1997 </span></span></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">- 03 bằng khen Ch&iacute;nh phủ, 04 bằng khen của Bộ trưởng Bộ GD &amp; ĐT </span></span></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">- 03 bằng khen của C&ocirc;ng đo&agrave;n Gi&aacute;o dục Việt nam </span></span></span></span></p>

<p><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">- 03 c&aacute; nh&acirc;n được tặng HCLĐ hạng ba. </span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#00339a">- 06 thầy gi&aacute;o được tặng danh hiệu NGUT</span></span></span></span></p>

<p style="margin-right:46px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">- 01 bộ m&ocirc;n được tặng bằng khen Ch&iacute;nh phủ, 04 bộ m&ocirc;n, 20 c&aacute; nh&acirc;n được tặng bằng khen của Bộ trưởng, 02 thầy gi&aacute;o được tặng danh hiệu CSTĐ cấp bộ v&agrave; nhiều thầy gi&aacute;o, c&ocirc; gi&aacute;o, CBVC đạt danh hiệu CSTĐ cấp cơ sở v&agrave; giấy khen của Gi&aacute;m đốc Đại học Th&aacute;i Nguy&ecirc;n.&nbsp; </span></span></span></span></p>

<p style="margin-right:46px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="font-size:14.0pt"><span style="color:#0033cc">Chặng đường 50 năm đ&atilde; đi qua với bao kh&oacute; khăn gian khổ nhưng thật vinh quang. Con đường đi l&ecirc;n ph&iacute;a trước của khoa Cơ kh&iacute; đang rộng mở với rất nhiều thuận lợi nhưng cũng kh&ocirc;ng &iacute;t th&aacute;ch thức, phải đ&aacute;p ứng c&aacute;c y&ecirc;u cầu cao về chất lượng đ&agrave;o tạo trong giai đoạn hội nhập v&agrave; xu thế to&agrave;n cầu h&oacute;a. Ch&uacute;ng ta tin tưởng rằng với bề d&agrave;y truyền thống 40 năm, với tinh thần quyết t&acirc;m của to&agrave;n thể CBVC, giảng vi&ecirc;n v&agrave; sinh vi&ecirc;n; với sự quan t&acirc;m s&acirc;u sắc của l&atilde;nh đạo Nh&agrave; trường; sự gi&uacute;p đỡ hợp t&aacute;c của c&aacute;c ph&ograve;ng, ban, khoa bạn trong trường v&agrave; của c&aacute;c trường trong ĐHTN; b&ecirc;n cạnh lại c&oacute; khoa Điện &ndash; người anh em sinh đ&ocirc;i c&ugrave;ng đồng h&agrave;nh&nbsp; lu&ocirc;n quan t&acirc;m, động vi&ecirc;n v&agrave; gi&uacute;p đỡ - sự nghiệp gi&aacute;o dục v&agrave; đ&agrave;o tạo của khoa Cơ kh&iacute; nhất định sẽ li&ecirc;n tục ph&aacute;t triển.</span></span></span></span></p>

<p>&nbsp;</p>

<p style="margin-right:46px; text-align:justify">&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/dien-tu-vien-thong.PNG', NULL, CAST(N'2021-05-09 17:54:36.230' AS DateTime), N'thanguk02', CAST(N'2021-05-09 18:27:30.463' AS DateTime), N'thanguk02', 2, 4)
SET IDENTITY_INSERT [dbo].[New] OFF
SET IDENTITY_INSERT [dbo].[SubMenu] ON 

INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (1, N'Ban Chủ nhiệm khoa', N'ban-chu-nhiem-khoa', N'2', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (6, N'Quy chế đào tạo', N'quy-che-dao-tao', N'1', 2)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (7, N'Đào tạo Đại học', N'dao-tao-dai-hoc', N'2', 2)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (8, N'Đào tạo sau Đại học', N'dao-tao-sau-dai-hoc', N'3', 2)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (12, N'Đề tài NCKH các cấp', N'de-tai-nghien-cuu-khoa-hoc-cac-cap', N'1', 3)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (13, N'Các bài báo khoa học', N'cac-bai-bao-khoa-hoc', N'2', 3)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (14, N'Chuyển giao công nghệ', N'chuyen-giao-cong-nghe', N'3', 3)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (15, N'Hoạt động', N'hoat-dong', N'1', 4)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (16, N'Học bổng', N'hoc-bong', N'2', 4)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (17, N'Tuyển dụng', N'tuyen-dung', N'3', 4)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (18, N'Các biểu mẫu', N'cac-bieu-mau', N'4', 4)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (19, N'Tin tức', N'tin-tuc', N'1', 5)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (20, N'Thông báo', N'thong-bao', N'2', 5)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (22, N'Tuyển sinh', N'tuyen-sinh', N'0', 0)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (23, N'Giới thiệu chung', N'gioi-thieu-chung', N'1', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (24, N'Văn phòng khoa', N'van-phong-khoa', N'3', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (25, N'Các bộ môn', N'cac-bo-mon', N'4', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (26, N'Trung tâm thí nghiệm thực hành cơ khí', N'trung-tam-thi-nghiem-thuc-hanh-co-khi', N'5', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (27, N'Cựu sinh viên', N'cuu-sinh-vien', N'1', 6)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (28, N'Lịch sử khoa Cơ khí', N'lich-su-khoa-co-khi', N'6', 1)
SET IDENTITY_INSERT [dbo].[SubMenu] OFF
ALTER TABLE [dbo].[New]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[CategoryNew] ([id])
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[CategoryNew] ([id])
GO
