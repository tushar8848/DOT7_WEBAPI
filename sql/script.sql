USE [DOT7]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuisine]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuisine](
	[CID] [uniqueidentifier] NOT NULL,
	[CuisineName] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delievery]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delievery](
	[OrderID] [uniqueidentifier] NULL,
	[DelieveryTime] [datetime] NOT NULL,
	[DelieveryBoyId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DelieveryBoy]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DelieveryBoy](
	[DelieveryBID] [uniqueidentifier] NOT NULL,
	[DName] [varchar](100) NOT NULL,
	[ContactInfo] [int] NOT NULL,
	[DAddress] [varchar](max) NULL,
	[IsPresent] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DelieveryBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [uniqueidentifier] NOT NULL,
	[StateID] [uniqueidentifier] NOT NULL,
	[DistrictName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OID] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[RestaurantKey] [uniqueidentifier] NOT NULL,
	[PaymentAmount] [varchar](100) NOT NULL,
	[Payment_Through] [varchar](50) NULL,
	[IsSuccess] [bit] NOT NULL,
	[AddressID] [uniqueidentifier] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails_DB]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails_DB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductKey] [varchar](50) NOT NULL,
	[Quant] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [uniqueidentifier] NOT NULL,
	[RestaurantID] [uniqueidentifier] NOT NULL,
	[ProductName] [varchar](max) NOT NULL,
	[ProductImage] [varchar](max) NULL,
	[Availability] [bit] NOT NULL,
	[Price] [varchar](50) NOT NULL,
	[VnNV] [bit] NOT NULL,
	[CuisineID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[Ukey] [uniqueidentifier] NOT NULL,
	[MobileNo] [varchar](50) NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ukey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[RKey] [uniqueidentifier] NOT NULL,
	[R_Name] [varchar](max) NOT NULL,
	[R_Address] [varchar](max) NOT NULL,
	[RatingSum] [int] NULL,
	[User_Count] [int] NULL,
	[STime] [int] NOT NULL,
	[CTime] [int] NOT NULL,
	[ImageKey] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[RKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantCuisine]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantCuisine](
	[CuisineID] [uniqueidentifier] NULL,
	[RestaurantKey] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [uniqueidentifier] NOT NULL,
	[StateName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_Order]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Order](
	[OrderID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantKey] [varchar](50) NOT NULL,
	[ProductKey] [varchar](50) NOT NULL,
	[Quant] [int] NOT NULL,
	[Rate] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[AddressID] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[FlatNo] [varchar](50) NULL,
	[StreetName] [varchar](max) NULL,
	[Landmark] [varchar](max) NULL,
	[State] [uniqueidentifier] NOT NULL,
	[District] [uniqueidentifier] NOT NULL,
	[Pincode] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFavourite]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFavourite](
	[UserKey] [uniqueidentifier] NULL,
	[RestaurantKey] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201804061906072_InitialCreate', N'Dot7.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA97264D8DDD14EEDA6E8DC617649DA06F0157E2AE85489422518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E0A1459717866381C92C3D191FFFBE7DFF12F0FBE67DCE328760332310F46FBA681891D382E594ECC842E5EBC367F79F3ED37E333C77F303EE472474C0E7A927862DE511A1E5B566CDF611FC523DFB5A3200E16746407BE859CC03ADCDFFFD93A38B0304098806518E37709A1AE8FD31FF0731A101B873441DE65E0602FE6CFA16596A21A57C8C771886C3C314F03FAD32813338D13CF4560C20C7B0BD3408404145130F0F87D8C67340AC87216C203E4DD3E8618E416C88B3137FCB814EF3A86FD433606ABEC9843D9494C03BF27E0C111778A25765FC9B566E13470DB19B8973EB251A7AE9B98170E4E1FBD0B3C7080A8F078EA454C78625E162A4EE2F00AD351DE7194419E4700F725883E8DAA887B46E77E7B45101D8EF6D97F7BC634F16812E109C1098D90B767DC2473CFB5FFC08FB7C1274C264707F3C5D1EB97AF9073F4EA477CF4B23A52182BC8D51EC0A39B28087104B6E145317ED3B0EAFD2CB163D1ADD227F30AC412AC07D3B8440F6F3159D23B582987AF4DE3DC7DC04EFE8407D77BE2C2F2814E344AE0E755E27968EEE1A2DD6AD4C9FEDFA0F5F0E5AB41B45EA17B77994EBDA01F164E04EBEA1DF6D2D6F8CE0DB3E5559BEF8F5CEC3C0A7CF6BB1E5F59EBC7599044361B4CA015B945D112D3BA7563AB0CDE4E21CDA0860FEB1C75F7439B592A87B752940D68959590ABD8F46AC8ED7D5ABD9D23EE240C61F2D2D0621E690AB8CA293512BAED19ACB10C9683AEC14260105FF3DE77E623D71B60F3EBA005128E851BF9B818E5AF01841A22BD6DBE41710C6BDFF91DC5770DA6C33F07307D86ED2482909C51E4874FAEEDE62E20F82AF1E72CD237A76BB0A9B9FD129C239B06D11961BDD6C67B1BD89F82849E11E71451FC9EDA3920FB79EBFADD010631E7C4B6711C9F433063671A403E9D035E107A74D81B8EED4CDB4E3EA61E727D75F621ECA11F73D13203514B485988464C95893499FA3658BAA49BA9B9A8DED44CA2D5542ED6D75406D6CD522EA937341568B533931A2CB74B6768F8E42E85DDFDEC6EBDC35BB71754DC38831D12FF86098E601B736E10A53822E50C74D937B6912CA4D3C7943EF9D9946AFA80BC6468552BAD867413187E35A4B0BBBF1A5233E1F1BDEBB0ACA4C395271706F84EF2EADB54FB9A132CDBF472A80D73D3CA37B307E896CB491C07B69BAE0245B18B972AEAF6430E67B4D72DB2D188B50F181804BACB8E3C78026333C5A0BA26A7D8C3141B2776560C9CA2D8468EEC461890D3C3B0FC44551856D640EAC6FD20E98448C711EB84D825288695EA122A2F0B97D86E88BC562F093D3B1E616CEC850EB1E51487983085AD9EE8A25C5DF26006147A844969F3D0D8AA445C73206AB256DD9CB7A5B0E5BC4B95888DC4644BEEAC894B9EBF3D4960367B6C03C1D9EC922E0668CB77DB08507E57E91A00E2C565D70254B831690294A7541B09D0BAC7B610A075973CBB00CDAEA85DE75FB8AFEE5A78D62FCA9B3FD61BDDB585D8ACF963C74233CB3DA10F851E3892C3F374CE1AF103555CCEC04E7E3F8B79AA2B8608039F615A2FD994F9AE320FB59A41C4206A022C03AD0594BFF89380A405D5C3B8BC96D7681DCF227AC0E675B74658BEF70BB0951890B1AB2F402B82FAD7A4627076BA7D14232BA2410AF24E97850A8E2220C4CDAB3EF00E4ED1D56565C774C985FB64C39581F1C96870504BE6AA71523E98C1BD948766BB975409599F946C2D2F09E993C64BF96006F7128FD176272992821E69C15A2EAA1FE1032DB6BCD2519C3645DBD8CA0851FCC1D8D230A7C697280C5DB2AC30A9F8136396D1A8A62F66FD69467E8661D9B1826D54585B68A2418496586805D560E9B91BC5F414513447ACCE33757C494C79B66AB6FF5C65F5F89427313F077269F6EFAC47F5757DED9095B310DEF91C86E6B35426AD9F2B265EDDDD609436E4A14851B29F065EE2137D66A5EF9DBDB8ABF6CF9EC808634BB05FCA9C243749F96DDDE79D66445E0DEBCE4E91B1AC3E437A089D9FF37CB3EA695D0EAA47C94B5255145D996A6B33A64B5DBACD92980EF69FA45684A759499C835205E08F7A6254680C1258A5AD3B6A9D6952C5ACB7744714E8245548A1A9879555D248CDC86AC34A781A8FAA25BA6B9069225574B9B53BB2823052855634AF80ADB0596CEB8EAAE094548115CDDDB14B8289B87BEEF059A5BDA4F43FACB20BEC7AA79506E369B6C2610EBBCA7BFA2A50E5714F2CFE265E02E3CF77328CB4B7B8FE6194152CD60B230D867EAFA9BDDAAE6F358DEFE3F598B5F7D5B5EDBCE97DBD1EAF5FB03E694848B73751A4D05EDCE284DBDA98DF9CDA3F8691AE52998869E46E84A3FC31A6D81F3181D1ECB337F55CCC36EE5CE012117781639A71344CB8E9BD163EABD99D4F5CAC38763CC5CD53F79D4B7DCE3640B722F728B2EF5024931FD6F80CA40495EACA17C4C10F13F3AFB4D7715AA260FF4A1FEF1917F17BE27E4EA0E1364AB0F1B74CE61C8616DF7C9FDAD18F18BA7BF5E2CF8F59D73DE33A8215736CEC0BBE5C6586EB9F36F4B226EBBA86352B7FF0F07C1754EDDB0225AAB02056FF9460EED2413E23C8ADFCCE470FDFF7354DF9A9C05A888ACF0186C21BC4853ABAFF2A585AAABF033F694AF5EF375835F57F15D3B4B47F97F4071349FFDDB7A1BCE7168F1AC56568135B52EAE756D2F45A0CCA6D9F4D12B77AAD852EF3A77BC0ADC1915E21329E19BD78B0D351C11E1E0C7B9BA1FDE494E15D610997FC8DED928337C9076E7803F455D1807780B8A620E26C9FECBBE958D31570779C31D98FD2BB63C1C6E959DB27EE6E3AD87465DE1D0FB65EF4DC1D8BB56D9D9F5B8EB4CE47E8D6C9B6326F48F32246550B6E23D3668573B8E1CF0308822CA3CCBE8154B3B79A98A72D0A4B11BD523D6D4C542C2D1C49AF24D1ACB6DF58F981DF38582ED3AC5643B66CD2CDF7FF46DD5CA659B786C2B80D1AB09244A8A266B7EC634D7CA7E744FBAD8DA48565DE96B336BE557F4E2CDF419C525B3D9A77C4CF87D43B884B865C3A3D48BCF2EB5E383B2B7F2111CEEFD85D9610ECEF25126CD74ECD42E6822C82FCF0162CCA45840ACD25A6C88123F524A2EE02D9149A598D39FD883BADDBB1371D73EC5C90EB8486098521637FEED50A5E2C0968D29F3295EB368FAFC3F4EF910C310430D365B5F96BF26BE27A4E61F7B9A226A48160D905AFE8B2B9A4ACB2BB7C2C90AE02D21188BBAF488A6EB11F7A00165F9319BAC7ABD806E1F7162F91FD5856007520ED135177FBF8D445CB08F931C728FBC34F8861C77F78F33FDD33E64428540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'745838bb-59d9-4f30-bf9f-52293dff74f2', N'harneet.singh.ts@gmail.com', 0, N'AG8fFYbNwClBmApSxpQNA30wwgQhHzXUyKh+/gKSBGnS56r50cJIu5tMAke5UkMIAw==', N'f9ba6cff-b602-44d2-831e-74452720426a', NULL, 0, 0, NULL, 0, 0, N'harneet.singh.ts@gmail.com')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'04aa7ae7-69fe-4292-ae97-22c6135d40ad', N'Continental')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'c95867e2-dd9b-4963-89ff-22fb8bdad959', N'Italian')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'f15c58a1-0063-4d66-8962-2326254902f9', N'Bakery')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'372519b3-086d-4fa1-b7b4-25c864079240', N'Rolls')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'a59de0b6-dde4-4129-b9d1-57031f645476', N'Dessert')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'4611a42d-7b0d-44d2-845d-5a462c5610d1', N'Chinese')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'1b11496d-afa5-407a-9f83-757dff5b094b', N'Chaat')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'42309000-0331-466d-a49c-80f28de24e17', N'South Indian')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'North Indian')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81', N'Fast Food')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'255cab0a-8edc-4d45-8b09-df0d917e79cf', N'Beverages')
