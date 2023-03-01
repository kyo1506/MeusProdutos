USE [master]
GO
CREATE DATABASE [MeusProdutos]
GO
ALTER DATABASE [MeusProdutos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MeusProdutos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MeusProdutos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MeusProdutos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MeusProdutos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MeusProdutos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MeusProdutos] SET ARITHABORT OFF 
GO
ALTER DATABASE [MeusProdutos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MeusProdutos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MeusProdutos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MeusProdutos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MeusProdutos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MeusProdutos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MeusProdutos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MeusProdutos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MeusProdutos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MeusProdutos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MeusProdutos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MeusProdutos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MeusProdutos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MeusProdutos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MeusProdutos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MeusProdutos] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MeusProdutos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MeusProdutos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MeusProdutos] SET  MULTI_USER 
GO
ALTER DATABASE [MeusProdutos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MeusProdutos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MeusProdutos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MeusProdutos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MeusProdutos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MeusProdutos] SET QUERY_STORE = OFF
GO
USE [MeusProdutos]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 19/08/2021 01:48:31 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/08/2021 01:48:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/08/2021 01:48:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/08/2021 01:48:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/08/2021 01:48:32 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/08/2021 01:48:32 ******/
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
/****** Object:  Table [dbo].[Enderecos]    Script Date: 19/08/2021 01:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecos](
	[Id] [uniqueidentifier] NOT NULL,
	[Logradouro] [varchar](200) NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[Complemento] [varchar](250) NULL,
	[Cep] [varchar](8) NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Estado] [varchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Enderecos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 19/08/2021 01:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Documento] [varchar](14) NOT NULL,
	[TipoFornecedor] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Fornecedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 19/08/2021 01:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [uniqueidentifier] NOT NULL,
	[FornecedorId] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Descricao] [varchar](1000) NOT NULL,
	[Imagem] [varchar](100) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[DataCadastro] [datetime] NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Produtos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202010020249353_AutomaticMigration', N'DevIO.Infra.Migrations.Configuration', 0x1F8B0800000000000400E55BDB6EE336107D2FD07F10F45864AD38DB05B681DD22EB240BB79B64B14E8ABE05B43476884AA456A4821845BFAC0FFDA4FE4247D68DA42E966D394D50EC4BCCCB19723873389AE1FEF3D7DFA39F9E02DF7A844850CEC6F670706C5BC05CEE51B61CDBB15CBC796FFFF4E3B7DF8C2EBCE0C9FA351FF7361987339918DB0F5286A78E23DC0708881804D48DB8E00B397079E0108F3B27C7C73F38C3A10308612396658DBEC44CD200D63FF0E7843317421913FF8A7BE08BAC1D7B666B54EB9A042042E2C2D83E87C7E9CD60CA1611199C1349063859C293B4AD339F125CCF0CFC856D11C6B82412577B7A27602623CE96B3101B887FBB0A01C72D882F20DBC56939BCEB868E4F920D39E5C41CCA8D85E4C19680C3B799861C73FA4E7AB60B0DA20E2F50D77295EC7AADC7B17DC13C88C0E5B6650A3B9DF851323057F387585006420CD273195CF288810B1E8F400C7298234B1F7C54D8099A53F2EFC89AC4BE8C231833886544FC23EB733CF7A9FB0BAC6EF9EFC0C62CF67D75CDB86AECD31AB0E973C44388E4EA0B2CB29D4C3DDB72F4798E39B198A6CC49F7F831A6F8F735CA26731F0A8B705AA77FE2CB08B51D473C8741E3426FB1AD2BF2F409D8523E8C6D3C0ADBBAA44FE0E52D19F61DA3E85C384946316C2DFB3A0EA055EEBB83889DF020F42100265BF7DC51F8065910B6C8786F484811F7DBDD0742A356A50E0F739813EA110F9E5FEE859068BFCF20F79A3CD2E59A568C15942C625B5FC05F0F110F344CB95B2199FB92A92E231E7CE1BE36BBE8BEBF25D112F00AB8E5CD6366E8B3AEB1CA915392632B65AA4BDE8B34CB1FFF2FDABCE6419BAD1F8830CFB91B6FE2ADE1F787907C4B43AE1A4D263EB16FB36B4BE433491F8BFD7CE068EF84EDE18CA58BF5E38AB99BB5B962EEAE5DD7883FBD587251BBC6ACF35E5569B9C46A6F852C6A86ECC51519DEF644916F33FFE3FFC510A5FA5F27D5807023EA920D37EB41644F03B284E0F943895F895F72DB39B83420BE6D7D461FA7D9F724066C3397248027DB6B14BFEE26C4234296E119B6C12D0DB65F6ACFACB92184D99A934CD66CA1AD6E9C14070A239937CE545CFA64597E03EF15D1E8E07D71165A265E16FE0A2D395DC994C9B72706955D41308728A75D94C6C9255A9E4B6C0B4D33C6C661E5486BE6FC1C47D453679D54B59CEA536D3CC3A92E5DEBAB6214E56DA90BC766ABC3D559C60AEAA95DA1DE68889AC203AFDB593B7871EB95E0E595BE091A2F061CC992ECC9040D1D8F8D3259BD4528736948FCCD5B34A676BC8292932884983DE710024A6172B30E76975E0831AEC64DFA19398AB5B41B510D75341D731B8F94A75C8423FA217FD7623F6D41D36EB6B99301352FE319ECA759B95D84EBC1CC3318527A0F24B9509C51F0DB15C4E7F322415AA1F93B0119D38B2C02302D22019D8134BE1530102FEF9D0A9954CC4A07512F8F1A1CD5AA3620959F051594C2E80D08457B752B52BE7294912D1F43E6C17623F86223A6362A86D28DD3153CE588CCF85DDF7B07BDD4453155B56C22ACAE94A56CA23CD81685B4905447FDB6A8240FAC0A872A4B124E5A93C86B174E43F1627445C210A317A59891B558B3B492317933DB3EB91FA4188E2B6A72FCC56A0B499247F86960F426195D0F2E6924641263CF4912034EBCA0324CA38F065FCC45990C513DB8DC45F319C9DFF9B7537D4D67D0E467A5322F717F498667BD55A87184EAD4755989F824AAF97E9D703F0E58F305D23C5BAD0BA8286A7B77B43CD3AF22E56DDD51B4C4BD0AA5756C819724E7359CA4A1FBFC3CD5AE42E46D5BAC224B9C6B0BC9DABAA3E4697015256FABA28C1CC3DE2A377AC5BE0DAA311DA6933B69ECD58B4735B374079F6A9B7C18AF4A73399A17AC5BBA23282960154669EE8E657E47AB80665F77D42C35A182654D2FC60E8B0BB9171BCC83B3ED0DB071E661AC4F8FE2559CF6F8BE19B1077B2EF38C9A3D97CDDDB1F2BCA1A6A1ACAD3B4A96055441B2A62D76A5E5FAB48D693DAFD0AB2AA1A439A4905E849446E838CAC2B8CD8F632A715D3A24C9C9F247EA2531DD6C252404A943CEBEFA139FE27ECB015784D1050899A6E2EC93E3E189F1B2E6E5BC727184F0FC9D9FBA4CB1EB696CFF61FDF9FC059298D1AF31D02401401714EA8ACAC5F292B9A7D6F4B7FBA97764DD44B89F53EB1817BDFFC3954712B90F24AA5647F67A965287FA6E7BD09A4727B5EBD5A1B77C625287F87ECF17247598C31DB4AABF0FE90B557FFDB11B6A3FAF265E96FFED5163ECCB8D2A8F150AE0AAEE7EBB2F4627A511D4E459D96BFD614DC5DD7A8BA7D62D7A44C216C68B875E9E33D0E4E6D8A71037A79B007AA8BABF6A43ABAB8AEF747BA8407BDD2307317DB378DE404CDB23EBA5F1BE58542B7C7BCF51F8F68804B977E17B777FEBABDAD94375B38CE93AD4328F0783DECB99CF517E6AC97CBECE6265AF265090FD2E75CE5770FACD1992175B6AAC9614BAD5125B4B89E9E72BB2DF3C39EB94B49A2B5CCD95C60D75C63A31AD85A3864A645B21B24E46539DEB3F29533694CD5A6B70E621EA9597175981DC6FC3C6416B49C9835417ABA91FF45CE57F4F217508BA2C2192FF4B851BD17CB61833650B9E1388B1A27C88113D5C017E2EA2439F45186A125762B70B42ACDF17668FA52E823978537613CB3096B86508E6FE4A554642416DF2D725547DCDA39B70FDA2AE8F2DE03269123DDDB00F31F5BD62DD9735C14F0344C26D1F01DBD3B344AA94B05C1548D79C7504CAD45750F22D04A18F60E286CDC823ECB2B63B019F6049DC559EC16B06D97C10BADA47E7942C2312880CA39C8F3FD186BDE0E9C77F012CEDC7DC44380000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107310454397_InitialCreate', N'DevIO.AppMvc.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04CEDA6E8DC617649DA06F0157E2AE8548942A518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E020416393C331C0EC9E170B8FFFDF3EFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFF6E7CE6F80FC6A79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFBBF58070716060813B00C63FC2121D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C43CC5F717D7A39330BCBCB74719B9699C782E025166D85B98062224A08882A0C71F633CA3514096B3100A9077FB1862A05B202FC6BC03C72579D7BEEC1FB2BE5865C31CCA4E621AF83D010F8EB8722CB1F94A2A360BE581FACE40CDF491F53A55E1C4BC70705AF421F0400122C3E3A91731E2897959B03889C32B4C4779C35106791E01DCD720FA32AA22EE199DDBED15C67438DA67FFF68C69E2D124C21382131A216FCFB849E69E6BFF8E1F6F832F984C8E0EE68BA3D72F5F21E7E8D5CFF8E865B5A7D057A0AB1540D14D14843802D9F0A2E8BF6958F57696D8B06856699369056C09E685695CA287F7982CE91DCC98C3D7A671EE3E60272FE1C6F591B8308DA0118D12F8BC4A3C0FCD3D5CD45B8D3CD9FF0D5C0F5FBE1A84EB15BA7797E9D00BFC61E24430AF3E602FAD8DEFDC309B5EB5F1FECCC9CEA3C067DF75FBCA6A3FCF8224B25967022DC92D8A9698D6A51B5BA5F17632690635BC59E7A8BB6FDA4C52D9BC95A4AC43ABCC849CC5A667432EEFD3F2ED6C71B0F9C0E0A5A6C534D264708ADD6A2434DF33AA44A5F11C74351E029DFA96D7C2331FB9DE008B61072EE0882CDCC8C7452FDF05607A88F496F906C531AC05CE6F28BE6B101DFE1C40F419B693084C7446911F3E39B79BBB80E0ABC49F33CBDF1CAFC186E6F66B708E6C1A446784B55A1BEF7D607F09127A469C5344F1476AE780ECF3D6F5BB030C22CE896DE3383E0763C6CE34003F3B07BC20F4E8B0371C5BA1B6ED8C4C3DE4FA6A6F44584B3FE7A4A547A2A690BC120D99CA336912F57DB0744937517352BDA81945ABA89CACAFA80CAC9BA49C522F684AD02A67463598AF978ED0F0CE5E0ABBFBDEDE7A9BB76E2DA8A871062B24FE15131CC132E6DC204A7144CA11E8B26E6CC35948878F317DF2BD29E5F40979C9D0AC569A0DE92230FC6C4861777F36A46242F1BDEB30AFA4C311282706F84EF4EAD355FB9C1324DBF474A87573D3CC37B306E8A6CB491C07B69BCE0245F08B872EEAF2830F67B4C731B2DE88B110E81818BACBB63C2881BE99A2515D9353EC618A8D133B0B0E4E516C2347562374C8E92158BEA32A042B632275E17E927882A5E3883542EC1014C34C750995A7854B6C37445EAB9684961DB730D6F7828758738A434C18C3564D7461AE0E8130010A3EC2A0B469686C552CAED910355EAB6ECCDB5CD872DCA5C8C4466CB2C577D6D825F7DF9EC4309B35B601E36C56491701B4E1BC6D18283FAB743500F1E0B26B062A9C983406CA5DAA8D18685D635B30D0BA4A9E9D816647D4AEE32F9C5777CD3CEB07E5CD6FEB8DEADA826DD6F4B163A699F99ED086420B1CC9E6793A6795F8812A0E6720273F9FC5DCD5154D8481CF30AD876C4A7F57E9875ACD20A21135019686D602CA2F0225206942F5102E8FE5354AC7BD881EB079DCAD1196AFFD026CC50664ECEA856885507F6D2A1A67A7D347D1B3C21A2423EF7458A8E0280C425CBCEA1DEFA0145D5C56564C175FB88F375CE9181F8C0605B578AE1A25E59D195C4BB969B66B49E590F571C9D6D292E03E69B4947766702D711B6D5792C229E8E116ACA5A2FA163ED064CB231DC56E53D48DAD2C518A178C2D4D46D5F81285A14B96950C2B5E62CCB2F4AAE98B59FFB4233FC3B0EC58917D54485B70A241849658A805D620E9B91BC5F4145134472CCE33757C894CB9B76A96FF9C6575FB940731DF07726AF677D642757D5FDB6C656F84839C43177DE6D2A471748501A89B1B2CE50D79285284EEA78197F844EF61E95B671778D5F659898C30B604F9250F4A5297E4E7D675DF6964E45931D428151ECCEA23A587D0E93BF73FAB1AD7F9A47A943C445545D185ADB636723A57A6DF68896E62FFC16A45789A99C57353AA00BCA8274625BD4102ABD47547AD67A05431EB35DD118534932AA450D543CA6A32494DC86AC54A781A8DAA29BA7390D347AAE8726D7764452249155A51BD02B64266B1AE3BAA22D7A40AACA8EE8E5D269E88ABE80EEF5DDAC3CBEA9B5776C05D6FF7D2603CCD9238CCE657B9C7AF02558A7B62F19B7A098C97EFA439694F79AB9B5316D858CF9C3418FAB5A776055E5F7A1AEFEDF598B57BEDDAF2DE74AFAFC7EB67B44F6A1AD2294F2429B817A73DE15437E627ACF6C734D2912B23318D5C8DB0B53FC614FB2346309AFDE94D3D17B3853C27B844C45DE09866B91CE6E1FEC1A1F01C67779EC65871EC788A13AAEE7D4C7DCC36909645EE5164DFA1484E9258E3F948092AC59F2F88831F26E65F69ABE33494C1FE4A8BF78C8BF82371FF4CA0E2364AB0F1B79CF4394C3A7DF3396B471F3F74D7EAC51F9FB3A67BC6750433E6D8D81774B9CA08D79F44F492266BBA86342B3F9478BE13AAF60641892A4C88D59F1CCC5D3AC873835CCA1F7CF4F0635FD1944F0AD642543C1B180A6F1015EA9E05AC82A57D12E0C0274D9F04F4EBACFA89C02AA2699F07B8A43F98F838A0FB3294B7DCE256A338146D62494AF5DC9A5CBD56A6E5B6F72629077BAD892EE759F7805B23977A05CB786669C883ED8E8A2CE3C1B0B769DA4F9E5ABC2BD9C4659EC7769388379937DC7033F44DA50BEF40829B226167FB49C19BB6355D2077C7332BFBA5FEEE98B1F134AEED27F86EDAD87461DE1D37B65E69BC3B666BDBDA3FB76C699DB7D0AD27E5CAF9459A0B19552CB82DE9360B9CC3097F1E8011641E65F656529DE5D594A1DAC2B024D133D5A797898CA58923F195289AD9F6EB2BDFF01B3BCB699AD96A92329B78F3F5BF9137A769E6AD4975DC46BAB032D95095C2DDB28E35E5413DA7F4E05A4F5AB2D1DB7CD6C6DBF5E7940D3C88526AB3477347FC7C927F0751C99053A747B2AF7CDD0B7B67E5171661FF8EDD6509C17E6F9160BBB66B1634176411E49BB720514E2244682E31450E6CA927117517C8A650CD62CCE963EF346EC76E3AE6D8B920D7090D130A5DC6FEDCAB05BC9813D0C43FCD68AECB3CBE0ED3DF2D19A20B20A6CB62F3D7E45DE27A4E21F7B92226A48160DE058FE8B2B1A42CB2BB7C2C90AE02D21188ABAF708A6EB11F7A00165F9319BAC7ABC806E6F71E2F91FD5846007520ED035157FBF8D445CB08F931C728DBC327D8B0E33FBCF91F425BD37368540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'0408330b-f08c-4190-ae4f-fc281fb67221', N'Fornecedor', N'Adicionar,Editar')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'0408330b-f08c-4190-ae4f-fc281fb67221', N'Produto', N'Adicionar,Editar')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0408330b-f08c-4190-ae4f-fc281fb67221', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0408330b-f08c-4190-ae4f-fc281fb67221', N'teste@teste.com', 0, N'AApFo5b17gbiX6sAnbcQTYEp4nuez+g1F5Mmlf1k/HLeJVWK1HwOutv1Kt7I6X/yvA==', N'3278b774-7d99-4dd1-a76e-695fb4be9565', NULL, 0, 0, CAST(N'2021-08-19T02:40:31.250' AS DateTime), 1, 0, N'teste@teste.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'20d83140-9367-4ad8-b343-d1bc2895f24f', N'teste2@teste.com', 0, N'AMGwr/sTZA3koxJm852wtuT7hfgJrQ2Zy6VERUhPHHoJCWZ3lJ1YxMl8cG1VwR4ZFw==', N'9755c13c-118c-4236-96b3-d61f665cbb2d', NULL, 0, 0, NULL, 1, 0, N'teste2@teste.com')
INSERT [dbo].[Enderecos] ([Id], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'8ce177d1-c05c-4c08-926f-293874ebdfc9', N'Avenida Paulista', N'456', NULL, N'01310200', N'Bela Vista', N'São Paulo', N'SP')
INSERT [dbo].[Enderecos] ([Id], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'ceccd39e-2d69-466b-9e66-f7caea69065c', N'Avenida Paulista', N'12345678', N'Teste', N'01310200', N'Bela Vista', N'São Paulo', N'SP')
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'8ce177d1-c05c-4c08-926f-293874ebdfc9', N'Novo', N'49404830020', 1, 1)
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'ceccd39e-2d69-466b-9e66-f7caea69065c', N'Eduardo', N'30390600822', 1, 1)
INSERT [dbo].[Produtos] ([Id], [FornecedorId], [Nome], [Descricao], [Imagem], [Valor], [DataCadastro], [Ativo]) VALUES (N'80864d7f-2309-48fe-bd02-0342b7c182a0', N'8ce177d1-c05c-4c08-926f-293874ebdfc9', N'teste imagem', N'teste imagem', N'5c02b260-597a-4251-b983-b4b1a9b072bf_Regex.jpg', CAST(12.00 AS Decimal(18, 2)), CAST(N'2021-08-14T05:21:17.760' AS DateTime), 1)
INSERT [dbo].[Produtos] ([Id], [FornecedorId], [Nome], [Descricao], [Imagem], [Valor], [DataCadastro], [Ativo]) VALUES (N'513303f4-2453-4b63-b568-99cd44e695ae', N'ceccd39e-2d69-466b-9e66-f7caea69065c', N'Novo', N'Novo', N'74aa3dd0-fcce-4bdb-903c-0674d03354ca_Unix.jpg', CAST(50.00 AS Decimal(18, 2)), CAST(N'2021-08-14T03:46:38.333' AS DateTime), 1)
INSERT [dbo].[Produtos] ([Id], [FornecedorId], [Nome], [Descricao], [Imagem], [Valor], [DataCadastro], [Ativo]) VALUES (N'99904c86-b60f-470c-8369-a838d2dadc71', N'ceccd39e-2d69-466b-9e66-f7caea69065c', N'imagem do jacaré', N'imagem do jacaré', N'38c6a641-11d0-451b-a7ea-ea70996a70a9_Java.jpg', CAST(455.00 AS Decimal(18, 2)), CAST(N'2021-08-14T05:19:57.777' AS DateTime), 1)
INSERT [dbo].[Produtos] ([Id], [FornecedorId], [Nome], [Descricao], [Imagem], [Valor], [DataCadastro], [Ativo]) VALUES (N'ceccd39e-2d69-466b-9e66-f7caea69065c', N'ceccd39e-2d69-466b-9e66-f7caea69065c', N'Teste', N'Teste', N'41854e5f-dd2e-4fef-90db-0ca38cadff82_JS.jpg', CAST(1.00 AS Decimal(18, 2)), CAST(N'2021-10-10T00:00:00.000' AS DateTime), 1)
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19/08/2021 01:48:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 19/08/2021 01:48:32 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 19/08/2021 01:48:32 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 19/08/2021 01:48:32 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 19/08/2021 01:48:32 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 19/08/2021 01:48:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 19/08/2021 01:48:32 ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Enderecos]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Fornecedores_Documento]    Script Date: 19/08/2021 01:48:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Fornecedores_Documento] ON [dbo].[Fornecedores]
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FornecedorId]    Script Date: 19/08/2021 01:48:32 ******/
CREATE NONCLUSTERED INDEX [IX_FornecedorId] ON [dbo].[Produtos]
(
	[FornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[Enderecos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Enderecos_dbo.Fornecedores_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Fornecedores] ([Id])
GO
ALTER TABLE [dbo].[Enderecos] CHECK CONSTRAINT [FK_dbo.Enderecos_dbo.Fornecedores_Id]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Produtos_dbo.Fornecedores_FornecedorId] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedores] ([Id])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_dbo.Produtos_dbo.Fornecedores_FornecedorId]
GO
USE [master]
GO
ALTER DATABASE [MeusProdutos] SET  READ_WRITE 
GO
