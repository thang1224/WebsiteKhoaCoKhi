--create database WebsiteKhoaCoKhi
USE [WebsiteKhoaCoKhi]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/14/2020 1:40:46 PM ******/
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
/****** Object:  Table [dbo].[AdminAccount]    Script Date: 10/14/2020 1:40:47 PM ******/
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
/****** Object:  Table [dbo].[CategoryNew]    Script Date: 10/14/2020 1:40:47 PM ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 10/14/2020 1:40:47 PM ******/
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
/****** Object:  Table [dbo].[New]    Script Date: 10/14/2020 1:40:47 PM ******/
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
/****** Object:  Table [dbo].[Notice]    Script Date: 10/14/2020 1:40:47 PM ******/
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
/****** Object:  Table [dbo].[SubMenu]    Script Date: 10/14/2020 1:40:47 PM ******/
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
', N'/Data/images/VLVH.jpg', NULL, CAST(N'2020-09-22 22:54:50.030' AS DateTime), N'thanguk02', CAST(N'2020-09-23 11:39:14.243' AS DateTime), NULL, 0, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (20, N'Quyết định số về việc cho học sinh thôi học hoặc nghỉ học', N'Quyết định số về việc cho học sinh thôi học hoặc nghỉ học', N'quyet-dinh-cho-hoc-sinh-thoi-hoc', N'<p><img alt="" src="/Data/images/1111.jpg" style="height:1061px; width:750px" /></p>

<p><a href="/Data/files/QD%20so%201469%20cho%20SV%20bao%20luu%20va%20tam%20thoi%20nghi%20hoc.pdf">Quyết định cho học sinh th&ocirc;i học hoặc nghỉ học</a></p>
', N'/Data/images/BAOLUU.jpg', NULL, CAST(N'2020-09-22 22:58:06.043' AS DateTime), N'thanguk02', CAST(N'2020-09-27 22:43:45.607' AS DateTime), NULL, 2, 4)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (21, N'Ban Chủ nhiệm khoa', N'Giới thiệu về Ban Chủ nhiệm khoa', N'ban-chu-nhiem-khoa', N'<p>Giới thiệu về Ban Chủ nhiệm khoa</p>
', NULL, NULL, CAST(N'2020-09-29 00:42:19.880' AS DateTime), N'thanguk02', NULL, NULL, 3, 14)
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
', NULL, NULL, CAST(N'2020-09-29 00:45:02.257' AS DateTime), N'thanguk02', NULL, NULL, 5, 18)
INSERT [dbo].[New] ([id], [name], [title], [metaTitle], [content], [images], [attachFile], [createdDate], [createdBy], [modifyDate], [modifyBy], [newView], [categoryId]) VALUES (23, N'Tin tuyển sinh', N'Tuyển sinh', N'tuyen-sinh', N'<p>Tin tức về việc tuyển sinh năm học 2020</p>
', NULL, NULL, CAST(N'2020-09-29 00:48:30.023' AS DateTime), N'thanguk02', NULL, NULL, 3, 20)
SET IDENTITY_INSERT [dbo].[New] OFF
SET IDENTITY_INSERT [dbo].[SubMenu] ON 

INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (1, N'Ban Chủ nhiệm khoa', N'ban-chu-nhiem-khoa', N'1', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (2, N'Bộ môn Chế tạo máy', N'bo-mon-che-tao-may', N'2', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (3, N'Bộ môn Thiết kế cơ khí', N'bo-mon-thiet-ke-co-khi', N'3', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (4, N'Bộ môn Công nghệ vật liệu', N'bo-mon-cong-nghe-vat-lieu', N'4', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (5, N'Bộ môn Cơ điện tử', N'bo-mon-co-dien-tu', N'5', 1)
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
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (21, N'Trung tâm Thí nghiệm Thực hành Cơ khí', N'trung-tam-thi-nghiem-thuc-hanh-co-khi', N'6', 1)
INSERT [dbo].[SubMenu] ([id], [text], [link], [displayOrder], [typeMenu]) VALUES (22, N'Tuyển sinh', N'tuyen-sinh', N'0', 0)
SET IDENTITY_INSERT [dbo].[SubMenu] OFF
ALTER TABLE [dbo].[New]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[CategoryNew] ([id])
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[CategoryNew] ([id])
GO
