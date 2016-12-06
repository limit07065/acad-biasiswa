/****** Object:  Table [dbo].[FEE]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FEE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FEE](
	[Account_No] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Subject_Name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Debit] [money] NOT NULL,
	[Credit] [money] NOT NULL,
	[Status] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Session] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Tran_Date] [date] NULL,
 CONSTRAINT [PK_FEE] PRIMARY KEY CLUSTERED 
(
	[Session] ASC,
	[Account_No] ASC,
	[Subject_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'0', N'0', 0.0000, 0.0000, N'0         ', N'0         ', NULL)
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'EXAMINATION FEE', 200.0000, 200.0000, N'Paid      ', N'201520162 ', CAST(0x193B0B00 AS Date))
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'HOSTEL FEE', 469.0000, 469.0000, N'Paid      ', N'201520162 ', CAST(0x193B0B00 AS Date))
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'REGISTRATION FEE', 50.0000, 50.0000, N'Paid      ', N'201520162 ', CAST(0x193B0B00 AS Date))
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'TUITION FEE', 2500.0000, 2500.0000, N'Paid      ', N'201520162 ', CAST(0x193B0B00 AS Date))
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'EXAMINATION FEE', 200.0000, 0.0000, N'Unpaid    ', N'201620171 ', NULL)
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'HOSTEL FEE', 599.0000, 349.0000, N'Unpaid    ', N'201620171 ', CAST(0xF63B0B00 AS Date))
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'REGISTRATION FEE', 50.0000, 0.0000, N'Unpaid    ', N'201620171 ', NULL)
INSERT [dbo].[FEE] ([Account_No], [Subject_Name], [Debit], [Credit], [Status], [Session], [Tran_Date]) VALUES (N'12330100910527', N'TUITION FEE', 2500.0000, 0.0000, N'Unpaid    ', N'201620171 ', NULL)
/****** Object:  Table [dbo].[EXAM]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXAM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXAM](
	[Code] [smallint] IDENTITY(1,1) NOT NULL,
	[Session] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[GPA] [float] NOT NULL,
	[Matrix_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CPA] [float] NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[EXAM] ON
INSERT [dbo].[EXAM] ([Code], [Session], [GPA], [Matrix_No], [CPA]) VALUES (1, N'201520162 ', 3.9, N'A14CS0047 ', 3.9)
INSERT [dbo].[EXAM] ([Code], [Session], [GPA], [Matrix_No], [CPA]) VALUES (2, N'201620171 ', 3.92, N'A14CS0047 ', 3.91)
SET IDENTITY_INSERT [dbo].[EXAM] OFF
/****** Object:  Table [dbo].[CODE_TYPE_AUTHORSHIP]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_TYPE_AUTHORSHIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_TYPE_AUTHORSHIP](
	[code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_TYPE_AUTHORSHIP] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_TYPE_AUTHORSHIP] ([code], [description]) VALUES (N'0         ', N'First Student Author')
INSERT [dbo].[CODE_TYPE_AUTHORSHIP] ([code], [description]) VALUES (N'1         ', N'Second Student Author')
INSERT [dbo].[CODE_TYPE_AUTHORSHIP] ([code], [description]) VALUES (N'2         ', N'Single Student Author')
/****** Object:  Table [dbo].[CODE_STATUS_PAPER]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_STATUS_PAPER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_STATUS_PAPER](
	[code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_STATUS_PAPER] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_STATUS_PAPER] ([code], [description]) VALUES (N'0         ', N'Submitted')
INSERT [dbo].[CODE_STATUS_PAPER] ([code], [description]) VALUES (N'1         ', N'In Press')
INSERT [dbo].[CODE_STATUS_PAPER] ([code], [description]) VALUES (N'2         ', N'Published')
/****** Object:  Table [dbo].[CODE_SCHOLARSHIP]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_SCHOLARSHIP](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Address1] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Address2] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Postcode] [int] NULL,
	[City] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[State] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[TelNo] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Short_Name] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Age_Limit] [tinyint] NOT NULL,
	[Sem_Limit] [tinyint] NOT NULL,
	[Reg_Limit] [tinyint] NOT NULL,
	[Job_Limit] [tinyint] NOT NULL,
	[CPA_Limit] [float] NOT NULL,
	[Nationality_Limit] [tinyint] NOT NULL,
 CONSTRAINT [PK_Scholarship_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CODE_SCHOLARSHIP', N'COLUMN',N'Age_Limit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = No restriction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CODE_SCHOLARSHIP', @level2type=N'COLUMN',@level2name=N'Age_Limit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CODE_SCHOLARSHIP', N'COLUMN',N'Sem_Limit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = No restriction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CODE_SCHOLARSHIP', @level2type=N'COLUMN',@level2name=N'Sem_Limit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CODE_SCHOLARSHIP', N'COLUMN',N'Reg_Limit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = No restriction | 1 = Full Time | 2 = Part Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CODE_SCHOLARSHIP', @level2type=N'COLUMN',@level2name=N'Reg_Limit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CODE_SCHOLARSHIP', N'COLUMN',N'Job_Limit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = No restriction | 1 = Must be unemployed | 2 = Must be employed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CODE_SCHOLARSHIP', @level2type=N'COLUMN',@level2name=N'Job_Limit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CODE_SCHOLARSHIP', N'COLUMN',N'CPA_Limit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = No restriction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CODE_SCHOLARSHIP', @level2type=N'COLUMN',@level2name=N'CPA_Limit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'CODE_SCHOLARSHIP', N'COLUMN',N'Nationality_Limit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = No restriction | 1 = Malaysian | 2 = Non-Malaysian' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CODE_SCHOLARSHIP', @level2type=N'COLUMN',@level2name=N'Nationality_Limit'
GO
INSERT [dbo].[CODE_SCHOLARSHIP] ([Code], [Name], [Address1], [Address2], [Postcode], [City], [State], [TelNo], [Short_Name], [Age_Limit], [Sem_Limit], [Reg_Limit], [Job_Limit], [CPA_Limit], [Nationality_Limit]) VALUES (N'111       ', N'SELF SPONSORED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[CODE_SCHOLARSHIP] ([Code], [Name], [Address1], [Address2], [Postcode], [City], [State], [TelNo], [Short_Name], [Age_Limit], [Sem_Limit], [Reg_Limit], [Job_Limit], [CPA_Limit], [Nationality_Limit]) VALUES (N'174A      ', N'Zamalah - Master', N'PEJABAT BENDAHARI', N'UNIT KEWANGAN PELAJAR', 81310, N'UTM, SKUDAI', N'JOHOR', NULL, N'Zamalah   ', 30, 2, 0, 0, 3, 0)
INSERT [dbo].[CODE_SCHOLARSHIP] ([Code], [Name], [Address1], [Address2], [Postcode], [City], [State], [TelNo], [Short_Name], [Age_Limit], [Sem_Limit], [Reg_Limit], [Job_Limit], [CPA_Limit], [Nationality_Limit]) VALUES (N'174B      ', N'Zamalah - PHD', N'PEJABAT BENDAHARI', N'UNIT KEWANGAN PELAJAR', 81310, N'UTM, SKUDAI', N'JOHOR', NULL, N'Zamalah   ', 35, 0, 1, 1, 0, 1)
INSERT [dbo].[CODE_SCHOLARSHIP] ([Code], [Name], [Address1], [Address2], [Postcode], [City], [State], [TelNo], [Short_Name], [Age_Limit], [Sem_Limit], [Reg_Limit], [Job_Limit], [CPA_Limit], [Nationality_Limit]) VALUES (N'175       ', N'International Doctorial Fund', N'Scholarship Unit', N'School of Graduate Studies', 81310, N'UTM, SKUDAI', N'JOHOR', N'07-5537782', N'IDF       ', 0, 2, 1, 1, 0, 2)
INSERT [dbo].[CODE_SCHOLARSHIP] ([Code], [Name], [Address1], [Address2], [Postcode], [City], [State], [TelNo], [Short_Name], [Age_Limit], [Sem_Limit], [Reg_Limit], [Job_Limit], [CPA_Limit], [Nationality_Limit]) VALUES (N'176       ', N'Postgraduate National Fund', NULL, NULL, NULL, NULL, NULL, NULL, N'PNF       ', 30, 2, 2, 0, 0, 0)
/****** Object:  Table [dbo].[CODE_RELIGION]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_RELIGION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_RELIGION](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Religion] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Religion] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_RELIGION] ([Code], [Religion]) VALUES (N'1         ', N'MUSLIM')
INSERT [dbo].[CODE_RELIGION] ([Code], [Religion]) VALUES (N'2         ', N'CHRISTIAN')
INSERT [dbo].[CODE_RELIGION] ([Code], [Religion]) VALUES (N'3         ', N'BUDDHISM')
INSERT [dbo].[CODE_RELIGION] ([Code], [Religion]) VALUES (N'4         ', N'HINDUISM')
INSERT [dbo].[CODE_RELIGION] ([Code], [Religion]) VALUES (N'5         ', N'OTHERS')
/****** Object:  Table [dbo].[CODE_RACE]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_RACE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_RACE](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Race] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'A         ', N'MALAY PENINSULAR')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'B         ', N'CHINESE')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'C         ', N'INDIAN')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'D         ', N'BUMIPUTERA SABAH')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'E         ', N'BUMIPUTERA SARAWAK')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'F         ', N'ORANG ASLI PEN.')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'I         ', N'NON-BUMI, SABAH')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'J         ', N'NON-BUMI, SARAWAK')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'K         ', N'OTHER BUMI. PEN.')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'L         ', N'OTHER NON-B, PEN.')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'M         ', N'PERMENANT RESIDENT')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'N         ', N'OTHER NON-MALAYSIA')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'P         ', N'MALAY INDONESIA')
INSERT [dbo].[CODE_RACE] ([Code], [Race]) VALUES (N'R         ', N'ARAB')
/****** Object:  Table [dbo].[CODE_PROGRAM]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_PROGRAM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_PROGRAM](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Course_Name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Year] [smallint] NOT NULL,
	[Faculty_Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Type] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_PROGRAM] ([Code], [Course_Name], [Year], [Faculty_Code], [Type]) VALUES (N'1         ', N'MSFA3AJA', 6, N'28        ', N'Amali     ')
INSERT [dbo].[CODE_PROGRAM] ([Code], [Course_Name], [Year], [Faculty_Code], [Type]) VALUES (N'2         ', N'MGUA3AJA', 6, N'23        ', N'Amali     ')
/****** Object:  Table [dbo].[CODE_POSITION]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_POSITION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_POSITION](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Position] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_POSITION] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'A1009     ', N'PENSYARAH')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DA02A     ', N'TUTOR')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DA41A     ', N'Tutor (DA41)')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS01A     ', N'PROFESOR MADYA')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS02A     ', N'PENSYARAH')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS45A     ', N'Pensyarah (DS45)')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS51A     ', N'PENSYARAH (DS51)')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS52A     ', N'Pensyarah Kanan')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS53A     ', N'Professor Madya (DS53)')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'DS54A     ', N'Professor Madya (DS54)')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'G0002     ', N'PENGARAH')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'G0003     ', N'DEKAN')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'G0004     ', N'TIMBALAN PENGARAH')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'G0005     ', N'TIMBALAN DEKAN')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'G0007     ', N'KETUA JABATAN')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'VK06A     ', N'Profesor (VK06)')
INSERT [dbo].[CODE_POSITION] ([Code], [Position]) VALUES (N'VK07A     ', N'Profesor (VK07)')
/****** Object:  Table [dbo].[CODE_NATIONALITY]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_NATIONALITY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_NATIONALITY](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Nationality_BI] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_NATIONALITY] ([Code], [Nationality_BI]) VALUES (N'1         ', N'MALAYSIAN')
INSERT [dbo].[CODE_NATIONALITY] ([Code], [Nationality_BI]) VALUES (N'2         ', N'INDONESIAN')
INSERT [dbo].[CODE_NATIONALITY] ([Code], [Nationality_BI]) VALUES (N'3         ', N'IRAN')
INSERT [dbo].[CODE_NATIONALITY] ([Code], [Nationality_BI]) VALUES (N'4         ', N'PALESTINE')
INSERT [dbo].[CODE_NATIONALITY] ([Code], [Nationality_BI]) VALUES (N'5         ', N'NIGERIA')
/****** Object:  Table [dbo].[CODE_MARRIAGE_STATUS]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_MARRIAGE_STATUS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_MARRIAGE_STATUS](
	[Code] [smallint] NOT NULL,
	[Description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_MARRIAGE_STATUS] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_MARRIAGE_STATUS] ([Code], [Description]) VALUES (1, N'SINGLE')
INSERT [dbo].[CODE_MARRIAGE_STATUS] ([Code], [Description]) VALUES (2, N'MARRIED')
INSERT [dbo].[CODE_MARRIAGE_STATUS] ([Code], [Description]) VALUES (3, N'WIDOWER')
INSERT [dbo].[CODE_MARRIAGE_STATUS] ([Code], [Description]) VALUES (4, N'WIDOW')
INSERT [dbo].[CODE_MARRIAGE_STATUS] ([Code], [Description]) VALUES (5, N'DIVORCED')
/****** Object:  Table [dbo].[CODE_INDEX]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_INDEX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_INDEX](
	[code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_INDEX] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_INDEX] ([code], [description]) VALUES (N'0         ', N'SCOPUS')
INSERT [dbo].[CODE_INDEX] ([code], [description]) VALUES (N'1         ', N'ISI (Web of Science)')
INSERT [dbo].[CODE_INDEX] ([code], [description]) VALUES (N'2         ', N'Others')
/****** Object:  Table [dbo].[CODE_GENDER]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_GENDER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_GENDER](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Gender] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_GENDER] ([Code], [Gender]) VALUES (N'F         ', N'Female    ')
INSERT [dbo].[CODE_GENDER] ([Code], [Gender]) VALUES (N'M         ', N'Male      ')
/****** Object:  Table [dbo].[CODE_FACULTY]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_FACULTY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_FACULTY](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Faculty_Initial] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Faculty_Fullname] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'10        ', N'SPS       ', N'Sekolah Pengajian Siswazah')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'21        ', N'FAB       ', N'Fakulti Alam Bina')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'22        ', N'FKA       ', N'Fakulti Kejuruteraan Awam')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'23        ', N'FKE       ', N'Fakulti Kejuruteraan Elektrik')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'24        ', N'FKM       ', N'Fakulti Kejuruteraan Mekanikal')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'25        ', N'FKKKSA    ', N'Fak. Kej. Kimia Dan Kej. Sumber Asli')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'26        ', N'FS        ', N'Fakulti Sains')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'27        ', N'FGHT      ', N'Fakulti Geoinformasi dan Harta Tanah')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'28        ', N'FC        ', N'Fakulti Komputeran')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'29        ', N'FM        ', N'Fakulti Pengurusan')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'31        ', N'FP        ', N'Fakulti Pendidikan')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'33        ', N'FTI       ', N'Fakulti Tamadun Islam')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'35        ', N'FBB       ', N'Fakulti Biosains dan Biokejuruteraan')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'36        ', N'FKBSK     ', N'Fakulti Kejuruteraan Bioperubatan & Sains Kesihatan')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'38        ', N'UTM AIS   ', N'UTM AIS')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'39        ', N'UTM Perdana', N'Perdana School Of Science Technology & Innovation Policy')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'40        ', N'UTM Razak', N'UTM Razak School of Engineering and Advanced Technology')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'41        ', N'LA', N'Akademi Bahasa')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'42        ', N'FPREE', N'Fakulti Kejuruteraan Petroleum Dan Kejuruteraan Tenaga Diperbaharui')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'43        ', N'MJIIT', N'Institut Teknologi Antarabangsa Malaysia - Jepun')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'44        ', N'FKK', N'Fakulti Kejuruteraan Kimia')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'45        ', N'FBME', N'Fakulti Biosains Dan Kejuruteraan Perubatan')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'46        ', N'FKT', N'Fakulti Kejuruteraan Kimia dan Kejuruteraan Tenaga')
INSERT [dbo].[CODE_FACULTY] ([Code], [Faculty_Initial], [Faculty_Fullname]) VALUES (N'63        ', N'IBS       ', N'International Business School')
/****** Object:  Table [dbo].[CODE_COUNTRY]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_COUNTRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_COUNTRY](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Country_Name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_COUNTRY] ([Code], [Country_Name]) VALUES (N'MY        ', N'Malaysia')
/****** Object:  Table [dbo].[CODE_APP_STATUS]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_APP_STATUS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_APP_STATUS](
	[Code] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_SCHOLAR_STATUS] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_01', N'Permohonan diterima')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_02', N'Permohonan dihantar kepada Penyelia')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_03', N'Penyelia telah kemaskini permohonan')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_04', N'Permohonan dihantar kepada Fakulti')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_05', N'Permohonan disahkan oleh Fakulti')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_06', N'Surat Panggil Temuduga dihantar')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_07', N'Keputusan permohonan')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_08', N'Surat Tawaran / Dukacita')
INSERT [dbo].[CODE_APP_STATUS] ([Code], [Description]) VALUES (N'BIA_09', N'Dokumen Perjanjian diterima')
/****** Object:  Table [dbo].[CODE_AFFILIATION_UTM]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_AFFILIATION_UTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_AFFILIATION_UTM](
	[code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CODE_AFFILIATION_UTM] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_AFFILIATION_UTM] ([code], [description]) VALUES (N'0         ', N'No')
INSERT [dbo].[CODE_AFFILIATION_UTM] ([code], [description]) VALUES (N'1         ', N'Yes')
/****** Object:  Table [dbo].[CODE_ADDRESS]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_ADDRESS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_ADDRESS](
	[Code] [smallint] NOT NULL,
	[Description] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Address_Type] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_ADDRESS] ([Code], [Description]) VALUES (1, N'PERMANENT ADDRESS')
INSERT [dbo].[CODE_ADDRESS] ([Code], [Description]) VALUES (2, N'MAILING ADDRESS')
INSERT [dbo].[CODE_ADDRESS] ([Code], [Description]) VALUES (3, N'REFEREE ADDRESS')
INSERT [dbo].[CODE_ADDRESS] ([Code], [Description]) VALUES (4, N'HOSTEL ADDRESS')
INSERT [dbo].[CODE_ADDRESS] ([Code], [Description]) VALUES (5, N'OTHERS')
INSERT [dbo].[CODE_ADDRESS] ([Code], [Description]) VALUES (6, N'WORK ADDRESS')
/****** Object:  Table [dbo].[CODE_ACTIVE]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CODE_ACTIVE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CODE_ACTIVE](
	[Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Descriptiono] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Active_code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CODE_ACTIVE] ([Code], [Descriptiono]) VALUES (N'A         ', N'AKTIF')
INSERT [dbo].[CODE_ACTIVE] ([Code], [Descriptiono]) VALUES (N'E         ', N'INTENSIF B MELAYU')
INSERT [dbo].[CODE_ACTIVE] ([Code], [Descriptiono]) VALUES (N'F         ', N'PINDAH KE SPACE')
INSERT [dbo].[CODE_ACTIVE] ([Code], [Descriptiono]) VALUES (N'I         ', N'TIDAK DAFTAR')
INSERT [dbo].[CODE_ACTIVE] ([Code], [Descriptiono]) VALUES (N'Y         ', N'PELAJAR SISTEM MAINFRAME TIDAK AKTIF')
/****** Object:  Table [dbo].[APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[APPLICATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[APPLICATION](
	[App_No] [int] IDENTITY(1,1) NOT NULL,
	[Matrix_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Session] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[App_Date] [date] NOT NULL,
	[Mark] [decimal](18, 0) NOT NULL,
	[Comment] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[Achievement] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Award] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Type] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Faculty_Approval] [tinyint] NOT NULL,
 CONSTRAINT [PK_APPLICATION_1] PRIMARY KEY CLUSTERED 
(
	[App_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'APPLICATION', N'COLUMN',N'Faculty_Approval'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - Not approved | 1 - Approved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'APPLICATION', @level2type=N'COLUMN',@level2name=N'Faculty_Approval'
GO
SET IDENTITY_INSERT [dbo].[APPLICATION] ON
INSERT [dbo].[APPLICATION] ([App_No], [Matrix_No], [Session], [App_Date], [Mark], [Comment], [Achievement], [Award], [Type], [Faculty_Approval]) VALUES (4, N'A14CS0047 ', N'201620171 ', CAST(0x1D3C0B00 AS Date), CAST(9 AS Decimal(18, 0)), NULL, NULL, NULL, N'174A      ', 0)
INSERT [dbo].[APPLICATION] ([App_No], [Matrix_No], [Session], [App_Date], [Mark], [Comment], [Achievement], [Award], [Type], [Faculty_Approval]) VALUES (5, N'A14CS0128 ', N'201620171 ', CAST(0x1E3C0B00 AS Date), CAST(4 AS Decimal(18, 0)), NULL, NULL, NULL, N'176       ', 0)
SET IDENTITY_INSERT [dbo].[APPLICATION] OFF
/****** Object:  Table [dbo].[STAFF]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STAFF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STAFF](
	[Staff_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Faculty] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Position] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Email] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Contact] [nchar](15) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[PHD_Graduate_Date] [date] NULL,
 CONSTRAINT [PK_SUPERVISOR] PRIMARY KEY CLUSTERED 
(
	[Staff_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[STAFF] ([Staff_No], [Name], [Faculty], [Position], [Email], [Contact], [PHD_Graduate_Date]) VALUES (N'7026      ', N'DR. HASWADI HASAN', N'28        ', N'DS45A     ', N'haswadi@utm.my', N'075532034      ', CAST(0x1D3C0B00 AS Date))
INSERT [dbo].[STAFF] ([Staff_No], [Name], [Faculty], [Position], [Email], [Contact], [PHD_Graduate_Date]) VALUES (N'7777      ', N'DR. RANDOM', N'28        ', N'DS45A     ', N'RANDOM@UTM.MY', N'075532034      ', CAST(0x1D3C0B00 AS Date))
/****** Object:  Table [dbo].[MARK_PNF]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MARK_PNF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MARK_PNF](
	[id] [int] NOT NULL,
	[master_qualification] [decimal](2, 1) NOT NULL,
	[alumni] [decimal](2, 1) NOT NULL,
	[special_company] [decimal](2, 1) NOT NULL,
	[best_student_SPS] [decimal](2, 1) NOT NULL,
	[best_student_faculty] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_MARK_PNF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[MARK_PNF] ([id], [master_qualification], [alumni], [special_company], [best_student_SPS], [best_student_faculty]) VALUES (5, CAST(2.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)))
/****** Object:  Table [dbo].[MARK_COCURRICULAR_ACTIVITIES]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES](
	[id] [int] NOT NULL,
	[president] [decimal](2, 1) NOT NULL,
	[president_level] [decimal](2, 1) NOT NULL,
	[vice_president] [decimal](2, 1) NOT NULL,
	[vice_president_level] [decimal](2, 1) NOT NULL,
	[bursar] [decimal](2, 1) NOT NULL,
	[bursar_level] [decimal](2, 1) NOT NULL,
	[secretary] [decimal](2, 1) NOT NULL,
	[secretary_level] [decimal](2, 1) NOT NULL,
	[committee] [decimal](2, 1) NOT NULL,
	[committee_level] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_MARK_COCURRICULAR_ACTIVITIES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[MARK_COCURRICULAR_ACTIVITIES] ([id], [president], [president_level], [vice_president], [vice_president_level], [bursar], [bursar_level], [secretary], [secretary_level], [committee], [committee_level]) VALUES (5, CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)))
/****** Object:  Table [dbo].[MARK_ZAMALAH]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MARK_ZAMALAH](
	[id] [int] NOT NULL,
	[RU] [decimal](2, 1) NOT NULL,
	[attachment] [decimal](2, 1) NOT NULL,
	[chancellor] [decimal](2, 1) NOT NULL,
	[pro_chancellor] [decimal](2, 1) NOT NULL,
	[alumni] [decimal](2, 1) NOT NULL,
	[special_company] [decimal](2, 1) NOT NULL,
	[dean] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_MARK_ZAMALAH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[MARK_ZAMALAH] ([id], [RU], [attachment], [chancellor], [pro_chancellor], [alumni], [special_company], [dean]) VALUES (4, CAST(1.0 AS Decimal(2, 1)), CAST(2.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(4.0 AS Decimal(2, 1)))
/****** Object:  Table [dbo].[MARK_RESEARCH_AWARD]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MARK_RESEARCH_AWARD](
	[id] [int] NOT NULL,
	[best_paper] [decimal](2, 1) NOT NULL,
	[best_speaker] [decimal](2, 1) NOT NULL,
	[research] [decimal](2, 1) NOT NULL,
	[others] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_MARK_RESEARCH_AWARD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[MARK_RESEARCH_AWARD] ([id], [best_paper], [best_speaker], [research], [others]) VALUES (5, CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)), CAST(0.0 AS Decimal(2, 1)))
/****** Object:  Table [dbo].[STUDENT]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STUDENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STUDENT](
	[Matrix_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Gender] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Religion] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Race] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Program] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Faculty] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Nationality] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[IC_Passport] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Active_Code] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Reg_Date] [date] NOT NULL,
	[DOB] [date] NOT NULL,
	[State_Birth] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Marriage_Status] [smallint] NOT NULL,
	[Country] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Curr_Coutnry] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Contact] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Matrix_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [IX_Student] UNIQUE NONCLUSTERED 
(
	[Matrix_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[STUDENT] ([Matrix_No], [Name], [Gender], [Religion], [Race], [Program], [Faculty], [Nationality], [IC_Passport], [Active_Code], [Reg_Date], [DOB], [State_Birth], [Marriage_Status], [Country], [Curr_Coutnry], [Contact], [Email]) VALUES (N'A14CS0047 ', N'Loh Wen He', N'M         ', N'3         ', N'B         ', N'1         ', N'28        ', N'1         ', N'940616016503', N'A         ', CAST(0xD73B0B00 AS Date), CAST(0x1E1C0B00 AS Date), N'Johor', 1, N'MY        ', N'MY        ', N'0127101234', N'wenheloh@hotmail.com')
INSERT [dbo].[STUDENT] ([Matrix_No], [Name], [Gender], [Religion], [Race], [Program], [Faculty], [Nationality], [IC_Passport], [Active_Code], [Reg_Date], [DOB], [State_Birth], [Marriage_Status], [Country], [Curr_Coutnry], [Contact], [Email]) VALUES (N'A14CS0128 ', N'Raymond Tan Wei Yi', N'M         ', N'3         ', N'B         ', N'1         ', N'26        ', N'1         ', N'940102010110', N'A         ', CAST(0xD73B0B00 AS Date), CAST(0x791B0B00 AS Date), N'Penang', 1, N'MY        ', N'MY        ', N'0123456789', N'raymondtan@gmail.com')
/****** Object:  Table [dbo].[SUPERVISOR_RECOMMENDATION]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SUPERVISOR_RECOMMENDATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SUPERVISOR_RECOMMENDATION](
	[id] [int] NOT NULL,
	[comment] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[recommendation] [int] NULL,
	[supervisor_id] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SUPERVISOR_RECOMMENDATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[SUPERVISOR_RECOMMENDATION] ([id], [comment], [recommendation], [supervisor_id]) VALUES (4, NULL, 2, N'7026      ')
INSERT [dbo].[SUPERVISOR_RECOMMENDATION] ([id], [comment], [recommendation], [supervisor_id]) VALUES (5, N'good', 1, N'7026      ')
/****** Object:  Table [dbo].[APP_STATUS_DETAILS]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[APP_STATUS_DETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[APP_STATUS_DETAILS](
	[App_Code] [int] NOT NULL,
	[Status] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Remark] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Date] [date] NOT NULL,
	[Active] [tinyint] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_APP_STATUS_DETAILS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[APP_STATUS_DETAILS] ON
INSERT [dbo].[APP_STATUS_DETAILS] ([App_Code], [Status], [Remark], [Date], [Active], [ID]) VALUES (4, N'BIA_01    ', N'Application received', CAST(0x1D3C0B00 AS Date), 0, 1)
INSERT [dbo].[APP_STATUS_DETAILS] ([App_Code], [Status], [Remark], [Date], [Active], [ID]) VALUES (4, N'BIA_02    ', N'Application sent to abc@utm.my', CAST(0x1D3C0B00 AS Date), 1, 2)
INSERT [dbo].[APP_STATUS_DETAILS] ([App_Code], [Status], [Remark], [Date], [Active], [ID]) VALUES (5, N'BIA_01', N'Application received', CAST(0x1E3C0B00 AS Date), 0, 3)
INSERT [dbo].[APP_STATUS_DETAILS] ([App_Code], [Status], [Remark], [Date], [Active], [ID]) VALUES (5, N'BIA_02', N'Application sent to xxx', CAST(0x1E3C0B00 AS Date), 1, 4)
SET IDENTITY_INSERT [dbo].[APP_STATUS_DETAILS] OFF
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADDRESS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ADDRESS](
	[Matrix_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Address1] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Address2] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Postcode] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[City] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[State] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Country] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Address_Type] [smallint] NOT NULL,
	[Tel_No] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Matrix_No] ASC,
	[Address_Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ADDRESS] ([Matrix_No], [Address1], [Address2], [Postcode], [City], [State], [Country], [Address_Type], [Tel_No]) VALUES (N'A14CS0047 ', N'228, JALAN NILAM 9', N'TAMAN NILAM', N'82000     ', N'PONTIAN', N'JOHOR', N'MALAYSIA  ', 1, N'07-6871234')
INSERT [dbo].[ADDRESS] ([Matrix_No], [Address1], [Address2], [Postcode], [City], [State], [Country], [Address_Type], [Tel_No]) VALUES (N'A14CS0047 ', N'1-68, MA1', N'KOLEJ TUN DR ISMAIL', N'81310     ', N'UTM, SKUDAI', N'JOHOR', N'MALAYSIA  ', 4, N'07-6871234')
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACCOUNT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACCOUNT](
	[Account_No] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Matrix_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Session] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Debt_Status] [smallint] NOT NULL,
	[Arrears] [float] NULL,
 CONSTRAINT [PK_ACCOUNT_1] PRIMARY KEY CLUSTERED 
(
	[Session] ASC,
	[Account_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ACCOUNT] ([Account_No], [Matrix_No], [Session], [Debt_Status], [Arrears]) VALUES (N'12330100910527', N'A14CS0047 ', N'201520162 ', 0, 3000)
INSERT [dbo].[ACCOUNT] ([Account_No], [Matrix_No], [Session], [Debt_Status], [Arrears]) VALUES (N'12330100910527', N'A14CS0047 ', N'201620171 ', 1, 3000)
/****** Object:  Table [dbo].[SUPERVISE]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SUPERVISE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SUPERVISE](
	[Matrix_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Staff_No] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Semester] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_SUPERVISE] PRIMARY KEY CLUSTERED 
(
	[Matrix_No] ASC,
	[Staff_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[SUPERVISE] ([Matrix_No], [Staff_No], [Semester]) VALUES (N'A14CS0047 ', N'7026      ', N'201620171 ')
INSERT [dbo].[SUPERVISE] ([Matrix_No], [Staff_No], [Semester]) VALUES (N'A14CS0047 ', N'7777      ', N'201520162 ')
INSERT [dbo].[SUPERVISE] ([Matrix_No], [Staff_No], [Semester]) VALUES (N'A14cs0128 ', N'7026      ', N'201620171 ')
/****** Object:  View [dbo].[vw_PNF]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_PNF]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_PNF]
AS
SELECT        dbo.MARK_PNF.master_qualification, dbo.MARK_PNF.alumni, dbo.MARK_PNF.special_company, dbo.MARK_PNF.best_student_SPS, dbo.MARK_PNF.best_student_faculty, dbo.APPLICATION.App_No, 
                         dbo.MARK_COCURRICULAR_ACTIVITIES.president, dbo.MARK_COCURRICULAR_ACTIVITIES.president_level, dbo.MARK_COCURRICULAR_ACTIVITIES.vice_president, 
                         dbo.MARK_COCURRICULAR_ACTIVITIES.vice_president_level, dbo.MARK_COCURRICULAR_ACTIVITIES.bursar, dbo.MARK_COCURRICULAR_ACTIVITIES.bursar_level, 
                         dbo.MARK_COCURRICULAR_ACTIVITIES.secretary, dbo.MARK_COCURRICULAR_ACTIVITIES.secretary_level, dbo.MARK_COCURRICULAR_ACTIVITIES.committee, 
                         dbo.MARK_COCURRICULAR_ACTIVITIES.committee_level, dbo.MARK_RESEARCH_AWARD.best_paper, dbo.MARK_RESEARCH_AWARD.best_speaker, dbo.MARK_RESEARCH_AWARD.research, 
                         dbo.MARK_RESEARCH_AWARD.others
FROM            dbo.MARK_PNF INNER JOIN
                         dbo.APPLICATION ON dbo.MARK_PNF.id = dbo.APPLICATION.App_No INNER JOIN
                         dbo.MARK_COCURRICULAR_ACTIVITIES ON dbo.APPLICATION.App_No = dbo.MARK_COCURRICULAR_ACTIVITIES.id INNER JOIN
                         dbo.MARK_RESEARCH_AWARD ON dbo.APPLICATION.App_No = dbo.MARK_RESEARCH_AWARD.id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PNF', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MARK_PNF"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "APPLICATION"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 136
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MARK_COCURRICULAR_ACTIVITIES"
            Begin Extent = 
               Top = 6
               Left = 491
               Bottom = 136
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "MARK_RESEARCH_AWARD"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PNF'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PNF', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PNF'
GO
/****** Object:  View [dbo].[vw_Application]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Application]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Application]
AS
SELECT        TOP (100) PERCENT dbo.CODE_FACULTY.Faculty_Initial AS Faculty, dbo.STUDENT.Name AS Stu_Name, dbo.STUDENT.Matrix_No, dbo.APPLICATION.App_Date, dbo.APPLICATION.Session, 
                         dbo.CODE_PROGRAM.Course_Name AS Program, dbo.CODE_NATIONALITY.Nationality_BI AS Nationality, dbo.CODE_SCHOLARSHIP.Name AS Type, dbo.CODE_APP_STATUS.Description AS App_Status, 
                         dbo.APPLICATION.Mark, dbo.CODE_FACULTY.Code AS Fac_Code, dbo.CODE_SCHOLARSHIP.Code AS Bia_Code, dbo.CODE_APP_STATUS.Code AS Status_Code, dbo.APP_STATUS_DETAILS.Active, 
                         dbo.APPLICATION.App_No, dbo.CODE_SCHOLARSHIP.Short_Name
FROM            dbo.STUDENT INNER JOIN
                         dbo.CODE_FACULTY ON dbo.STUDENT.Faculty = dbo.CODE_FACULTY.Code INNER JOIN
                         dbo.APPLICATION INNER JOIN
                         dbo.CODE_SCHOLARSHIP ON dbo.APPLICATION.Type = dbo.CODE_SCHOLARSHIP.Code ON dbo.STUDENT.Matrix_No = dbo.APPLICATION.Matrix_No INNER JOIN
                         dbo.CODE_PROGRAM ON dbo.STUDENT.Program = dbo.CODE_PROGRAM.Code INNER JOIN
                         dbo.CODE_NATIONALITY ON dbo.STUDENT.Nationality = dbo.CODE_NATIONALITY.Code INNER JOIN
                         dbo.APP_STATUS_DETAILS ON dbo.APPLICATION.App_No = dbo.APP_STATUS_DETAILS.App_Code INNER JOIN
                         dbo.CODE_APP_STATUS ON dbo.APP_STATUS_DETAILS.Status = dbo.CODE_APP_STATUS.Code
WHERE        (dbo.APP_STATUS_DETAILS.Active = ''1'')
ORDER BY App_Status DESC
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Application', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[21] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "STUDENT"
            Begin Extent = 
               Top = 80
               Left = 416
               Bottom = 210
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_FACULTY"
            Begin Extent = 
               Top = 162
               Left = 673
               Bottom = 275
               Right = 854
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "APPLICATION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_SCHOLARSHIP"
            Begin Extent = 
               Top = 162
               Left = 318
               Bottom = 292
               Right = 488
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "CODE_PROGRAM"
            Begin Extent = 
               Top = 194
               Left = 569
               Bottom = 324
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CODE_NATIONALITY"
            Begin Extent = 
               Top = 178
               Left = 33
               Bottom = 274
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "APP_STATUS_DETAILS"
            Begin Extent = 
               Top = 12
               Left = 879
               Bottom = 142
               Right = 1049
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Application'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Application', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'          End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CODE_APP_STATUS"
            Begin Extent = 
               Top = 58
               Left = 228
               Bottom = 154
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1830
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1590
         Table = 2835
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Application'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Application', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Application'
GO
/****** Object:  Table [dbo].[PUBLICATION]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUBLICATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PUBLICATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[title] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[authors] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[type_authorship] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[index] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[impact_factor] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[status_paper] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[affiliation_UTM] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[matrix_no] [nchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_PUBLICATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PUBLICATION]') AND name = N'IX_PUBLICATION')
CREATE NONCLUSTERED INDEX [IX_PUBLICATION] ON [dbo].[PUBLICATION] 
(
	[matrix_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PUBLICATION]') AND name = N'IX_PUBLICATION_1')
CREATE NONCLUSTERED INDEX [IX_PUBLICATION_1] ON [dbo].[PUBLICATION] 
(
	[index] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PUBLICATION]') AND name = N'IX_PUBLICATION_2')
CREATE NONCLUSTERED INDEX [IX_PUBLICATION_2] ON [dbo].[PUBLICATION] 
(
	[status_paper] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PUBLICATION]') AND name = N'IX_PUBLICATION_3')
CREATE NONCLUSTERED INDEX [IX_PUBLICATION_3] ON [dbo].[PUBLICATION] 
(
	[type_authorship] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PUBLICATION]') AND name = N'IX_PUBLICATION_4')
CREATE NONCLUSTERED INDEX [IX_PUBLICATION_4] ON [dbo].[PUBLICATION] 
(
	[affiliation_UTM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[PUBLICATION] ON
INSERT [dbo].[PUBLICATION] ([id], [type], [title], [authors], [type_authorship], [index], [impact_factor], [status_paper], [affiliation_UTM], [matrix_no]) VALUES (8, N'Conference', N'FIRST DOCUMENTATION OF TETRODOTOXIN IN SPOTTED-GREEN PUFFERFISH, TETRAODONNIGROVIRIDIS COLLECTED FROM SARAWAK WATERS', N'MONALIZA, M.D & SAMSUR, M.', N'0         ', N'0         ', NULL, N'1         ', N'0         ', N'A14cs0128 ')
INSERT [dbo].[PUBLICATION] ([id], [type], [title], [authors], [type_authorship], [index], [impact_factor], [status_paper], [affiliation_UTM], [matrix_no]) VALUES (11, N'Journal', N'TOXICITY AND TOXIN PROPERTIES STUDY OF PUFFERFISH COLLECTED FROM SABAH WATERS', N'Monaliza, M.D & Samsur, M', N'0         ', N'0         ', NULL, N'1         ', N'0         ', N'a14cs0128 ')
INSERT [dbo].[PUBLICATION] ([id], [type], [title], [authors], [type_authorship], [index], [impact_factor], [status_paper], [affiliation_UTM], [matrix_no]) VALUES (13, N'Conference', N'ASSESSING THE EFFICIENCY OF SINGLE OUTRIGGERED FRAME SYSTEM IN TALL BUILDINGS LATERALLY LOADED', N'B. MARABI A.K. MARSONO, M. VAFAEI AND A.S. AUWALU', N'1         ', N'1         ', NULL, N'1         ', N'1         ', N'A14CS0047 ')
SET IDENTITY_INSERT [dbo].[PUBLICATION] OFF
/****** Object:  View [dbo].[vw_StuInfo]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_StuInfo]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_StuInfo]
AS
SELECT        dbo.STUDENT.Name, dbo.CODE_GENDER.Gender, dbo.CODE_RELIGION.Religion, dbo.CODE_PROGRAM.Course_Name AS Program, dbo.CODE_FACULTY.Faculty_Initial AS Faculty, 
                         dbo.CODE_NATIONALITY.Nationality_BI AS Nationality, CODE_COUNTRY_1.Country_Name AS Country, dbo.CODE_COUNTRY.Country_Name AS Curr_Country, dbo.STUDENT.Matrix_No, 
                         dbo.STUDENT.State_Birth, dbo.CODE_RACE.Race, dbo.STUDENT.Reg_Date, dbo.STUDENT.DOB, dbo.CODE_FACULTY.Faculty_Fullname, dbo.STUDENT.IC_Passport, dbo.STUDENT.Contact, 
                         dbo.STUDENT.Email
FROM            dbo.STUDENT INNER JOIN
                         dbo.CODE_GENDER ON dbo.STUDENT.Gender = dbo.CODE_GENDER.Code INNER JOIN
                         dbo.CODE_RELIGION ON dbo.STUDENT.Religion = dbo.CODE_RELIGION.Code INNER JOIN
                         dbo.CODE_RACE ON dbo.STUDENT.Race = dbo.CODE_RACE.Code INNER JOIN
                         dbo.CODE_PROGRAM ON dbo.STUDENT.Program = dbo.CODE_PROGRAM.Code INNER JOIN
                         dbo.CODE_FACULTY ON dbo.STUDENT.Faculty = dbo.CODE_FACULTY.Code INNER JOIN
                         dbo.CODE_NATIONALITY ON dbo.STUDENT.Nationality = dbo.CODE_NATIONALITY.Code INNER JOIN
                         dbo.CODE_COUNTRY ON dbo.STUDENT.Curr_Coutnry = dbo.CODE_COUNTRY.Code INNER JOIN
                         dbo.CODE_COUNTRY AS CODE_COUNTRY_1 ON dbo.STUDENT.Country = CODE_COUNTRY_1.Code
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_StuInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[27] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "STUDENT"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 369
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CODE_GENDER"
            Begin Extent = 
               Top = 18
               Left = 699
               Bottom = 114
               Right = 869
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_RELIGION"
            Begin Extent = 
               Top = 124
               Left = 437
               Bottom = 220
               Right = 607
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_RACE"
            Begin Extent = 
               Top = 149
               Left = 705
               Bottom = 245
               Right = 875
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_PROGRAM"
            Begin Extent = 
               Top = 0
               Left = 355
               Bottom = 130
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CODE_FACULTY"
            Begin Extent = 
               Top = 18
               Left = 558
               Bottom = 131
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_NATIONALITY"
            Begin Extent = 
               Top = 248
               Left = 516
               Bottom = 344
               Right = 686
            En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_StuInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_StuInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_COUNTRY"
            Begin Extent = 
               Top = 96
               Left = 587
               Bottom = 192
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_COUNTRY_1"
            Begin Extent = 
               Top = 92
               Left = 592
               Bottom = 188
               Right = 762
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2595
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_StuInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_StuInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_StuInfo'
GO
/****** Object:  View [dbo].[vw_Status]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Status]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Status]
AS
SELECT        dbo.APPLICATION.Matrix_No, dbo.CODE_APP_STATUS.Description AS App_Status, dbo.APP_STATUS_DETAILS.Date, dbo.APP_STATUS_DETAILS.Active, dbo.APPLICATION.Session, dbo.APP_STATUS_DETAILS.ID, 
                         dbo.APP_STATUS_DETAILS.Remark
FROM            dbo.APP_STATUS_DETAILS INNER JOIN
                         dbo.CODE_APP_STATUS ON dbo.APP_STATUS_DETAILS.Status = dbo.CODE_APP_STATUS.Code INNER JOIN
                         dbo.APPLICATION ON dbo.APP_STATUS_DETAILS.App_Code = dbo.APPLICATION.App_No
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Status', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CODE_APP_STATUS"
            Begin Extent = 
               Top = 128
               Left = 310
               Bottom = 224
               Right = 480
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "APPLICATION"
            Begin Extent = 
               Top = 20
               Left = 785
               Bottom = 150
               Right = 965
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "APP_STATUS_DETAILS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Status'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Status', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Status'
GO
/****** Object:  View [dbo].[vw_zamalah]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_zamalah]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_zamalah]
AS
SELECT        dbo.APPLICATION.App_No, dbo.MARK_ZAMALAH.RU, dbo.MARK_ZAMALAH.chancellor, dbo.MARK_ZAMALAH.attachment, dbo.MARK_ZAMALAH.pro_chancellor, dbo.MARK_ZAMALAH.alumni, 
                         dbo.MARK_ZAMALAH.special_company, dbo.MARK_ZAMALAH.dean
FROM            dbo.APPLICATION INNER JOIN
                         dbo.MARK_ZAMALAH ON dbo.APPLICATION.App_No = dbo.MARK_ZAMALAH.id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_zamalah', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "APPLICATION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MARK_ZAMALAH"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 136
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_zamalah'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_zamalah', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_zamalah'
GO
/****** Object:  View [dbo].[vw_Supervisor]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Supervisor]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Supervisor]
AS
SELECT        dbo.STUDENT.Name, dbo.STAFF.Name AS SV_Name, dbo.STAFF.Email, dbo.SUPERVISE.Semester, dbo.SUPERVISE.Matrix_No, dbo.SUPERVISE.Staff_No, dbo.CODE_POSITION.Position, dbo.STAFF.Contact, 
                         dbo.STAFF.PHD_Graduate_Date, dbo.CODE_POSITION.Code, dbo.CODE_FACULTY.Faculty_Initial AS faculty
FROM            dbo.STAFF INNER JOIN
                         dbo.SUPERVISE ON dbo.STAFF.Staff_No = dbo.SUPERVISE.Staff_No INNER JOIN
                         dbo.STUDENT ON dbo.SUPERVISE.Matrix_No = dbo.STUDENT.Matrix_No INNER JOIN
                         dbo.CODE_POSITION ON dbo.STAFF.Position = dbo.CODE_POSITION.Code INNER JOIN
                         dbo.CODE_FACULTY ON dbo.STAFF.Faculty = dbo.CODE_FACULTY.Code
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Supervisor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "STAFF"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUPERVISE"
            Begin Extent = 
               Top = 52
               Left = 574
               Bottom = 165
               Right = 744
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "STUDENT"
            Begin Extent = 
               Top = 0
               Left = 335
               Bottom = 130
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_POSITION"
            Begin Extent = 
               Top = 170
               Left = 288
               Bottom = 266
               Right = 458
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_FACULTY"
            Begin Extent = 
               Top = 223
               Left = 43
               Bottom = 336
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Supervisor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Supervisor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Supervisor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Supervisor', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Supervisor'
GO
/****** Object:  View [dbo].[vw_scholarship recommendation]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_scholarship recommendation]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_scholarship recommendation]
AS
SELECT        TOP (100) PERCENT dbo.STUDENT.Matrix_No, dbo.STUDENT.Name, dbo.CODE_SCHOLARSHIP.Short_Name, dbo.APPLICATION.App_Date, dbo.APPLICATION.Mark, dbo.CODE_APP_STATUS.Description, 
                         dbo.SUPERVISE.Staff_No, dbo.APPLICATION.App_No, dbo.APPLICATION.Session, dbo.SUPERVISE.Semester, dbo.APP_STATUS_DETAILS.Status, dbo.APP_STATUS_DETAILS.Active, 
                         dbo.STAFF.Name AS supervisor
FROM            dbo.APPLICATION INNER JOIN
                         dbo.STUDENT ON dbo.APPLICATION.Matrix_No = dbo.STUDENT.Matrix_No INNER JOIN
                         dbo.SUPERVISE ON dbo.STUDENT.Matrix_No = dbo.SUPERVISE.Matrix_No AND dbo.APPLICATION.Session = dbo.SUPERVISE.Semester INNER JOIN
                         dbo.STAFF ON dbo.SUPERVISE.Staff_No = dbo.STAFF.Staff_No INNER JOIN
                         dbo.CODE_SCHOLARSHIP ON dbo.CODE_SCHOLARSHIP.Code = dbo.APPLICATION.Type INNER JOIN
                         dbo.APP_STATUS_DETAILS ON dbo.APPLICATION.App_No = dbo.APP_STATUS_DETAILS.App_Code INNER JOIN
                         dbo.CODE_APP_STATUS ON dbo.CODE_APP_STATUS.Code = dbo.APP_STATUS_DETAILS.Status
WHERE        (dbo.APP_STATUS_DETAILS.Active = ''1'')
ORDER BY dbo.CODE_APP_STATUS.Description DESC
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_scholarship recommendation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[33] 2[25] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = -205
      End
      Begin Tables = 
         Begin Table = "APPLICATION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "STUDENT"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 136
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUPERVISE"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 119
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "STAFF"
            Begin Extent = 
               Top = 6
               Left = 675
               Bottom = 136
               Right = 845
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_SCHOLARSHIP"
            Begin Extent = 
               Top = 6
               Left = 883
               Bottom = 136
               Right = 1053
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "APP_STATUS_DETAILS"
            Begin Extent = 
               Top = 120
               Left = 467
               Bottom = 250
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_APP_STATUS"
            Begin Extent = 
               Top = 140
               Left = 920
               Bottom = 236
               Right = 1090
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_scholarship recommendation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_scholarship recommendation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_scholarship recommendation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_scholarship recommendation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_scholarship recommendation'
GO
/****** Object:  Table [dbo].[MARK_PUBLICATION]    Script Date: 12/07/2016 06:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MARK_PUBLICATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_no] [int] NOT NULL,
	[publication_id] [int] NOT NULL,
	[mark] [decimal](2, 1) NOT NULL,
	[myra2] [decimal](6, 5) NOT NULL,
 CONSTRAINT [PK_MARK_PUBLICATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[MARK_PUBLICATION] ON
INSERT [dbo].[MARK_PUBLICATION] ([id], [app_no], [publication_id], [mark], [myra2]) VALUES (1, 4, 13, CAST(1.0 AS Decimal(2, 1)), CAST(0.00310 AS Decimal(6, 5)))
INSERT [dbo].[MARK_PUBLICATION] ([id], [app_no], [publication_id], [mark], [myra2]) VALUES (2, 5, 11, CAST(1.0 AS Decimal(2, 1)), CAST(0.30000 AS Decimal(6, 5)))
INSERT [dbo].[MARK_PUBLICATION] ([id], [app_no], [publication_id], [mark], [myra2]) VALUES (3, 5, 8, CAST(1.0 AS Decimal(2, 1)), CAST(0.50000 AS Decimal(6, 5)))
SET IDENTITY_INSERT [dbo].[MARK_PUBLICATION] OFF
/****** Object:  View [dbo].[vw_Balance]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Balance]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_Balance]
AS
SELECT        dbo.ACCOUNT.Account_No, dbo.FEE.Subject_Name, dbo.FEE.Debit, dbo.FEE.Credit, dbo.FEE.Status, dbo.ACCOUNT.Session, dbo.ACCOUNT.Debt_Status, dbo.ACCOUNT.Matrix_No, dbo.ACCOUNT.Arrears, 
                         dbo.FEE.Tran_Date
FROM            dbo.ACCOUNT INNER JOIN
                         dbo.FEE ON dbo.ACCOUNT.Account_No = dbo.FEE.Account_No AND dbo.ACCOUNT.Session = dbo.FEE.Session INNER JOIN
                         dbo.STUDENT ON dbo.ACCOUNT.Matrix_No = dbo.STUDENT.Matrix_No
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Balance', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = -71
      End
      Begin Tables = 
         Begin Table = "ACCOUNT"
            Begin Extent = 
               Top = 34
               Left = 267
               Bottom = 147
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FEE"
            Begin Extent = 
               Top = 21
               Left = 514
               Bottom = 151
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "STUDENT"
            Begin Extent = 
               Top = 25
               Left = 39
               Bottom = 155
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Balance'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_Balance', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Balance'
GO
/****** Object:  View [dbo].[vw_List_Publication]    Script Date: 12/07/2016 06:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_List_Publication]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_List_Publication]
AS
SELECT        dbo.MARK_PUBLICATION.id, dbo.MARK_PUBLICATION.app_no, dbo.MARK_PUBLICATION.publication_id, dbo.MARK_PUBLICATION.mark, dbo.MARK_PUBLICATION.myra2, dbo.PUBLICATION.type, 
                         dbo.PUBLICATION.title, dbo.PUBLICATION.authors, dbo.PUBLICATION.matrix_no, dbo.CODE_AFFILIATION_UTM.description AS affiliation_UTM, dbo.CODE_STATUS_PAPER.description AS status_paper, 
                         dbo.PUBLICATION.impact_factor, dbo.CODE_INDEX.description AS [index], dbo.CODE_TYPE_AUTHORSHIP.description AS type_authorship
FROM            dbo.MARK_PUBLICATION INNER JOIN
                         dbo.PUBLICATION ON dbo.MARK_PUBLICATION.publication_id = dbo.PUBLICATION.id INNER JOIN
                         dbo.CODE_AFFILIATION_UTM ON dbo.PUBLICATION.affiliation_UTM = dbo.CODE_AFFILIATION_UTM.code INNER JOIN
                         dbo.CODE_INDEX ON dbo.PUBLICATION.[index] = dbo.CODE_INDEX.code INNER JOIN
                         dbo.CODE_STATUS_PAPER ON dbo.PUBLICATION.status_paper = dbo.CODE_STATUS_PAPER.code INNER JOIN
                         dbo.CODE_TYPE_AUTHORSHIP ON dbo.PUBLICATION.type_authorship = dbo.CODE_TYPE_AUTHORSHIP.code
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_List_Publication', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[23] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MARK_PUBLICATION"
            Begin Extent = 
               Top = 40
               Left = 517
               Bottom = 170
               Right = 687
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "PUBLICATION"
            Begin Extent = 
               Top = 52
               Left = 281
               Bottom = 182
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CODE_AFFILIATION_UTM"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_INDEX"
            Begin Extent = 
               Top = 6
               Left = 725
               Bottom = 102
               Right = 895
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_STATUS_PAPER"
            Begin Extent = 
               Top = 102
               Left = 38
               Bottom = 198
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CODE_TYPE_AUTHORSHIP"
            Begin Extent = 
               Top = 102
               Left = 725
               Bottom = 198
               Right = 895
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnW' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_List_Publication'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_List_Publication', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idths = 11
         Column = 1440
         Alias = 2565
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_List_Publication'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_List_Publication', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_List_Publication'
GO
/****** Object:  Default [DF_ACCOUNT_Debt_Status]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ACCOUNT_Debt_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACCOUNT]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ACCOUNT_Debt_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ACCOUNT] ADD  CONSTRAINT [DF_ACCOUNT_Debt_Status]  DEFAULT ((0)) FOR [Debt_Status]
END


End
GO
/****** Object:  Default [DF_ACCOUNT_Arrears]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ACCOUNT_Arrears]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACCOUNT]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ACCOUNT_Arrears]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ACCOUNT] ADD  CONSTRAINT [DF_ACCOUNT_Arrears]  DEFAULT ((0)) FOR [Arrears]
END


End
GO
/****** Object:  Default [DF_APP_STATUS_DETAILS_Active]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_APP_STATUS_DETAILS_Active]') AND parent_object_id = OBJECT_ID(N'[dbo].[APP_STATUS_DETAILS]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_APP_STATUS_DETAILS_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[APP_STATUS_DETAILS] ADD  CONSTRAINT [DF_APP_STATUS_DETAILS_Active]  DEFAULT ((1)) FOR [Active]
END


End
GO
/****** Object:  Default [DF_APPLICATION_Faculty_Approval]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_APPLICATION_Faculty_Approval]') AND parent_object_id = OBJECT_ID(N'[dbo].[APPLICATION]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_APPLICATION_Faculty_Approval]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[APPLICATION] ADD  CONSTRAINT [DF_APPLICATION_Faculty_Approval]  DEFAULT ((0)) FOR [Faculty_Approval]
END


End
GO
/****** Object:  Default [DF_CODE_SCHOLARSHIP_Age_Limit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CODE_SCHOLARSHIP_Age_Limit]') AND parent_object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CODE_SCHOLARSHIP_Age_Limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CODE_SCHOLARSHIP] ADD  CONSTRAINT [DF_CODE_SCHOLARSHIP_Age_Limit]  DEFAULT ((0)) FOR [Age_Limit]
END


End
GO
/****** Object:  Default [DF_CODE_SCHOLARSHIP_Sem_Limit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CODE_SCHOLARSHIP_Sem_Limit]') AND parent_object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CODE_SCHOLARSHIP_Sem_Limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CODE_SCHOLARSHIP] ADD  CONSTRAINT [DF_CODE_SCHOLARSHIP_Sem_Limit]  DEFAULT ((0)) FOR [Sem_Limit]
END


End
GO
/****** Object:  Default [DF_CODE_SCHOLARSHIP_Reg_Limit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CODE_SCHOLARSHIP_Reg_Limit]') AND parent_object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CODE_SCHOLARSHIP_Reg_Limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CODE_SCHOLARSHIP] ADD  CONSTRAINT [DF_CODE_SCHOLARSHIP_Reg_Limit]  DEFAULT ((0)) FOR [Reg_Limit]
END


End
GO
/****** Object:  Default [DF_CODE_SCHOLARSHIP_Job_Limit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CODE_SCHOLARSHIP_Job_Limit]') AND parent_object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CODE_SCHOLARSHIP_Job_Limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CODE_SCHOLARSHIP] ADD  CONSTRAINT [DF_CODE_SCHOLARSHIP_Job_Limit]  DEFAULT ((0)) FOR [Job_Limit]
END


End
GO
/****** Object:  Default [DF_CODE_SCHOLARSHIP_CPA_Limit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CODE_SCHOLARSHIP_CPA_Limit]') AND parent_object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CODE_SCHOLARSHIP_CPA_Limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CODE_SCHOLARSHIP] ADD  CONSTRAINT [DF_CODE_SCHOLARSHIP_CPA_Limit]  DEFAULT ((0)) FOR [CPA_Limit]
END


End
GO
/****** Object:  Default [DF_CODE_SCHOLARSHIP_Nationlity_Limit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CODE_SCHOLARSHIP_Nationlity_Limit]') AND parent_object_id = OBJECT_ID(N'[dbo].[CODE_SCHOLARSHIP]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CODE_SCHOLARSHIP_Nationlity_Limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CODE_SCHOLARSHIP] ADD  CONSTRAINT [DF_CODE_SCHOLARSHIP_Nationlity_Limit]  DEFAULT ((0)) FOR [Nationality_Limit]
END


End
GO
/****** Object:  Default [DF_FEE_Credit]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FEE_Credit]') AND parent_object_id = OBJECT_ID(N'[dbo].[FEE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FEE_Credit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FEE] ADD  CONSTRAINT [DF_FEE_Credit]  DEFAULT ((0.00)) FOR [Credit]
END


End
GO
/****** Object:  Default [DF_FEE_Status]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FEE_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[FEE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FEE_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FEE] ADD  CONSTRAINT [DF_FEE_Status]  DEFAULT (N'Unpaid') FOR [Status]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_president]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_president]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_president]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_president]  DEFAULT ((0)) FOR [president]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_president_level]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_president_level]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_president_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_president_level]  DEFAULT ((0)) FOR [president_level]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_vice_president]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_vice_president]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_vice_president]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_vice_president]  DEFAULT ((0)) FOR [vice_president]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_vice_president_level]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_vice_president_level]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_vice_president_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_vice_president_level]  DEFAULT ((0)) FOR [vice_president_level]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_bursar]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_bursar]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_bursar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_bursar]  DEFAULT ((0)) FOR [bursar]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_bursar_level]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_bursar_level]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_bursar_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_bursar_level]  DEFAULT ((0)) FOR [bursar_level]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_secretary]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_secretary]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_secretary]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_secretary]  DEFAULT ((0)) FOR [secretary]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_secretary_level]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_secretary_level]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_secretary_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_secretary_level]  DEFAULT ((0)) FOR [secretary_level]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_committee]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_committee]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_committee]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_committee]  DEFAULT ((0)) FOR [committee]
END


End
GO
/****** Object:  Default [DF_MARK_COCURRICULAR_ACTIVITIES_committee_level]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_COCURRICULAR_ACTIVITIES_committee_level]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_COCURRICULAR_ACTIVITIES_committee_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] ADD  CONSTRAINT [DF_MARK_COCURRICULAR_ACTIVITIES_committee_level]  DEFAULT ((0)) FOR [committee_level]
END


End
GO
/****** Object:  Default [DF_MARK_PNF_master_qualification]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PNF_master_qualification]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PNF_master_qualification]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PNF] ADD  CONSTRAINT [DF_MARK_PNF_master_qualification]  DEFAULT ((0)) FOR [master_qualification]
END


End
GO
/****** Object:  Default [DF_MARK_PNF_alumni]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PNF_alumni]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PNF_alumni]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PNF] ADD  CONSTRAINT [DF_MARK_PNF_alumni]  DEFAULT ((0)) FOR [alumni]
END


End
GO
/****** Object:  Default [DF_MARK_PNF_special_company]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PNF_special_company]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PNF_special_company]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PNF] ADD  CONSTRAINT [DF_MARK_PNF_special_company]  DEFAULT ((0)) FOR [special_company]
END


End
GO
/****** Object:  Default [DF_MARK_PNF_best_student_SPS]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PNF_best_student_SPS]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PNF_best_student_SPS]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PNF] ADD  CONSTRAINT [DF_MARK_PNF_best_student_SPS]  DEFAULT ((0)) FOR [best_student_SPS]
END


End
GO
/****** Object:  Default [DF_MARK_PNF_best_student_faculty]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PNF_best_student_faculty]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PNF_best_student_faculty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PNF] ADD  CONSTRAINT [DF_MARK_PNF_best_student_faculty]  DEFAULT ((0)) FOR [best_student_faculty]
END


End
GO
/****** Object:  Default [DF_MARK_PUBLICATION_mark]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PUBLICATION_mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PUBLICATION_mark]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PUBLICATION] ADD  CONSTRAINT [DF_MARK_PUBLICATION_mark]  DEFAULT ((0)) FOR [mark]
END


End
GO
/****** Object:  Default [DF_MARK_PUBLICATION_myra2]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_PUBLICATION_myra2]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_PUBLICATION_myra2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_PUBLICATION] ADD  CONSTRAINT [DF_MARK_PUBLICATION_myra2]  DEFAULT ((0)) FOR [myra2]
END


End
GO
/****** Object:  Default [DF_MARK_RESEARCH_AWARD_best_paper]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_RESEARCH_AWARD_best_paper]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_RESEARCH_AWARD_best_paper]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_RESEARCH_AWARD] ADD  CONSTRAINT [DF_MARK_RESEARCH_AWARD_best_paper]  DEFAULT ((0)) FOR [best_paper]
END


End
GO
/****** Object:  Default [DF_MARK_RESEARCH_AWARD_best_speaker]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_RESEARCH_AWARD_best_speaker]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_RESEARCH_AWARD_best_speaker]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_RESEARCH_AWARD] ADD  CONSTRAINT [DF_MARK_RESEARCH_AWARD_best_speaker]  DEFAULT ((0)) FOR [best_speaker]
END


End
GO
/****** Object:  Default [DF_MARK_RESEARCH_AWARD_research]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_RESEARCH_AWARD_research]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_RESEARCH_AWARD_research]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_RESEARCH_AWARD] ADD  CONSTRAINT [DF_MARK_RESEARCH_AWARD_research]  DEFAULT ((0)) FOR [research]
END


End
GO
/****** Object:  Default [DF_MARK_RESEARCH_AWARD_others]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_RESEARCH_AWARD_others]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_RESEARCH_AWARD_others]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_RESEARCH_AWARD] ADD  CONSTRAINT [DF_MARK_RESEARCH_AWARD_others]  DEFAULT ((0)) FOR [others]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_RU]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_RU]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_RU]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_RU]  DEFAULT ((0)) FOR [RU]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_attachment]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_attachment]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_attachment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_attachment]  DEFAULT ((0)) FOR [attachment]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_chancellor]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_chancellor]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_chancellor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_chancellor]  DEFAULT ((0)) FOR [chancellor]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_pro_chancellor]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_pro_chancellor]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_pro_chancellor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_pro_chancellor]  DEFAULT ((0)) FOR [pro_chancellor]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_alumni]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_alumni]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_alumni]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_alumni]  DEFAULT ((0)) FOR [alumni]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_special_company]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_special_company]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_special_company]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_special_company]  DEFAULT ((0)) FOR [special_company]
END


End
GO
/****** Object:  Default [DF_MARK_ZAMALAH_dean]    Script Date: 12/07/2016 06:29:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MARK_ZAMALAH_dean]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MARK_ZAMALAH_dean]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MARK_ZAMALAH] ADD  CONSTRAINT [DF_MARK_ZAMALAH_dean]  DEFAULT ((0)) FOR [dean]
END


End
GO
/****** Object:  ForeignKey [FK_ACCOUNT_STUDENT]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ACCOUNT_STUDENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACCOUNT]'))
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNT_STUDENT] FOREIGN KEY([Matrix_No])
REFERENCES [dbo].[STUDENT] ([Matrix_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ACCOUNT_STUDENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACCOUNT]'))
ALTER TABLE [dbo].[ACCOUNT] CHECK CONSTRAINT [FK_ACCOUNT_STUDENT]
GO
/****** Object:  ForeignKey [FK_Address_Address_Type]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Address_Type]') AND parent_object_id = OBJECT_ID(N'[dbo].[ADDRESS]'))
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_Address_Address_Type] FOREIGN KEY([Address_Type])
REFERENCES [dbo].[CODE_ADDRESS] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Address_Type]') AND parent_object_id = OBJECT_ID(N'[dbo].[ADDRESS]'))
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_Address_Address_Type]
GO
/****** Object:  ForeignKey [FK_APP_STATUS_DETAILS_APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_APP_STATUS_DETAILS_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[APP_STATUS_DETAILS]'))
ALTER TABLE [dbo].[APP_STATUS_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_APP_STATUS_DETAILS_APPLICATION] FOREIGN KEY([App_Code])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_APP_STATUS_DETAILS_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[APP_STATUS_DETAILS]'))
ALTER TABLE [dbo].[APP_STATUS_DETAILS] CHECK CONSTRAINT [FK_APP_STATUS_DETAILS_APPLICATION]
GO
/****** Object:  ForeignKey [FK_APP_STATUS_DETAILS_CODE_APP_STATUS]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_APP_STATUS_DETAILS_CODE_APP_STATUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[APP_STATUS_DETAILS]'))
ALTER TABLE [dbo].[APP_STATUS_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_APP_STATUS_DETAILS_CODE_APP_STATUS] FOREIGN KEY([Status])
REFERENCES [dbo].[CODE_APP_STATUS] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_APP_STATUS_DETAILS_CODE_APP_STATUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[APP_STATUS_DETAILS]'))
ALTER TABLE [dbo].[APP_STATUS_DETAILS] CHECK CONSTRAINT [FK_APP_STATUS_DETAILS_CODE_APP_STATUS]
GO
/****** Object:  ForeignKey [FK_MARK_COCURRICULAR_ACTIVITIES_APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_COCURRICULAR_ACTIVITIES_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES]  WITH CHECK ADD  CONSTRAINT [FK_MARK_COCURRICULAR_ACTIVITIES_APPLICATION] FOREIGN KEY([id])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_COCURRICULAR_ACTIVITIES_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_COCURRICULAR_ACTIVITIES]'))
ALTER TABLE [dbo].[MARK_COCURRICULAR_ACTIVITIES] CHECK CONSTRAINT [FK_MARK_COCURRICULAR_ACTIVITIES_APPLICATION]
GO
/****** Object:  ForeignKey [FK_MARK_PNF_APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_PNF_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
ALTER TABLE [dbo].[MARK_PNF]  WITH CHECK ADD  CONSTRAINT [FK_MARK_PNF_APPLICATION] FOREIGN KEY([id])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_PNF_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PNF]'))
ALTER TABLE [dbo].[MARK_PNF] CHECK CONSTRAINT [FK_MARK_PNF_APPLICATION]
GO
/****** Object:  ForeignKey [FK_MARK_PUBLICATION_APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_PUBLICATION_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]'))
ALTER TABLE [dbo].[MARK_PUBLICATION]  WITH CHECK ADD  CONSTRAINT [FK_MARK_PUBLICATION_APPLICATION] FOREIGN KEY([app_no])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_PUBLICATION_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]'))
ALTER TABLE [dbo].[MARK_PUBLICATION] CHECK CONSTRAINT [FK_MARK_PUBLICATION_APPLICATION]
GO
/****** Object:  ForeignKey [FK_MARK_PUBLICATION_PUBLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_PUBLICATION_PUBLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]'))
ALTER TABLE [dbo].[MARK_PUBLICATION]  WITH CHECK ADD  CONSTRAINT [FK_MARK_PUBLICATION_PUBLICATION] FOREIGN KEY([publication_id])
REFERENCES [dbo].[PUBLICATION] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_PUBLICATION_PUBLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_PUBLICATION]'))
ALTER TABLE [dbo].[MARK_PUBLICATION] CHECK CONSTRAINT [FK_MARK_PUBLICATION_PUBLICATION]
GO
/****** Object:  ForeignKey [FK_MARK_RESEARCH_AWARD_APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_RESEARCH_AWARD_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]'))
ALTER TABLE [dbo].[MARK_RESEARCH_AWARD]  WITH CHECK ADD  CONSTRAINT [FK_MARK_RESEARCH_AWARD_APPLICATION] FOREIGN KEY([id])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_RESEARCH_AWARD_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_RESEARCH_AWARD]'))
ALTER TABLE [dbo].[MARK_RESEARCH_AWARD] CHECK CONSTRAINT [FK_MARK_RESEARCH_AWARD_APPLICATION]
GO
/****** Object:  ForeignKey [FK_MARK_ZAMALAH_APPLICATION]    Script Date: 12/07/2016 06:29:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_ZAMALAH_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
ALTER TABLE [dbo].[MARK_ZAMALAH]  WITH CHECK ADD  CONSTRAINT [FK_MARK_ZAMALAH_APPLICATION] FOREIGN KEY([id])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MARK_ZAMALAH_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[MARK_ZAMALAH]'))
ALTER TABLE [dbo].[MARK_ZAMALAH] CHECK CONSTRAINT [FK_MARK_ZAMALAH_APPLICATION]
GO
/****** Object:  ForeignKey [FK_PUBLICATION_STUDENT]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PUBLICATION_STUDENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PUBLICATION]'))
ALTER TABLE [dbo].[PUBLICATION]  WITH CHECK ADD  CONSTRAINT [FK_PUBLICATION_STUDENT] FOREIGN KEY([matrix_no])
REFERENCES [dbo].[STUDENT] ([Matrix_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PUBLICATION_STUDENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PUBLICATION]'))
ALTER TABLE [dbo].[PUBLICATION] CHECK CONSTRAINT [FK_PUBLICATION_STUDENT]
GO
/****** Object:  ForeignKey [FK_Student_Active_code]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Active_code]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Active_code] FOREIGN KEY([Active_Code])
REFERENCES [dbo].[CODE_ACTIVE] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Active_code]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Active_code]
GO
/****** Object:  ForeignKey [FK_STUDENT_CODE_COUNTRY]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STUDENT_CODE_COUNTRY]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_CODE_COUNTRY] FOREIGN KEY([Country])
REFERENCES [dbo].[CODE_COUNTRY] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STUDENT_CODE_COUNTRY]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_CODE_COUNTRY]
GO
/****** Object:  ForeignKey [FK_STUDENT_CODE_COUNTRY1]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STUDENT_CODE_COUNTRY1]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_CODE_COUNTRY1] FOREIGN KEY([Curr_Coutnry])
REFERENCES [dbo].[CODE_COUNTRY] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STUDENT_CODE_COUNTRY1]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_CODE_COUNTRY1]
GO
/****** Object:  ForeignKey [FK_STUDENT_CODE_MARRIAGE_STATUS]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STUDENT_CODE_MARRIAGE_STATUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_CODE_MARRIAGE_STATUS] FOREIGN KEY([Marriage_Status])
REFERENCES [dbo].[CODE_MARRIAGE_STATUS] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STUDENT_CODE_MARRIAGE_STATUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_CODE_MARRIAGE_STATUS]
GO
/****** Object:  ForeignKey [FK_Student_Faculty]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Faculty]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Faculty] FOREIGN KEY([Faculty])
REFERENCES [dbo].[CODE_FACULTY] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Faculty]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Faculty]
GO
/****** Object:  ForeignKey [FK_Student_Gender]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Gender] FOREIGN KEY([Gender])
REFERENCES [dbo].[CODE_GENDER] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Gender]
GO
/****** Object:  ForeignKey [FK_Student_Nationality]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Nationality]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Nationality] FOREIGN KEY([Nationality])
REFERENCES [dbo].[CODE_NATIONALITY] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Nationality]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Nationality]
GO
/****** Object:  ForeignKey [FK_Student_Program]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Program]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Program] FOREIGN KEY([Program])
REFERENCES [dbo].[CODE_PROGRAM] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Program]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Program]
GO
/****** Object:  ForeignKey [FK_Student_Race]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Race]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Race] FOREIGN KEY([Race])
REFERENCES [dbo].[CODE_RACE] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Race]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Race]
GO
/****** Object:  ForeignKey [FK_Student_Religion]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Religion]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_Student_Religion] FOREIGN KEY([Religion])
REFERENCES [dbo].[CODE_RELIGION] ([Code])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Student_Religion]') AND parent_object_id = OBJECT_ID(N'[dbo].[STUDENT]'))
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_Student_Religion]
GO
/****** Object:  ForeignKey [FK_SUPERVISE_STAFF]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISE_STAFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISE]'))
ALTER TABLE [dbo].[SUPERVISE]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISE_STAFF] FOREIGN KEY([Staff_No])
REFERENCES [dbo].[STAFF] ([Staff_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISE_STAFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISE]'))
ALTER TABLE [dbo].[SUPERVISE] CHECK CONSTRAINT [FK_SUPERVISE_STAFF]
GO
/****** Object:  ForeignKey [FK_SUPERVISE_STUDENT]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISE_STUDENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISE]'))
ALTER TABLE [dbo].[SUPERVISE]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISE_STUDENT] FOREIGN KEY([Matrix_No])
REFERENCES [dbo].[STUDENT] ([Matrix_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISE_STUDENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISE]'))
ALTER TABLE [dbo].[SUPERVISE] CHECK CONSTRAINT [FK_SUPERVISE_STUDENT]
GO
/****** Object:  ForeignKey [FK_SUPERVISOR_RECOMMENDATION_APPLICATION]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISOR_RECOMMENDATION_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISOR_RECOMMENDATION]'))
ALTER TABLE [dbo].[SUPERVISOR_RECOMMENDATION]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISOR_RECOMMENDATION_APPLICATION] FOREIGN KEY([id])
REFERENCES [dbo].[APPLICATION] ([App_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISOR_RECOMMENDATION_APPLICATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISOR_RECOMMENDATION]'))
ALTER TABLE [dbo].[SUPERVISOR_RECOMMENDATION] CHECK CONSTRAINT [FK_SUPERVISOR_RECOMMENDATION_APPLICATION]
GO
/****** Object:  ForeignKey [FK_SUPERVISOR_RECOMMENDATION_STAFF]    Script Date: 12/07/2016 06:29:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISOR_RECOMMENDATION_STAFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISOR_RECOMMENDATION]'))
ALTER TABLE [dbo].[SUPERVISOR_RECOMMENDATION]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISOR_RECOMMENDATION_STAFF] FOREIGN KEY([supervisor_id])
REFERENCES [dbo].[STAFF] ([Staff_No])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SUPERVISOR_RECOMMENDATION_STAFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SUPERVISOR_RECOMMENDATION]'))
ALTER TABLE [dbo].[SUPERVISOR_RECOMMENDATION] CHECK CONSTRAINT [FK_SUPERVISOR_RECOMMENDATION_STAFF]
GO