INSERT [dbo].[Cuisine] ([CID], [CuisineName]) VALUES (N'bb051a06-2a19-417f-8123-f34a580669ea', N'Biryani')
INSERT [dbo].[District] ([DistrictID], [StateID], [DistrictName]) VALUES (N'0e51841a-4759-4ae4-ae00-e4bd0f47cfa2', N'0d1c67f6-1f2e-4d4c-9c00-38c28d0f5a16', N'Allahabad')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'd84a4b43-8721-43b1-8ab0-0042c5c9c7ec', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Assorted Pakoda', N'https://drive.google.com/uc?export=download&id=1C-pjJ0ONa3CEBA7x6QzjY3EKU0I9_AS7', 1, N'140', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'218d0d30-720a-4a8a-8ea0-038599500a5a', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Tomato Uttappa', N'https://drive.google.com/uc?export=download&id=1lHJAi9txHE7i6cGMHy86RknGjSJittvi', 1, N'130', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'91e134ca-4afa-4c34-a20e-0475a0349a6b', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Honey Chilli Potato', N'https://drive.google.com/uc?export=download&id=1rFmSS_tHPo6LLAzI3mmaxRMj3vDR_JTm', 1, N'240', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'47eb9538-2fc4-404d-94ca-0e975f9430bd', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Pesto Veggie Pizza', N'https://drive.google.com/uc?export=download&id=1-YgqNd-NI5tA5fH0N5a1f3Ou-R2aKJhB', 1, N'260', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'2c164ade-4bd2-49c6-ae3d-0f8b7471b55d', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Dahi Kabab', N'https://drive.google.com/uc?export=download&id=19y-syvv3-HLOvpf7MowCKWhyI6_48R2t', 1, N'220', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'd3ec4223-fe9e-4e57-8e84-0fdc7e6841b1', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Green Apple Mozito', N'https://drive.google.com/uc?export=download&id=1X-7huPsXR-EgmhCpFrcW_6WVWFaO20NC', 1, N'220', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'4caed67a-d688-4bd2-8f78-15f0060b6b08', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Chicken Tikka Roll', N'https://drive.google.com/uc?export=download&id=1GHii-jISo-zt3weMfbPgTdmd7WwsvRlP', 1, N'170', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'66bb613a-dcd6-4d14-b6b3-1a998fc6e387', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Egg Cury', N'https://drive.google.com/uc?export=download&id=1vmxLKGA_ZGqtTBuNxiCtr4Ym9fBXtLSK', 1, N'130', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e4c22117-9637-46ec-bfe8-1f4777d53df5', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Spring Dosa', N'https://drive.google.com/uc?export=download&id=1AoNcaTqAiZTclyc_JMlI1PaQNlrFeKLY', 1, N'110', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'96bfa687-6058-4c4d-9487-1f8f9e9c1648', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Hariyali Paneer Tikka', N'https://drive.google.com/uc?export=download&id=1KaEfEWYsQ5Ir1jQNxVX_RKnLUhEfEbdG', 1, N'240', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'0f9cca9c-2d8e-4629-b8d5-1fee2495fc13', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Butter Paneer Masala', N'https://drive.google.com/uc?export=download&id=19pJEV3T6f5lq6iuAF0WjEu2dRolyfCAp', 1, N'210', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'3e231070-9a07-494d-a678-206f1a47eeee', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Malai Kofta', N'https://drive.google.com/uc?export=download&id=17uUQBO4RN67vnsaGYPF6DRGHugzBdrYY', 1, N'220', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'16891e0b-0504-43fb-83f6-299527eac473', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Upma', N'https://drive.google.com/uc?export=download&id=125VFspG4S_3i2ARjAzc1E4ByXtl_5SGU', 1, N'100', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e7fe6edd-c573-4104-88c3-330490b0efac', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Add ons', N'https://drive.google.com/uc?export=download&id=1reL8jaKZXNlVyTpHOjRb47Oo-DJ87tuJ', 1, N'100', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'bc774934-5d6a-405a-9297-33dd200db2ce', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Fusion Bite', N'https://drive.google.com/uc?export=download&id=1Dj6zjgzWkdEh3vK0Vc7l-6r_VHuH-dA2', 1, N'180', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'28f95cef-4e2c-4696-afd6-36676ca827b5', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Butter Masala Dosa', N'https://drive.google.com/uc?export=download&id=1S7lOVUi6DoMqkdfdV1LNz2qaCd6dddnS', 1, N'110', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e915a061-c721-4878-9e6d-3781e7a3a57e', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Dal Tadka', N'https://drive.google.com/uc?export=download&id=1OJbShur1-IOs38Fc6RSv-H6r7M9zLlz5', 1, N'140', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'ff6314a1-ab62-4ffb-81b0-3f45986abef2', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Cheese Foot Long', N'https://drive.google.com/uc?export=download&id=1zZWo93V1IP0Zyq-J_Bm4Awb63d0gauCH', 1, N'160', 1, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'c1b2ad54-0645-4ffe-bcd3-3f7268cd8ad8', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Uttappam Sandwich', N'https://drive.google.com/uc?export=download&id=17B5nqXxPEmBA2ZWP3q3qbfQgWdg1Sv33', 1, N'120', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'1d7fa294-34c6-4663-8fd1-3ff12d243fe6', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Accompaniments', N'https://drive.google.com/uc?export=download&id=1P7a8tByYUsm4SPcJ33DwgQSI9e0oTei6', 1, N'150', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'4b37a0d0-8515-43d3-b429-425162ce5c4e', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Cheese Burger', N'https://drive.google.com/uc?export=download&id=1OCmCAzFN-2NJ9_4IpJv6U1mf1dT3KN12', 1, N'150', 1, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'be01a3ff-8653-4969-b689-4266a4bd7516', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Chili Cheese Pretzel Dog', N'https://drive.google.com/uc?export=download&id=1bbTuaQC1y4kJHZWop-V7gE7jD95cdCu0', 1, N'240', 1, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e6859d49-9de1-4ab2-93a5-484107d0fe77', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Butter Chicken', N'https://drive.google.com/uc?export=download&id=1doFaHxjWy4xK4obpRCLwKveX4b02xQYT', 1, N'220', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'b82e2456-a754-4284-af4f-495cfcb15d99', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Murgh Tikka', N'https://drive.google.com/uc?export=download&id=1M1Yz7U_PYmaSamLr9w4kgGhbaGJ_qwld', 1, N'280', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'a9afdcd2-ccd0-45ae-8961-4b907278dd58', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Chicken Hakka Noodles', N'https://drive.google.com/uc?export=download&id=1-sUm_sRs_Y3BH2X95x0poglvuW-O1pz5', 1, N'220', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'a9391a95-3952-4588-99c7-4badb76b702c', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Mutton Biryani', N'https://drive.google.com/uc?export=download&id=11MVGKXqWIEv1llKzOovrH6MKn6dwSOce', 1, N'260', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'ed76d315-8022-4c95-af61-4c6cff62ad5d', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Hot Choclate Fudge', N'https://drive.google.com/uc?export=download&id=1oIsswS5mJhhqdZInCaw_09JJt1DO8eWS', 1, N'210', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'9d25879b-4b50-4351-a493-4d333af6548f', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Chicken Barra Rice', N'https://drive.google.com/uc?export=download&id=1sHH-PegI5W-419OOR2tNhYxHOuN2YztT', 1, N'210', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e56006ac-38c8-4de3-91e8-50a7b1870129', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Alfredo Veg Pasta', N'https://drive.google.com/uc?export=download&id=1cHkWs3MVolYZnseusbWEbYWlNVMh3PM5', 1, N'260', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'ebd1e043-df41-4022-abca-53c09ed8ce03', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Onion Rava Masala', N'https://drive.google.com/uc?export=download&id=1uZ9H16s0uJcO5WvGguTIlU9qe3E1CWxL', 1, N'99', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'f7bf2060-a947-42f2-a609-5504e1722cd2', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Mushroom Kurkure', N'https://drive.google.com/uc?export=download&id=13P9MelV2Uq5KxvipUzcltYbo8b9avtZO', 1, N'250', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'c41a113c-4f0a-4798-b5ef-57bb17d4a02c', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Regular Bite', N'https://drive.google.com/uc?export=download&id=1P3myOOn5aIIqWorQtOGineQ2E8wLZ-i_', 1, N'130', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'0cf25ec1-7a5b-41b4-810b-5e7809449bfc', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Chicken Biryani', N'https://drive.google.com/uc?export=download&id=1doFaHxjWy4xK4obpRCLwKveX4b02xQYT', 1, N'180', 0, N'bb051a06-2a19-417f-8123-f34a580669ea')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'fc971304-296d-4833-be1b-675209bcd8f7', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Aloo Banda', N'https://drive.google.com/uc?export=download&id=1vFxmr5Yidm97CCBbEkl4g0hjNvoEHauT', 1, N'125', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'81f5d816-f644-4a4e-928a-75a3f1b0aa46', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Pindi Chole', N'https://drive.google.com/uc?export=download&id=1WPI740-WeGQDeg371ldPMQF1bNQHjl4A', 1, N'210', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'826df435-cd37-4849-9f1a-78372057d1e0', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Tandoori Salad', N'https://drive.google.com/uc?export=download&id=1e2vdA-k4uxm25-LEeZ-QZvs924kHCkaQ', 1, N'80', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'dffd71dd-68fc-414d-8a13-83f1915e3bf4', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Chicken Lollipop', N'https://drive.google.com/uc?export=download&id=1eEpsdi_CuDs6h-kR14JiWN7tuDteYf91', 1, N'280', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'106d5576-c1c5-4806-8a59-874d19a42fa1', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Finger Chips', N'https://drive.google.com/uc?export=download&id=14kOR8yX5sRlf7IMzmzddqRzbXXzD1gcQ', 1, N'130', 1, N'04aa7ae7-69fe-4292-ae97-22c6135d40ad')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'1e560e06-3d83-47df-8c19-8827614b5eac', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Chicken Manchurian', N'https://drive.google.com/uc?export=download&id=1HHS0K4ROjB_hCMDh4rWECkiiraufFjQS', 1, N'210', 0, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'9262a40a-6384-4f07-b71e-89842836c453', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Chana Burger', N'https://drive.google.com/uc?export=download&id=1_U5a6KNv7DWwFaNRzow9hToI_FGwSPgt', 1, N'120', 1, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'f28b0a5c-a1e3-4e6a-ba16-8a8e6b15e1a7', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Tangri Kebab', N'https://drive.google.com/uc?export=download&id=1VEDebyprpCLoItm5Suuv8mdx8DzlgVTd', 1, N'240', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'3ed66954-bcf8-4731-b833-8ea22c46a18d', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Keema Mutton', N'https://drive.google.com/uc?export=download&id=1lo5lqdVr4G7u3f1zrKSY0pV73E6gdRjR', 1, N'210', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'795c9d3f-648f-4fdc-9ba7-9369de983f9b', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Daily Bite', N'https://drive.google.com/uc?export=download&id=1QIG4N67bZW0ScC2bbJKDWYJaN3yhytO8', 1, N'120', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'7e745ecc-b012-40dc-bc7d-94f407688355', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Mutton Biryani', N'https://drive.google.com/uc?export=download&id=1npiAXuLkaDY4ob-E229xGwbBxywPIEuV', 1, N'180', 0, N'bb051a06-2a19-417f-8123-f34a580669ea')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'9f9456a4-1a51-4981-adcc-9618a3f3d601', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Stuffed Kulcha', N'https://drive.google.com/uc?export=download&id=1-iBhNhgi9tXT2WH8alQEKlMvVMW-dI67', 1, N'140', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'a3333fd3-9bc4-4c08-b144-9623f2646b7f', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Spicy Golden Paneer Fingers', N'https://drive.google.com/uc?export=download&id=1LQ5DUiUwNk1kHVZJg-gDJX320_xpDpLu', 1, N'180', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'42bd92f5-e5b3-4f8a-b870-96430eeca91c', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Herbivorous Burger', N'https://drive.google.com/uc?export=download&id=1NOn_zFC9cB9JX-taSqxuKh0vnkw-gmCB', 1, N'180', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'5dc0d966-d3a8-403a-a003-983e09631218', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Garlic Roast Dosa', N'https://drive.google.com/uc?export=download&id=138kchuJeu0oFClq7PSZEJtGlkWhVfmmC', 1, N'140', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'0a5d10bd-1726-4ba1-8f82-a2fa8eb7394e', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Rocket Mysore Dosa', N'https://drive.google.com/uc?export=download&id=1lb0U5smfYu05us3fNHp3wVwkfShz98q6', 1, N'120', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'b1686304-ca1d-4f10-bfb6-a599684df879', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Mutton Combo', N'https://drive.google.com/uc?export=download&id=18ayQAGfdX2rmbg0eV5o6DHjlkjEPsEpq', 1, N'220', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'dc84ceb9-c9bd-453a-ac2d-a60a1346d556', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Butter Tandoori Roti', N'https://drive.google.com/uc?export=download&id=1o3GS_SIfjQ3Lcd77wvR3D7kQHjL4GSOx', 1, N'15', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'0841d82d-c60f-44cd-8840-b2cf9ce2ab81', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Fish Orly', N'https://drive.google.com/uc?export=download&id=1ggkyt5obeGClRlrvqrhdQ3eKs9s1IIPh', 1, N'220', 0, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'93fe3e5d-813d-41fa-918d-b383a69ee271', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Salsa Lite Dosa', N'https://drive.google.com/uc?export=download&id=1tQKKgbhFS6PQFEfts39NbF6ngrpzzI5u', 1, N'135', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'4b0e09a8-3bf2-4161-b80d-b49d00257be1', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Vegetable Spring Rolls', N'https://drive.google.com/uc?export=download&id=1kpf5Kq-B7ujf93ascy5ZfAs1liuagiYC', 1, N'180', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e4fc96a0-66f6-466b-bb06-b8adc11e052a', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'King Size Bite', N'https://drive.google.com/uc?export=download&id=1Z3V6jx_SDni1ir8S0_DNxIsgPMIiAgLV', 1, N'170', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'758212b0-a8c0-4f23-a09d-b9781000d2f7', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Egg Biryani', N'https://drive.google.com/uc?export=download&id=1ktqRT_SETCPEp0dUyO4ZEm1_78Z2XZ3g', 1, N'160', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'1a0e98ba-5577-4cbc-8140-bd00f5f0322d', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Leg Piece Fry', N'https://drive.google.com/uc?export=download&id=1vETWkrSfbeCEt72EFQQyLEhFEUQGqirF', 1, N'230', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'7e167e04-79da-43d4-be50-bd0f63165942', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Dal Balluchi', N'https://drive.google.com/uc?export=download&id=1mhMFiJzLCtWOf79vyKpkb3N9MiK-NWp0', 1, N'200', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'0a23299c-905a-4129-a3b2-bfb9abc0a6b6', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Chicken Biryani', N'https://drive.google.com/uc?export=download&id=1ngQgARKQwH3xGZn5z9i2ol65RW88-yX0', 1, N'230', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'b7dc9ba5-bc7c-41ac-ab0b-c5088691d9e5', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Dhaba Meat', N'https://drive.google.com/uc?export=download&id=1miCi77TJZ3dSOBaeAOylS8UOSnZcXZPn', 1, N'220', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'cb3c398d-b35d-4ffb-8c8b-c5b9ec6f36b5', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Fried Fish', N'https://drive.google.com/uc?export=download&id=1-M5ggTDrkAIiQgtqTZxkOTL-vDBb34DW', 1, N'210', 0, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'76f42a3e-c3e1-4262-a41f-c90f4458e4f9', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Vegetable Chowmein', N'https://drive.google.com/uc?export=download&id=1TCTcvbCjze9QGj-xdT8DLvoO_jA36JS6', 1, N'135', 1, N'4611a42d-7b0d-44d2-845d-5a462c5610d1')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'48a04411-badb-4788-bb8e-d15f7781099f', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Kitkat Shake', N'https://drive.google.com/uc?export=download&id=1TTpytpTFulVtlS1gZz8nJaMJOtmoGPjc', 1, N'220', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'9a042d55-d5ca-49fc-821e-d4ca58ae5ac1', N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Hamburger Steak', N'https://drive.google.com/uc?export=download&id=12wEE236C9xCM4iRih_A8fJQdGTJrRjaW', 1, N'180', 1, N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'97f15525-bc9c-4d15-9082-d99111becb99', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Schezwan Dosa', N'https://drive.google.com/uc?export=download&id=15pmSTytsdBGxA4vV4bAA2ado34kIeD0Z', 1, N'150', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e49e8abd-1ef8-49ae-9306-e9ad3a8c7ae2', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'Murgh Matka', N'https://drive.google.com/uc?export=download&id=15-dxNyRK6fANeaxFc-vEiztsVJDr6s3u', 1, N'270', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'ed2f6ae9-4ba6-44e6-811f-ebe4aead4f47', N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Fruit Infusion Mocktail', N'https://drive.google.com/uc?export=download&id=13VKOro0fbAkhvwScMKD9RpNczMN3O260', 1, N'170', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'e4954e9c-3b4c-4bc7-8807-ecb29b4ac7ad', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Lachha Paratha', N'https://drive.google.com/uc?export=download&id=1THIRkt-0Z1Q677WpaE7qI8tSdFvCwAl6', 1, N'80', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'da89fb48-0e3c-4220-a79f-f325aea7952e', N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Spicy Delight', N'https://drive.google.com/uc?export=download&id=1EEyXZKunJiXXBDj2nE6Up9Jc_RT157w1', 1, N'130', 1, N'372519b3-086d-4fa1-b7b4-25c864079240')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'3eae0cd2-9e9d-4380-898d-f426855f1502', N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Mexi Roll Dosa', N'https://drive.google.com/uc?export=download&id=1sHN4Qbp8FmwlYTOKP70mBCYjvDtF2-jp', 1, N'110', 1, N'42309000-0331-466d-a49c-80f28de24e17')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'2f7121ce-1c82-464b-b2da-fb3d3c3a84d4', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Mixed Vegetables', N'https://drive.google.com/uc?export=download&id=1dGdPss6vVKYi_h33EzQ6po9FcL8vk4pH', 1, N'160', 1, N'3ce55145-f250-4750-90af-9aabcc2f9f65')
INSERT [dbo].[Products] ([ProductID], [RestaurantID], [ProductName], [ProductImage], [Availability], [Price], [VnNV], [CuisineID]) VALUES (N'c7bbf10f-2d87-494c-a102-fff989154144', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Veg Biryani', N'https://drive.google.com/uc?export=download&id=1cqCSgtQEfrNEvLyD7t7aOLftdme4T98w', 1, N'170', 1, N'bb051a06-2a19-417f-8123-f34a580669ea')
INSERT [dbo].[Registration] ([Ukey], [MobileNo], [Password], [Name], [Email]) VALUES (N'a4b998fb-1544-48a9-be94-bc2973cda8a4', N'9039216432', N'123456', N'sdfdsfsf', N'sfsfsf')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f', N'Sagar Ratna', N'Tagore Town, Allahabad', 40, 10, 11, 10, N'https://drive.google.com/uc?export=download&id=1VP5flXnlS27Iggo8trZSCkAajITCq3er')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'bc10d687-31f2-4d60-b3f1-2366695bcf7c', N'Celebrations', N'Civil Lines, Allahabad', 43, 10, 11, 10, N'https://drive.google.com/uc?export=download&id=1CfaW9qQnuAHEzjkWzzFyTJHxPiRkPrm-')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde', N'9280', N'Civil Lines, Allahabad', 37, 10, 12, 11, N'https://drive.google.com/uc?export=download&id=1xoa7dZxDtNuSRDD77yeROiIUTCppkY0-')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'31c95a2a-b21d-4b04-a59d-55dd05ff7538', N'Allahabad Biryani Center', N'Civil Lines, Allahabad', 40, 10, 11, 9, N'https://drive.google.com/uc?export=download&id=1f4ngdxsLs7d5245gNPFncuxf219z4bQ_')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'ee358e5e-f56d-4b42-b527-6ae0ab077718', N'Rolls Mania', N'Civil Lines, Allahabad', 42, 10, 11, 9, N'https://drive.google.com/uc?export=download&id=1AqujjngcVstz_4uPB7bgj03wuOFjVgDl')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'3db3fcb1-a440-440c-af81-6f80a11cc199', N'Old School Cafe', N'Civil Lines, Allahabad', 43, 10, 11, 9, N'https://drive.google.com/uc?export=download&id=13TcTuiAsrYx3-G0yH3-k6FmOO-Smhm3h')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'97bd22a1-a876-4abf-bd79-95660b662cec', N'Hot Stuff', N'Civil Lines, Allahabad', 40, 10, 10, 11, N'https://drive.google.com/uc?export=download&id=13TcTuiAsrYx3-G0yH3-k6FmOO-Smhm3h')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'6229414b-234f-42c3-9689-ae1fcbd6124c', N'Dosa Plaza', N'Civil Lines, Allahabad', 38, 10, 11, 9, N'https://drive.google.com/uc?export=download&id=1fT0A9q18aHz39RXVy208y0cMWemo-EXU')
INSERT [dbo].[Restaurant] ([RKey], [R_Name], [R_Address], [RatingSum], [User_Count], [STime], [CTime], [ImageKey]) VALUES (N'c8dcf885-35a2-4ee6-904f-fb25c160db5d', N'Pind Baluchi', N'Civil Lines, Allahabad', 37, 10, 11, 9, N'https://drive.google.com/uc?export=download&id=1nmb7WWSBRLD5gYKJfS3KIZERnNlSs-sH')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'04aa7ae7-69fe-4292-ae97-22c6135d40ad', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'42309000-0331-466d-a49c-80f28de24e17', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'4611a42d-7b0d-44d2-845d-5a462c5610d1', N'dba95d6e-aa6b-4b43-9ad1-22e6a9a99d6f')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'04aa7ae7-69fe-4292-ae97-22c6135d40ad', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'4611a42d-7b0d-44d2-845d-5a462c5610d1', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'bc10d687-31f2-4d60-b3f1-2366695bcf7c')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'8ed1eed6-fff5-4243-aaac-4a7ef39a1dde')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'bb051a06-2a19-417f-8123-f34a580669ea', N'31c95a2a-b21d-4b04-a59d-55dd05ff7538')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'372519b3-086d-4fa1-b7b4-25c864079240', N'ee358e5e-f56d-4b42-b527-6ae0ab077718')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'3db3fcb1-a440-440c-af81-6f80a11cc199')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'04aa7ae7-69fe-4292-ae97-22c6135d40ad', N'3db3fcb1-a440-440c-af81-6f80a11cc199')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'97bd22a1-a876-4abf-bd79-95660b662cec')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'8d6e8705-26ca-4f88-9a82-d3462aa8aa81', N'97bd22a1-a876-4abf-bd79-95660b662cec')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'42309000-0331-466d-a49c-80f28de24e17', N'6229414b-234f-42c3-9689-ae1fcbd6124c')
INSERT [dbo].[RestaurantCuisine] ([CuisineID], [RestaurantKey]) VALUES (N'3ce55145-f250-4750-90af-9aabcc2f9f65', N'c8dcf885-35a2-4ee6-904f-fb25c160db5d')
INSERT [dbo].[State] ([StateID], [StateName]) VALUES (N'0d1c67f6-1f2e-4d4c-9c00-38c28d0f5a16', N'Uttar Pradesh')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Registra__D6D73A86FBAA993D]    Script Date: 11-04-2018 02:38:06 ******/
ALTER TABLE [dbo].[Registration] ADD UNIQUE NONCLUSTERED 
(
	[MobileNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Delievery]  WITH CHECK ADD FOREIGN KEY([DelieveryBoyId])
REFERENCES [dbo].[DelieveryBoy] ([DelieveryBID])
GO
ALTER TABLE [dbo].[Delievery]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OID])
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([AddressID])
REFERENCES [dbo].[UserAddress] ([AddressID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([RestaurantKey])
REFERENCES [dbo].[Restaurant] ([RKey])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserKey])
REFERENCES [dbo].[Registration] ([Ukey])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CuisineID])
REFERENCES [dbo].[Cuisine] ([CID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurant] ([RKey])
GO
ALTER TABLE [dbo].[RestaurantCuisine]  WITH CHECK ADD FOREIGN KEY([CuisineID])
REFERENCES [dbo].[Cuisine] ([CID])
GO
ALTER TABLE [dbo].[RestaurantCuisine]  WITH CHECK ADD FOREIGN KEY([RestaurantKey])
REFERENCES [dbo].[Restaurant] ([RKey])
GO
ALTER TABLE [dbo].[Temp_Order]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OID])
GO
ALTER TABLE [dbo].[Temp_Order]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD FOREIGN KEY([District])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD FOREIGN KEY([State])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD FOREIGN KEY([UserKey])
REFERENCES [dbo].[Registration] ([Ukey])
GO
ALTER TABLE [dbo].[UserFavourite]  WITH CHECK ADD FOREIGN KEY([RestaurantKey])
REFERENCES [dbo].[Restaurant] ([RKey])
GO
ALTER TABLE [dbo].[UserFavourite]  WITH CHECK ADD FOREIGN KEY([UserKey])
REFERENCES [dbo].[Registration] ([Ukey])
GO
/****** Object:  StoredProcedure [dbo].[AddtoFavourite]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddtoFavourite]
(
@RestaurantID varchar(MAX),
@LoginID varchar(MAX),
@Count varchar(10)
)
as begin
try
declare @temp int;
set @temp=CAST(@Count as int);
if((@temp%2)!=0)
begin
declare @UserKey uniqueidentifier;
set @UserKey=(select Ukey from Registration where MobileNo=@LoginID)
if exists(select 1 from UserFavourite where UserKey=(select UKey from Registration where MobileNo=@LoginID) and RestaurantKey=@RestaurantID)
begin
select 'false';
end
else
begin
insert into UserFavourite values(@UserKey,@RestaurantID)
select 'true'
end
end
else
begin
delete from UserFavourite where UserKey=(select UKey from Registration where MobileNo=@LoginID) and RestaurantKey=@RestaurantID
select 'true'
end
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[CheckUserCredentials]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CheckUserCredentials]
(
@Mobile varchar(100),
@Password varchar(100)
)
as begin
try
if exists(select 1 from Registration where MobileNo=@Mobile and Password=@Password)
select 'true'
else
if exists(select 1 from Registration where MobileNo=@Mobile and Password!=@Password)
select 'npwd'
else
select 'false'
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetInitialFav]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetInitialFav]
(
@RestaurantID varchar(MAX),
@LoginID varchar(50)
)
as begin
try
if exists(select 1 from UserFavourite where UserKey=(Select UKey from Registration where MobileNo=@LoginID) and RestaurantKey=@RestaurantID)
begin
select 'true'
end
else
select 'false'
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetPersonDetails]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetPersonDetails]
(
@LoginID varchar(50)
)
as begin
try
if exists(select 1 from Registration where MobileNo=@LoginID)
begin
SELECT Name, Email from Registration where MobileNo=@LoginID;
end
else
begin
select 'false'
end
end try
begin catch
select 'false';
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProducts]
(
@RestaurantKey varchar(MAX)
)
as begin
try
select ProductID, ProductName, ProductImage, convert(varchar,Availability) "Availability", 'Rs. '+convert(varchar,Price) "Price", convert(varchar,VnNV) "VnNV" from Products where RestaurantID=@RestaurantKey
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetRestaurants]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetRestaurants]
(
@LoginID varchar(50)
)
as begin
try
select RF.RKey "Key", RF.R_Name "Restaurant_Name", convert(varchar(MAX),RF.STime)+' AM'+' - '+convert(varchar(MAX),RF.CTime)+' PM' "Time",
 RF.ImageKey "ImageURL",
 convert(varchar,(convert(decimal(16,1),(CONVERT(decimal,RatingSum)/RF.User_Count)))) "Rating", 
 (select CU.CuisineName+',' from Cuisine CU inner join RestaurantCuisine RC
on CU.CID=RC.CuisineID inner join Restaurant Re on RC.RestaurantKey=Re.RKey where Re.RKey=RF.RKey  for xml path('')) "Cuisines",
case when exists(select 1 from UserFavourite UF inner join Registration fg on UF.UserKey=fg.Ukey inner join Restaurant tr on UF.RestaurantKey=tr.RKey
 where tr.RKey=RF.RKey and fg.MobileNo=@LoginID) then '1' else '0' end as isFavourite
  from Restaurant RF order by Rating desc
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetUserAddress]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetUserAddress]
(
@LoginID varchar(50)
)
as begin
try
if exists(select 1 from Registration where MobileNo=@LoginID)
begin
select convert(varchar,ua.AddressID) "AddressID", convert(varchar,ua.FlatNo) "FlatNo", ua.StreetName, ua.Landmark, st.StateName, dt.DistrictName, ua.Pincode  from UserAddress ua inner join State st on ua.State=st.StateID inner join District dt on st.StateID=dt.StateID
inner join Registration rt on ua.UserKey=rt.Ukey where rt.MobileNo=@LoginID
end
else
begin
select null
end
end try
begin catch
select null
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetUsers]
as begin
select MobileNo, Name from Registration
end
GO
/****** Object:  StoredProcedure [dbo].[OrderFood]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[OrderFood]
(
@FlatNo varchar(20),
@StreetName varchar(MAX),
@Landmark varchar(MAX),
@JSON varchar(MAX),
@LoginID varchar(50)
)
as begin
try
begin  TRAN
if exists(select 1 from Registration where MobileNo=@LoginID)
begin
declare @Newid_User uniqueidentifier, @UserID uniqueidentifier, @OrderID uniqueidentifier;
set @Newid_User=(select NEWID())
set @UserID=(select Ukey from Registration where MobileNo=@LoginID)
insert into UserAddress values(@Newid_User, @UserID,@FlatNo,@StreetName,@Landmark,'0D1C67F6-1F2E-4D4C-9C00-38C28D0F5A16','0E51841A-4759-4AE4-AE00-E4BD0F47CFA2','211004')

insert into temp1(RestaurantKey, ProductKey, Quant, Rate)
SELECT
    a.Rkey,b.key1,b.quantity,a.totalprice
FROM
    OPENJSON(@JSON)
    WITH
	(
            Rkey NVARCHAR(MAX) N'$.Rkey',
            totalprice INT N'$.totalPrice',
            products NVARCHAR(MAX) AS JSON
        ) AS a
		CROSS APPLY
		OPENJSON(a.products)
		WITH
        (
		    quantity INT,
            key1 NVARCHAR(MAX)
        ) AS b;

          DECLARE @RowCount INT
          SET @RowCount = (SELECT COUNT(distinct RestaurantKey) FROM temp1) 

           DECLARE @I INT
           SET @I = 1

		   DECLARE @RestaurantKey VARCHAR(50), @Amount VARCHAR(50);
		   WHILE (@I <= @RowCount)
           BEGIN
		   set @OrderID=(select NEWID());
		   if(@I=1)
		   begin
           set @RestaurantKey=(select RestaurantKey FROM temp1 WHERE ID = @I)
		   set @Amount=(select Rate FROM temp1 WHERE ID = @I)
		   end
		   else
		   begin
		   set @RestaurantKey=(select RestaurantKey FROM temp1 WHERE ID = (select count(ProductKey) from temp1 where RestaurantKey=@RestaurantKey)+1)
		   set @Amount=(select Rate FROM temp1 WHERE ID = (select count(ProductKey) from temp1 where RestaurantKey=@RestaurantKey)+1)
		   end
		   insert into Orders values(@OrderID,@UserID, @RestaurantKey,@Amount,'COD',1,@Newid_User, GETDATE())
		   
		    DECLARE @RowCount_Order INT
          SET @RowCount_Order = (SELECT COUNT(ProductKey) FROM temp1 where RestaurantKey=@RestaurantKey) 
		
           DECLARE @O INT
           SET @O = 1

			insert into ProductDetails_DB 
			SELECT ProductKey, Quant FROM temp1 where RestaurantKey=@RestaurantKey
			
			DECLARE @Product VARCHAR(50), @quant int;
		    while(@O <= @RowCount_Order)
			begin
			 
			 SELECT @Product = ProductKey, @quant = Quant FROM ProductDetails_DB WHERE ID = @O
			 insert into Temp_Order values(@OrderID,@Product,@quant)
			 set @O = @O + 1;
			end
			
			delete from ProductDetails_DB;
			 DBCC CHECKIDENT ('ProductDetails_DB', RESEED, 0) 
          SET @I = @I + 1
           END
		   delete from temp1
		   DBCC CHECKIDENT ('temp1', RESEED, 0) 
commit TRAN
end
else
begin
commit TRAN
select 'false'
end
select 'true'
end try
begin catch
rollback TRAN
DBCC CHECKIDENT ('temp1', RESEED, 0) 
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RegisterUser]
(
@Name varchar(MAX),
@MobileNo varchar(50),
@Password varchar(MAX),
@Email varchar(100)
)
as begin
try
if exists (select 1 from Registration where MobileNo=@MobileNo)
begin
select 'exists'
end
else
insert into Registration values(NEWID(), @MobileNo, @Password, @Name,@Email);
select 'true'
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[temp]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[temp]
as begin
DECLARE @PermsJSON VARCHAR(MAX) =
'[{"Rkey": "bc10d687-31f2-4d60-b3f1-2366695bcf7c","products": [{"key1": "96bfa687-6058-4c4d-9487-1f8f9e9c1648","quantity": 2},{"key1": "3e231070-9a07-494d-a678-206f1a47eeee","quantity": 2}],"totalPrice": 920},{"Rkey": "3db3fcb1-a440-440c-af81-6f80a11cc199","products": [{"key1": "91e134ca-4afa-4c34-a20e-0475a0349a6b","quantity": 2},{"key1": "47eb9538-2fc4-404d-94ca-0e975f9430bd","quantity": 2}],"totalPrice": 1000}]';

insert into temp1(RestaurantKey, ProductKey, Quant, Rate)
SELECT
    a.Rkey,b.key1,b.quantity,a.totalprice
FROM
    OPENJSON(@PermsJSON)
    WITH
	(
            Rkey NVARCHAR(MAX) N'$.Rkey',
            totalprice INT N'$.totalPrice',
            products NVARCHAR(MAX) AS JSON
        ) AS a
		CROSS APPLY
		OPENJSON(a.products)
		WITH
        (
		    quantity INT,
            key1 NVARCHAR(MAX)
        ) AS b;



end
GO
/****** Object:  StoredProcedure [dbo].[UpdatePassword]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdatePassword]
(
@LoginID varchar(50),
@NewPassword varchar(MAX)
)
as begin
try
if exists (select 1 from Registration where MobileNo=@LoginID)
begin
update Registration set Password=@NewPassword where MobileNo=@LoginID
select 'true'
end
else
select 'false'
end try
begin catch
select 'false'
end catch
GO
/****** Object:  StoredProcedure [dbo].[ValidateLoginUser]    Script Date: 11-04-2018 02:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ValidateLoginUser]
(
@LoginID varchar(100)
)
as begin
try
if exists (select 1 from Registration where MobileNo=@LoginID)
select 'true'
else
select 'false'
end try
begin catch
select 'false'
end catch
GO
