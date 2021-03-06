USE [DigitalAvenue]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[Serial] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime2](7) NULL,
	[Message] [varchar](max) NULL,
	[Procedure] [varchar](max) NULL,
	[Line] [varchar](max) NULL,
	[Severity] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[Number] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_City]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_City](
	[CityCode] [int] NOT NULL,
	[RegionCode] [char](3) NOT NULL,
	[CityName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Master_City] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Country]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Country](
	[CountryCode] [char](3) NOT NULL,
	[CountryName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Master_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Product]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Product](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Master_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Region]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Region](
	[RegionCode] [char](3) NOT NULL,
	[CountryCode] [char](3) NOT NULL,
	[RegionName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Master_Region] PRIMARY KEY CLUSTERED 
(
	[RegionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](200) NULL,
	[CountryCode] [char](3) NULL,
	[RegionCode] [char](3) NULL,
	[CityCode] [int] NULL,
	[Date] [datetime2](7) NULL,
	[ProductID] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_Timestamp]  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Master_City]  WITH CHECK ADD  CONSTRAINT [FK_Master_City_Master_Region] FOREIGN KEY([RegionCode])
REFERENCES [dbo].[Master_Region] ([RegionCode])
GO
ALTER TABLE [dbo].[Master_City] CHECK CONSTRAINT [FK_Master_City_Master_Region]
GO
ALTER TABLE [dbo].[Master_Region]  WITH CHECK ADD  CONSTRAINT [FK_Master_Region_Master_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Master_Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Master_Region] CHECK CONSTRAINT [FK_Master_Region_Master_Country]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Master_City] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Master_City] ([CityCode])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Master_City]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Master_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Master_Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Master_Country]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Master_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Master_Product] ([ProductID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Master_Product]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Master_Region] FOREIGN KEY([RegionCode])
REFERENCES [dbo].[Master_Region] ([RegionCode])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Master_Region]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Sales] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([SaleID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Sales]
GO
/****** Object:  StoredProcedure [dbo].[spGetCities]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets all cities
-- =============================================
CREATE PROCEDURE [dbo].[spGetCities]
	@regionCode char(3)
AS
BEGIN	
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		SELECT * FROM dbo.[Master_City] WHERE [RegionCode]=@regionCode;
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spGetCountries]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets all countries
-- =============================================
CREATE PROCEDURE [dbo].[spGetCountries]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		SELECT * FROM dbo.[Master_Country];
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spGetProduct]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets particular product
-- =============================================
CREATE PROCEDURE [dbo].[spGetProduct]
	@productId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		SELECT * FROM dbo.[Master_Product] WHERE [ProductID]=@productId;
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spGetProducts]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets all products
-- =============================================
CREATE PROCEDURE [dbo].[spGetProducts]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		SELECT * FROM dbo.[Master_Product];
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spGetRegions]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets all regions
-- =============================================
CREATE PROCEDURE [dbo].[spGetRegions]
	@countryCode char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		SELECT * FROM dbo.[Master_Region] WHERE [CountryCode]=@countryCode;
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSale]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets particular Sale
-- =============================================
CREATE PROCEDURE [dbo].[spGetSale]
	@saleId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		SELECT * FROM dbo.[Sale] WHERE [SaleID]=@saleId;
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[spLogError]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Log Errors
-- =============================================
CREATE PROCEDURE [dbo].[spLogError]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO [ErrorLog]
	(
		[Message],
		[Line],
		[Severity],
		[Procedure],
		[State],
		[Number]
	)
	VALUES
	(
		ERROR_MESSAGE(),
		ERROR_LINE(),
		ERROR_SEVERITY(),
		ERROR_PROCEDURE(),
		ERROR_STATE(),
		ERROR_NUMBER()
	)
END
GO
/****** Object:  StoredProcedure [dbo].[spSaveSale]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Save Sale
-- =============================================
CREATE PROCEDURE [dbo].[spSaveSale]
	@saleId int = 0,
	@customerName varchar(200),
	@countryCode char(3),
	@regionCode char(3),
	@cityCode int,
	@date datetime2(7),
	@productId int,
	@price float,
	@quantity float,
	@total float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION;

	BEGIN TRY
		IF @saleId = 0
			BEGIN
				INSERT INTO [Sale]
					([CustomerName], [CountryCode], [RegionCode], [CityCode], [Date], [ProductID], [Price], [Quantity], [Total])
				VALUES
					(@customerName, @countryCode, @regionCode, @cityCode, @date, @productId, @price, @quantity, @total);

				SET @saleId = (SELECT SCOPE_IDENTITY());
			END
		ELSE
			BEGIN
				UPDATE [Sale]
					SET 
						[CustomerName]=@customerName,
						[CountryCode]=@countryCode,
						[RegionCode]=@regionCode,
						[CityCode]=@cityCode,
						[Date]=@date,
						[ProductID]=@productId,
						[Price]=@price,
						[Quantity]=@quantity,
						[Total]=@total
					WHERE
						[SaleID]=@saleId
			END

		SELECT * FROM [Sale] WHERE [SaleID]=@saleId;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0  
			ROLLBACK TRANSACTION;

		EXEC dbo.[spLogError];		
	END CATCH

	IF @@TRANCOUNT > 0  
		COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[spSearchSales]    Script Date: 15-07-2021 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Subhajit Mukherjee
-- Create date: 14th July, 2021
-- Description:	Gets Sales based on filters
-- =============================================
CREATE PROCEDURE [dbo].[spSearchSales]
	@dateFrom datetime2(7) = null,
	@dateTo datetime2(7) = null,
	@countryCode char(3) = null,
	@regionCode char(3) = null,
	@cityCode int = null,
	@page int = 1,
	@pageSize int = 20
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;
	
	BEGIN TRY
		SELECT
			SL.[SaleID],
			SL.[Date],
			SL.[CustomerName],
			CO.[CountryCode],
			CO.[CountryName],
			RG.[RegionCode],
			RG.[RegionName],
			CT.[CityCode],
			CT.[CityName],
			PR.[ProductID],
			PR.[ProductName],
			SL.[Price],
			SL.[Quantity],
			SL.[Total]
		INTO #Results
		FROM [Sale] SL
		LEFT JOIN [Master_Country] CO ON SL.[CountryCode] = CO.[CountryCode]
		LEFT JOIN [Master_Region] RG ON SL.[RegionCode] = RG.[RegionCode]
		LEFT JOIN [Master_City] CT ON SL.[CityCode] = CT.[CityCode]
		LEFT JOIN [Master_Product] PR ON SL.[ProductID] = PR.[ProductID]
		WHERE
			SL.[Date] >= @dateFrom
			AND SL.[Date] <= @dateTo
			AND SL.[CountryCode] = CASE
									WHEN @countryCode IS NULL
										THEN SL.[CountryCode]
									ELSE
										@countryCode
									END
			AND SL.[RegionCode]= CASE
									WHEN @regionCode IS NULL
										THEN SL.[RegionCode]
									ELSE
										@regionCode
									END
			AND SL.[CityCode]= CASE
									WHEN @cityCode IS NULL
										THEN SL.[CityCode]
									ELSE
										@cityCode
									END;

		SELECT * FROM #Results
		ORDER BY [SaleID]
		OFFSET ((@page - 1) * @pageSize) ROWS
		FETCH NEXT @pageSize ROWS ONLY;

		SELECT COUNT(*) AS [RecordCount], ((COUNT(*) + @pageSize - 1)/ @pageSize) AS [Pages] FROM #Results
	END TRY
	BEGIN CATCH
		EXEC dbo.[spLogError];
	END CATCH
END

-- NOTE : This proc requires SQL Server 2012 or above for OFFSET FETCH to work

-- Uncomment and execute to test
--EXEC [dbo].[spGetSales] 
--	@dateFrom = '2021-07-14 00:00:00.0000000',
--	@dateTo = '2021-07-14 00:00:00.0000000',
--	@countryCode = N'usa',
--	@regionCode = N'ny',
--	@cityCode = 57,
--	@page = 1,
--	@pageSize = 5
GO


-- Insert records into dbo.Master_Country Table
INSERT INTO dbo.Master_Country (CountryCode, CountryName) values('aus','Australia');
INSERT INTO dbo.Master_Country (CountryCode, CountryName) values('usa','United States');
GO

-- Inert records into dbo.Master_Region Table
INSERT INTO dbo.Master_Region (RegionCode, CountryCode, RegionName) VALUES('tas','aus','Tasmania');
INSERT INTO dbo.Master_Region (RegionCode, CountryCode, RegionName) VALUES('vic','aus','Victoria');
INSERT INTO dbo.Master_Region (RegionCode, CountryCode, RegionName) VALUES('mi','usa','Michigan');
INSERT INTO dbo.Master_Region (RegionCode, CountryCode, RegionName) VALUES('ny','usa','New York');
GO

-- Inert records into dbo.Master_City Table
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98074,'vic','Glenisla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98075,'vic','Glenlee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98076,'vic','Glenlyon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98077,'vic','Glenmaggie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98078,'vic','Glenorchy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98079,'vic','Glenormiston North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98080,'vic','Glenrowan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98081,'vic','Glenroy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302413,'vic','Glenthompson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98082,'vic','Gnarwarre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98083,'vic','Gnotuk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98084,'vic','Goldsborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259827,'vic','Gong Gong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98085,'vic','Goon Nure');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98086,'vic','Gooramadda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98087,'vic','Goorambat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98088,'vic','Goornong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98089,'vic','Gooroc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98090,'vic','Gorae');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98091,'vic','Gorae West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98092,'vic','Gordon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98093,'vic','Gormandale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37887,'vic','Goroke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98094,'vic','Gowar East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259007,'vic','Grand Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98095,'vic','Grantville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98096,'vic','Granya');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98097,'vic','Grassmere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98098,'vic','Graytown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98099,'vic','Great Southern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98100,'vic','Great Western');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98101,'vic','Greendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251952,'vic','Greensborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98103,'vic','Greenvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98104,'vic','Greenwald');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261011,'vic','Grenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98105,'vic','Greta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98106,'vic','Greta South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98107,'vic','Greta West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98108,'vic','Grovedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98109,'vic','Gruyere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98110,'vic','Guildford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98111,'vic','Gunbower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98112,'vic','Gundowring');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98113,'vic','Gunyah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98114,'vic','Gymbowen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98115,'vic','Haddon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98116,'vic','Hallam');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98117,'vic','Hallora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98118,'vic','Halls Gap');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98119,'vic','Hallston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14657,'vic','Hamilton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (262045,'vic','Hampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64712,'vic','Hampton Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98120,'vic','Hansonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98121,'vic','Harcourt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98122,'vic','Harkaway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98123,'vic','Harrietville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98124,'vic','Harrow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98125,'vic','Harston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20652,'vic','Hastings');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61076,'vic','Hattah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98126,'vic','Hawkesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251975,'vic','Hawksburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3870,'vic','Hawthorn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259843,'vic','Hawthorn East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252059,'vic','Hazel Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98127,'vic','Hazelwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43453,'vic','Healesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98128,'vic','Heath Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98129,'vic','Heathcote');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252132,'vic','Heatherton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98130,'vic','Heathmere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98131,'vic','Heathmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98132,'vic','Hedley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13213,'vic','Heidelberg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263140,'vic','Heidelberg Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98133,'vic','Henty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98134,'vic','Hepburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98135,'vic','Hepburn Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98136,'vic','Hesket');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98137,'vic','Hexham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251976,'vic','Heyfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98138,'vic','Heywood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98139,'vic','High Camp');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4606,'vic','Highett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98140,'vic','Highlands');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98141,'vic','Hill End');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98142,'vic','Hillcrest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98143,'vic','Hilldene');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98144,'vic','Hillside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302414,'vic','Hmas Cerberus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98145,'vic','Hoddles Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98146,'vic','Homebush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98147,'vic','Homewood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98148,'vic','Hopetoun');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64697,'vic','Hoppers Crossing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98149,'vic','Hordern Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20732,'vic','Horsham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98150,'vic','Hotspur');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98151,'vic','Howes Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98152,'vic','Howqua');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252102,'vic','Hughesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98153,'vic','Humevale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98154,'vic','Hunter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98155,'vic','Huntly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98156,'vic','Huon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98157,'vic','Hurstbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98158,'vic','Illawarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98159,'vic','Illowa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252133,'vic','Indented Head');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98160,'vic','Inglewood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98161,'vic','Invergordon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98162,'vic','Inverleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98163,'vic','Inverloch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98164,'vic','Iona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98165,'vic','Irrewillipe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98166,'vic','Irymple');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43547,'vic','Ivanhoe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259834,'vic','Ivanhoe North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261094,'vic','Jack River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98167,'vic','Jamieson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98168,'vic','Jancourt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98169,'vic','Jarklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98170,'vic','Jeeralang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98171,'vic','Jeeralang Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98172,'vic','Jeetho');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98173,'vic','Jeparit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260993,'vic','Jericho');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98174,'vic','Jindivick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98175,'vic','Joel Joel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98176,'vic','Joel South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98177,'vic','Johanna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98178,'vic','Johnsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98179,'vic','Jordanville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98180,'vic','Jumbuk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98181,'vic','Jumbunna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98182,'vic','Jung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98183,'vic','Kaarimba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98184,'vic','Kalimna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98185,'vic','Kalkallo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98186,'vic','Kallista');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98187,'vic','Kalorama');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98188,'vic','Kamarooka');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98189,'vic','Kanagulk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98190,'vic','Kancoona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98191,'vic','Kangaroo Flat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302415,'vic','Kangaroo Ground');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98192,'vic','Kaniva');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98193,'vic','Kardella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98194,'vic','Kardella South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98195,'vic','Karnak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259009,'vic','Karramomus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98196,'vic','Katamatite');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98197,'vic','Katandra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98198,'vic','Katunga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98199,'vic','Kawarren');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98200,'vic','Keely');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11806,'vic','Keilor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263108,'vic','Keilor Downs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263145,'vic','Keilor East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302416,'vic','Keilor Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98201,'vic','Kennedys Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64689,'vic','Kennington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251977,'vic','Kensington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98202,'vic','Keon Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37688,'vic','Kerang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98203,'vic','Kergunyah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98204,'vic','Kernot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12057,'vic','Kew');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263083,'vic','Kew East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35240,'vic','Keysborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98205,'vic','Kialla East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98206,'vic','Kialla West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252134,'vic','Kiewa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98207,'vic','Kilcunda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98208,'vic','Killara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98209,'vic','Killarney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98210,'vic','Killawarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98211,'vic','Kilmany');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98212,'vic','Kilmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98213,'vic','Kilmore East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43548,'vic','Kilsyth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98214,'vic','Kinglake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98215,'vic','Kinglake Central');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98216,'vic','Kinglake West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98217,'vic','Kingower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98218,'vic','Kingston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98219,'vic','Kirkstall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98220,'vic','Knowsley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11304,'vic','Knox City Centre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263166,'vic','Knoxfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98221,'vic','Koetong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98222,'vic','Kolora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98223,'vic','Kongwak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98224,'vic','Konongwootong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259005,'vic','Koo Wee Rup');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98225,'vic','Koondrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98226,'vic','Koonwarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98227,'vic','Koorlong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98228,'vic','Koornalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98229,'vic','Kooroocheang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252060,'vic','Kooyong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98230,'vic','Koroit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259838,'vic','Korong Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37810,'vic','Korumburra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98231,'vic','Korweinguboora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98232,'vic','Kotta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98233,'vic','Kotupna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98234,'vic','Koyuga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98235,'vic','Krowera');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37752,'vic','Kulwin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98236,'vic','Kyabram');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37672,'vic','Kyneton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251925,'vic','Kyvalley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302553,'vic','La Trobe University');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98237,'vic','Laang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98238,'vic','Labertouche');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98239,'vic','Laceby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98240,'vic','Lake Boga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98241,'vic','Lake Bolac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98242,'vic','Lake Charm');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98243,'vic','Lake Goldsmith');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98244,'vic','Lake Rowan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98245,'vic','Lake Tyers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98246,'vic','Lakes Entrance');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98247,'vic','Lal Lal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98248,'vic','Lalbert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64720,'vic','Lalor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98249,'vic','Lamplough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98250,'vic','Lancaster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44488,'vic','Lancefield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98251,'vic','Landsborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37784,'vic','Lang Lang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98252,'vic','Langi Logan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98253,'vic','Langkoop');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98254,'vic','Langley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98255,'vic','Langwarrin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98256,'vic','Lara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98257,'vic','Lardner');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98258,'vic','Larpent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98259,'vic','Lascelles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252103,'vic','Launching Place');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98260,'vic','Lauriston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98261,'vic','Lavers Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64710,'vic','Laverton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190777,'vic','Laverton North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98262,'vic','Lawrence');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98263,'vic','Leaghur');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98264,'vic','Learmonth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98265,'vic','Leichardt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98266,'vic','Leigh Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98267,'vic','Leitchville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261046,'vic','Lemnos');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98268,'vic','Leneva');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98269,'vic','Leonards Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43577,'vic','Leongatha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98270,'vic','Leongatha South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98271,'vic','Leopold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98272,'vic','Leslie Manor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98273,'vic','Lethbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98274,'vic','Lexton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98275,'vic','Licola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98276,'vic','Lillico');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35349,'vic','Lilydale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98277,'vic','Limestone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98278,'vic','Lindenow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98279,'vic','Lindenow South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98280,'vic','Lindsay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302574,'vic','Linga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98281,'vic','Linton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98282,'vic','Lismore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98283,'vic','Litchfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98284,'vic','Little River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98285,'vic','Llanelly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98286,'vic','Loch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251926,'vic','Loch Sport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98287,'vic','Loch Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98288,'vic','Lockington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98289,'vic','Locksley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98290,'vic','Lockwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98291,'vic','Logan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98292,'vic','Londrigan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98293,'vic','Longford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98294,'vic','Longlea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98295,'vic','Longwarry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98296,'vic','Longwarry North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98297,'vic','Longwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259831,'vic','Longwood East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98298,'vic','Lorne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98299,'vic','Lovely Banks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35764,'vic','Lower Plenty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98300,'vic','Lucknow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98301,'vic','Lucyvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98302,'vic','Lurg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98303,'vic','Lyal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (42418,'vic','Lyndhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98304,'vic','Lyons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98305,'vic','Lyonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98306,'vic','Lysterfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98307,'vic','Macarthur');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98308,'vic','Macclesfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98309,'vic','Macedon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98310,'vic','Macks Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251927,'vic','Macleod');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98311,'vic','Macorna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98312,'vic','Maddingley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45833,'vic','Maffra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98313,'vic','Magpie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98314,'vic','Mailors Flat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302594,'vic','Main Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98315,'vic','Maindample');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98316,'vic','Majorca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98317,'vic','Maldon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98318,'vic','Mallacoota');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98319,'vic','Malmsbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12088,'vic','Malvern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98320,'vic','Manangatang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98321,'vic','Mandurang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98322,'vic','Mandurang South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98323,'vic','Mangalore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98324,'vic','Mannibadar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44603,'vic','Mansfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98325,'vic','Marcus Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98326,'vic','Mardan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64708,'vic','Maribyrnong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98327,'vic','Marlo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98328,'vic','Marnoo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98329,'vic','Marong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98330,'vic','Maroona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98331,'vic','Marshall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98332,'vic','Marungi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98333,'vic','Maryborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98334,'vic','Marysville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98335,'vic','Maude');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98336,'vic','Mccrae');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98337,'vic','Mckenzie Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35761,'vic','Mckinnon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98338,'vic','Mcmahons Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263164,'vic','Meadow Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98339,'vic','Meeniyan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98340,'vic','Meerlieu');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5601,'vic','Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302614,'vic','Melbourne Airport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13056,'vic','Melton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98341,'vic','Melton South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35310,'vic','Mentone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98342,'vic','Menzies Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98343,'vic','Mepunga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98344,'vic','Mepunga East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98345,'vic','Merbein');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98346,'vic','Merbein South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98347,'vic','Meredith');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98348,'vic','Merino');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251928,'vic','Merlynston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98349,'vic','Mernda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98350,'vic','Merricks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98351,'vic','Merricks North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98352,'vic','Merrigum');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98353,'vic','Merrijig');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37772,'vic','Merton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98354,'vic','Metcalfe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98355,'vic','Metung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98356,'vic','Mia Mia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98357,'vic','Middle Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98358,'vic','Middle Tarwin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98359,'vic','Miepoll');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98360,'vic','Milawa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22795,'vic','Mildura');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302634,'vic','Mill Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98361,'vic','Millbrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98362,'vic','Millgrove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98363,'vic','Milloo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98364,'vic','Milltown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98365,'vic','Mincha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98366,'vic','Miners Rest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98367,'vic','Mingay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98368,'vic','Minhamite');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98369,'vic','Minyip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302654,'vic','Miralie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302674,'vic','Miram');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98370,'vic','Mirboo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98371,'vic','Mirboo North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (243459,'vic','Mitcham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98372,'vic','Mitchellstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98373,'vic','Mitiamo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98374,'vic','Mitre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98375,'vic','Mockinya');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98376,'vic','Modella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98377,'vic','Modewarre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24123,'vic','Moe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98378,'vic','Moglonemby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98379,'vic','Molesworth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98380,'vic','Moliagul');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98381,'vic','Mollongghip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98382,'vic','Molyullah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302695,'vic','Monash University');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98383,'vic','Monbulk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98384,'vic','Monegeetta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98385,'vic','Monomeith');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190800,'vic','Mont Albert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98386,'vic','Montgomery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98387,'vic','Montmorency');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98388,'vic','Montrose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98389,'vic','Moolap');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98390,'vic','Moonambel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259841,'vic','Moondarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64698,'vic','Moonee Ponds');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22796,'vic','Moorabbin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98391,'vic','Moorabool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98392,'vic','Mooralla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98393,'vic','Moorilim');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98394,'vic','Moorngag');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98395,'vic','Moorooduc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43549,'vic','Mooroolbark');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98396,'vic','Mooroopna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98397,'vic','Mooroopna North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64717,'vic','Mordialloc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98398,'vic','Moriac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24122,'vic','Mornington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98399,'vic','Morrisons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252022,'vic','Morrl Morrl');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98400,'vic','Mortlake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14315,'vic','Morwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98401,'vic','Mossiface');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98402,'vic','Mount Beauty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98403,'vic','Mount Best');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98404,'vic','Mount Burnett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98405,'vic','Mount Bute');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98406,'vic','Mount Clear');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98407,'vic','Mount Cottrell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98408,'vic','Mount Dandenong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98409,'vic','Mount Duneed');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98410,'vic','Mount Egerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35360,'vic','Mount Eliza');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98411,'vic','Mount Evelyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251929,'vic','Mount Helen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98412,'vic','Mount Hooghly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98413,'vic','Mount Lonarch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98414,'vic','Mount Macedon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98415,'vic','Mount Martha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98416,'vic','Mount Mercer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98417,'vic','Mount Moriac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252061,'vic','Mount Pleasant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251894,'vic','Mount Rowan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98418,'vic','Mount Wallace');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43550,'vic','Mount Waverley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98419,'vic','Mountain View');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98420,'vic','Moutajup');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261063,'vic','Moyarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98421,'vic','Moyhu');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98422,'vic','Moyston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98423,'vic','Muckleford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98424,'vic','Mudgegonga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35333,'vic','Mulgrave');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98425,'vic','Mundoona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98426,'vic','Munro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98427,'vic','Muntham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98428,'vic','Murchison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98429,'vic','Murgheboluc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98430,'vic','Murmungee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259010,'vic','Murrabit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98431,'vic','Murrayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98432,'vic','Murrindindi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251978,'vic','Murrumbeena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98433,'vic','Murtoa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98434,'vic','Musk Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98435,'vic','Myall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98436,'vic','Myamyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98437,'vic','Myers Flat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98438,'vic','Myola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98439,'vic','Myrniong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98440,'vic','Myrrhee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98441,'vic','Myrtleford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98442,'vic','Mysia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98443,'vic','Nagambie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98444,'vic','Nalangil');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98445,'vic','Nambrok');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98446,'vic','Nanneella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98447,'vic','Napoleons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22797,'vic','Nar Nar Goon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98448,'vic','Nar Nar Goon North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302716,'vic','Nareeb');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98449,'vic','Nareen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98450,'vic','Naringal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98451,'vic','Narracan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302736,'vic','Narrapumelap South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98452,'vic','Narrawong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64687,'vic','Narre Warren');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98453,'vic','Narre Warren North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98454,'vic','Nathalia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98455,'vic','Natimuk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98456,'vic','Navarre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98457,'vic','Navigators');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98458,'vic','Nayook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98459,'vic','Neerim');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98460,'vic','Neerim East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37888,'vic','Neerim South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98461,'vic','Neilborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98462,'vic','Nelson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98463,'vic','Nerrina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98464,'vic','Netherby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302756,'vic','New Gisborne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98465,'vic','Newbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98466,'vic','Newbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263138,'vic','Newcomb');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98467,'vic','Newham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98468,'vic','Newhaven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98469,'vic','Newington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98470,'vic','Newlyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98471,'vic','Newlyn North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98472,'vic','Newmerella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98473,'vic','Newport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98474,'vic','Newry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37471,'vic','Newstead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98475,'vic','Newtown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98476,'vic','Nhill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98477,'vic','Nicholson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302777,'vic','Niddrie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302797,'vic','Niddrie North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98478,'vic','Nilma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98479,'vic','Nilma North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98480,'vic','Nintingbool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98481,'vic','Nirranda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5119,'vic','Noble Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98482,'vic','Noojee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98483,'vic','Noorat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98484,'vic','Noorinbee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98485,'vic','Norlane');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263073,'vic','North Geelong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263072,'vic','North Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98486,'vic','North Shore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98487,'vic','North Wonthaggi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43551,'vic','Northcote');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98488,'vic','Northwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13882,'vic','Notting Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98489,'vic','Nowa Nowa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98490,'vic','Nullawarre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98491,'vic','Nullawil');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98492,'vic','Numurkah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11847,'vic','Nunawading');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98493,'vic','Nurrabiel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98494,'vic','Nutfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98495,'vic','Nyah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98496,'vic','Nyah West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98497,'vic','Nyora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302817,'vic','Oaklands Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11677,'vic','Oakleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98498,'vic','Oakleigh East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64711,'vic','Oakleigh South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98499,'vic','Ocean Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98500,'vic','Officer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98501,'vic','Olinda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98502,'vic','Omeo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98503,'vic','Ondit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43454,'vic','Orbost');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98504,'vic','Orford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251979,'vic','Ormond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98505,'vic','Orrvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98506,'vic','Outtrim');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98507,'vic','Ouyen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98508,'vic','Ovens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98509,'vic','Oxley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37789,'vic','Pakenham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98510,'vic','Pakenham South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98511,'vic','Pakenham Upper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98512,'vic','Panmure');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98513,'vic','Panton Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98514,'vic','Paradise');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302838,'vic','Park Orchards');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64721,'vic','Parkdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11212,'vic','Parkville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98515,'vic','Parwan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190754,'vic','Pascoe Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98516,'vic','Patchewollock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98517,'vic','Patho');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98518,'vic','Patyah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98519,'vic','Paynesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98520,'vic','Pearcedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98521,'vic','Peechelba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98522,'vic','Pennyroyal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98523,'vic','Penshurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98524,'vic','Peronne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98525,'vic','Perry Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98526,'vic','Peterborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98527,'vic','Pheasant Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98528,'vic','Piangil');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98529,'vic','Picola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259836,'vic','Piggoreet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98530,'vic','Pimpinio');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98531,'vic','Pine Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98532,'vic','Pine Lodge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98533,'vic','Pipers Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98534,'vic','Piries');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98535,'vic','Pirron Yallock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98536,'vic','Pitfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260937,'vic','Plenty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64703,'vic','Point Cook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98537,'vic','Point Lonsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98538,'vic','Pomborneit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98539,'vic','Pomonal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98540,'vic','Pootilla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43455,'vic','Poowong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98541,'vic','Poowong East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98542,'vic','Poowong North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98543,'vic','Porepunkah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98544,'vic','Port Albert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98545,'vic','Port Campbell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98546,'vic','Port Fairy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98547,'vic','Port Franklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64685,'vic','Port Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98548,'vic','Port Welshpool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45228,'vic','Portarlington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24045,'vic','Portland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22800,'vic','Portsea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98549,'vic','Pound Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98550,'vic','Powelltown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11342,'vic','Prahran');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98551,'vic','Prairie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11346,'vic','Preston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98552,'vic','Princetown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302861,'vic','Puckapunyal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98553,'vic','Purnim');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98554,'vic','Pyalong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98555,'vic','Pyramid Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98556,'vic','Quambatook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98557,'vic','Quantong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98558,'vic','Queenscliff');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98559,'vic','Queensferry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98560,'vic','Raglan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98561,'vic','Rainbow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98562,'vic','Ranceby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98563,'vic','Ravenswood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252062,'vic','Rawson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98564,'vic','Raymond Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98565,'vic','Raywood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98566,'vic','Red Cliffs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98567,'vic','Red Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98568,'vic','Red Hill South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252023,'vic','Redan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98569,'vic','Redbank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98570,'vic','Redesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98571,'vic','Reedy Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252104,'vic','Research');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64691,'vic','Reservoir');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98573,'vic','Rhyll');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43552,'vic','Richmond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98574,'vic','Richmond Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98575,'vic','Riddells Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98576,'vic','Riggs Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43553,'vic','Ringwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64722,'vic','Ringwood East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64723,'vic','Ringwood North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251930,'vic','Ripponlea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98577,'vic','Riverslea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37751,'vic','Robinvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20655,'vic','Rochester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98578,'vic','Rochford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98579,'vic','Rockbank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98580,'vic','Rocklyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98581,'vic','Rokeby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98582,'vic','Rokewood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98583,'vic','Romsey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252135,'vic','Rosanna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98584,'vic','Rosebery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37460,'vic','Rosebud');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (264553,'vic','Rosebud West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98585,'vic','Rosedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98586,'vic','Ross Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98587,'vic','Rowsley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64681,'vic','Rowville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302901,'vic','Rubicon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98588,'vic','Ruby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98589,'vic','Ruffy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259858,'vic','Running Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98590,'vic','Rupanyup');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98591,'vic','Rushworth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98592,'vic','Rutherglen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98593,'vic','Sailors Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22801,'vic','Sale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98594,'vic','Samaria');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98595,'vic','San Remo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98596,'vic','Sandford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (243678,'vic','Sandhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64716,'vic','Sandringham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98597,'vic','Sandy Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98598,'vic','Sandy Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98599,'vic','Sarsfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98600,'vic','Sassafras');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98601,'vic','Sassafras Gully');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98602,'vic','Scarsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43554,'vic','Scoresby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98603,'vic','Scotsburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98604,'vic','Scotts Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98605,'vic','Sea Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98606,'vic','Seacombe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98607,'vic','Seaford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98608,'vic','Seaspray');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64709,'vic','Seaton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98609,'vic','Sebastian');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98610,'vic','Sebastopol');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98611,'vic','Sedgwick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98612,'vic','Selby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98613,'vic','Serpentine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98614,'vic','Serviceton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98615,'vic','Seville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37879,'vic','Seymour');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98616,'vic','Shady Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98617,'vic','She Oaks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98618,'vic','Sheep Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98619,'vic','Shelbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98620,'vic','Shelford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22802,'vic','Shepparton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98621,'vic','Sherbrooke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98622,'vic','Shoreham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98623,'vic','Sidonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98624,'vic','Silvan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98625,'vic','Skenes Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98626,'vic','Skipton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98627,'vic','Smeaton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302922,'vic','Smiths Gully');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98628,'vic','Smythes Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98629,'vic','Smythesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98630,'vic','Snake Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98631,'vic','Somers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98632,'vic','Somerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98633,'vic','Somerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98634,'vic','Sorrento');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259839,'vic','South Dudley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43209,'vic','South Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98635,'vic','South Morang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64686,'vic','South Yarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190704,'vic','Southbank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98636,'vic','Southern Cross');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98637,'vic','Spargo Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252024,'vic','Speed');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252105,'vic','Spotswood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64682,'vic','Spring Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98639,'vic','Springfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98640,'vic','Springhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98641,'vic','Springmount');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64680,'vic','Springvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64718,'vic','Springvale South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (258999,'vic','St Albans');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259003,'vic','St Andrews');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259008,'vic','St Andrews Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35060,'vic','St Arnaud');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259857,'vic','St Helena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259001,'vic','St James');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12052,'vic','St Kilda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263080,'vic','St Kilda East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259829,'vic','St Leonards');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98642,'vic','Staffordshire Reef');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98643,'vic','Stanhope');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98644,'vic','Stanley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98645,'vic','Staughton Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98646,'vic','Stawell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98647,'vic','Steiglitz');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98648,'vic','Stewarton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98649,'vic','Stirling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98650,'vic','Stockdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98651,'vic','Stony Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98652,'vic','Stradbroke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98653,'vic','Strangways');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98654,'vic','Stratford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98655,'vic','Strath Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98656,'vic','Strathbogie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98657,'vic','Strathewen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98658,'vic','Strathfieldsaye');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98659,'vic','Strathmerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98660,'vic','Strathmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98661,'vic','Streatham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98662,'vic','Strzelecki');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98663,'vic','Stuart Mill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35261,'vic','Sunbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98664,'vic','Sunshine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190757,'vic','Surrey Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98665,'vic','Sutherland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98666,'vic','Sutton Grange');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37475,'vic','Swan Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98667,'vic','Swan Marsh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98668,'vic','Swan Reach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98669,'vic','Swanpool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41576,'vic','Swifts Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64713,'vic','Sydenham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98670,'vic','Sylvaterre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98671,'vic','Syndal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98672,'vic','Tabilk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98673,'vic','Tabor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98674,'vic','Taggerty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98675,'vic','Tahara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98676,'vic','Talbot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98677,'vic','Talgarno');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98678,'vic','Tallandoon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98679,'vic','Tallangatta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98680,'vic','Tallarook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98681,'vic','Tallygaroopna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98682,'vic','Tambo Upper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98683,'vic','Taminick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98684,'vic','Tandarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98685,'vic','Tangambalanga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98686,'vic','Tanjil South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260941,'vic','Tanwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98687,'vic','Tanybryn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98688,'vic','Taradale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98689,'vic','Tarnagulla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98690,'vic','Tarneit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98691,'vic','Tarra Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98692,'vic','Tarranyurk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98693,'vic','Tarraville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98694,'vic','Tarrawingee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98695,'vic','Tarrenlea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98696,'vic','Tarrington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98697,'vic','Tarwin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98698,'vic','Tarwin Lower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98699,'vic','Tatong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98700,'vic','Tatura');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98701,'vic','Tatyoon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98702,'vic','Tawonga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302942,'vic','Tawonga South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98703,'vic','Teal Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98704,'vic','Teesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98705,'vic','Telangatuk East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98706,'vic','Templestowe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98707,'vic','Templestowe Lower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302962,'vic','Tempy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98708,'vic','Tennyson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98709,'vic','Terang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98710,'vic','Tetoora Road');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98711,'vic','Thalia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98712,'vic','The Basin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98713,'vic','The Heart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98714,'vic','The Patch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98715,'vic','The Sisters');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11454,'vic','Thomastown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98716,'vic','Thoona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190712,'vic','Thornbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302982,'vic','Thornton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98717,'vic','Thorpdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98718,'vic','Thorpdale South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98719,'vic','Timboon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98720,'vic','Timmering');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98721,'vic','Timor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98722,'vic','Tinamba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98723,'vic','Tintaldra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98724,'vic','Tittybong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98725,'vic','Tolmie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98726,'vic','Tongala');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98727,'vic','Tongio');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259833,'vic','Tonimbuk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98728,'vic','Tooborac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98729,'vic','Toolamba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98730,'vic','Toolamba West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98731,'vic','Toolangi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98732,'vic','Toolern Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98733,'vic','Toolleen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98734,'vic','Toolondo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98735,'vic','Toongabbie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98736,'vic','Toora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98737,'vic','Tooradin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251953,'vic','Toorak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37462,'vic','Torquay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98738,'vic','Torrita');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98739,'vic','Torrumbarry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98740,'vic','Tourello');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303003,'vic','Towan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98741,'vic','Tower Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98742,'vic','Towong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98743,'vic','Trafalgar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98744,'vic','Trafalgar East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98745,'vic','Trafalgar South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (33471,'vic','Traralgon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98746,'vic','Traralgon South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98747,'vic','Trawalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98748,'vic','Trawool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98749,'vic','Tremont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98750,'vic','Trentham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98751,'vic','Trentham East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98752,'vic','Tresco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98753,'vic','Truganina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64688,'vic','Tullamarine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98754,'vic','Tungamah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259856,'vic','Turriff');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98755,'vic','Turtons Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98756,'vic','Tyaak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98757,'vic','Tyabb');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98758,'vic','Tyers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98759,'vic','Tylden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98760,'vic','Tynong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98761,'vic','Tynong North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98762,'vic','Tyntynder');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98763,'vic','Tyntynder South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98764,'vic','Tyrendarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98765,'vic','Tyrendarra East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98766,'vic','Ullina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98767,'vic','Ullswater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98768,'vic','Ultima');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98769,'vic','Undera');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303024,'vic','Underbool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303044,'vic','University Of Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98770,'vic','Upotipotpon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98771,'vic','Upper Lurg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98772,'vic','Upper Plenty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98773,'vic','Upwey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98774,'vic','Valencia Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98775,'vic','Ventnor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252065,'vic','Venus Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43555,'vic','Vermont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98776,'vic','Vervale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98777,'vic','Victoria Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303064,'vic','Vinifera');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98778,'vic','Violet Town');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98779,'vic','Vite Vite');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98780,'vic','Vite Vite North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98781,'vic','Waaia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98782,'vic','Waanyarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98783,'vic','Wahgunyah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98784,'vic','Wahring');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98785,'vic','Wal Wal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98786,'vic','Walhalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98787,'vic','Walkerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98788,'vic','Wallace');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98789,'vic','Wallacedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98790,'vic','Wallaloo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98791,'vic','Wallan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98792,'vic','Wallinduc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98793,'vic','Wallington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98794,'vic','Walmer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98795,'vic','Walpa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98796,'vic','Walpeup');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98797,'vic','Walwa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98798,'vic','Wanalta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98799,'vic','Wandiligong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98800,'vic','Wandin North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98801,'vic','Wando Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98802,'vic','Wandong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22803,'vic','Wangaratta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98803,'vic','Wangoom');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98804,'vic','Wannon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43556,'vic','Wantirna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64690,'vic','Wantirna South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98805,'vic','Waranga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98806,'vic','Warburton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98807,'vic','Wareek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98808,'vic','Warncoort');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98809,'vic','Warracknabeal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37662,'vic','Warragul');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98810,'vic','Warrak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98811,'vic','Warrandyte');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43557,'vic','Warrandyte South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190728,'vic','Warranwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98812,'vic','Warrenbayne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98813,'vic','Warrenheip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259854,'vic','Warrion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24053,'vic','Warrnambool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98814,'vic','Warrong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98815,'vic','Wartook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98816,'vic','Watchem');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98817,'vic','Waterford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98818,'vic','Waterloo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20662,'vic','Watsonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303084,'vic','Watsons Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98819,'vic','Wattle Bank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98820,'vic','Wattle Flat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303103,'vic','Wattle Glen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98821,'vic','Wattle Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98822,'vic','Waubra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64704,'vic','Waurn Ponds');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98823,'vic','Wedderburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98824,'vic','Weering');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98825,'vic','Weerite');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98826,'vic','Wehla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98827,'vic','Welshmans Reef');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98828,'vic','Welshpool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98829,'vic','Wendouree');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98830,'vic','Wensleydale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98831,'vic','Werneth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98832,'vic','Werona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64683,'vic','Werribee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11816,'vic','Werribee South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98833,'vic','Wesburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263115,'vic','West Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259853,'vic','Westbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263151,'vic','Westmeadows');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98834,'vic','Westmere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98835,'vic','Wharparilla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64700,'vic','Wheelers Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98836,'vic','Whitfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98837,'vic','Whittlesea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98838,'vic','Whorouly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98839,'vic','Whorouly South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98840,'vic','Whroo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98841,'vic','Wickliffe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98842,'vic','Wilby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98843,'vic','Willatook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98844,'vic','Willaura');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303123,'vic','Williams Landing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64705,'vic','Williamstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98845,'vic','Willow Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98846,'vic','Willowvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98847,'vic','Willung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98848,'vic','Willung South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98849,'vic','Winchelsea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98850,'vic','Windermere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251895,'vic','Windsor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98851,'vic','Winnap');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98852,'vic','Winnindoo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98853,'vic','Winslow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98854,'vic','Winton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98855,'vic','Wirrate');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37891,'vic','Wodonga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98856,'vic','Wollert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98857,'vic','Wombelano');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98858,'vic','Won Wron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98859,'vic','Wonga Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98860,'vic','Wongarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98861,'vic','Wonthaggi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303145,'vic','Wood Wood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37473,'vic','Woodend');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98862,'vic','Woodfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98863,'vic','Woodford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98864,'vic','Woodleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98865,'vic','Woods Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98866,'vic','Woodside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98867,'vic','Woodstock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98868,'vic','Woodvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259830,'vic','Wool Wool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98869,'vic','Woolamai');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98870,'vic','Woolsthorpe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41577,'vic','Woomelang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98871,'vic','Wooragee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98872,'vic','Woori Yallock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98873,'vic','Woorinen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303164,'vic','Woorinen South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98874,'vic','Woorndoo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98875,'vic','Woosang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303184,'vic','World Trade Centre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98876,'vic','Wulgulmerang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98877,'vic','Wunghnu');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98878,'vic','Wurdiboluc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98879,'vic','Wurruk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98880,'vic','Wy Yung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37878,'vic','Wycheproof');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98881,'vic','Wychitella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98882,'vic','Wye River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98883,'vic','Wyelangta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259006,'vic','Wyndham Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98884,'vic','Wyuna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98885,'vic','Yabba North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98886,'vic','Yackandandah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98887,'vic','Yalca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98888,'vic','Yallourn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98889,'vic','Yambuk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98890,'vic','Yambuna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98891,'vic','Yan Yean');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98892,'vic','Yanac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98893,'vic','Yandoit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98894,'vic','Yangery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98895,'vic','Yannathan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98896,'vic','Yapeen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98897,'vic','Yarck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98898,'vic','Yarpturk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98899,'vic','Yarra Glen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98900,'vic','Yarra Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98901,'vic','Yarragon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38550,'vic','Yarram');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251980,'vic','Yarrambat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64706,'vic','Yarraville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98902,'vic','Yarrawalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98903,'vic','Yarrawonga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98904,'vic','Yarroweyah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98905,'vic','Yatchaw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37699,'vic','Yea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98906,'vic','Yendon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98907,'vic','Yeodene');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98908,'vic','Yielima');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98909,'vic','Yinnar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98910,'vic','Yinnar South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98911,'vic','Youarang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98912,'vic','Yulecart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98913,'vic','Yundool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (303206,'vic','Yuroke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97288,'tas','Adventure Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97289,'tas','Alberton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97290,'tas','Alonnah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261867,'tas','Apsley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97291,'tas','Austins Ferry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97292,'tas','Baden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97293,'tas','Bagdad');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97294,'tas','Bangor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97295,'tas','Barnes Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97296,'tas','Barrington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263117,'tas','Battery Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38468,'tas','Beaconsfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97297,'tas','Beauty Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97298,'tas','Bell Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97299,'tas','Bellerive');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97300,'tas','Bellingham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97301,'tas','Berriedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97302,'tas','Bicheno');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97303,'tas','Birralee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97304,'tas','Bishopsbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97305,'tas','Black Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97306,'tas','Black River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252128,'tas','Blackmans Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97307,'tas','Blackwall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97308,'tas','Blackwood Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97309,'tas','Blessington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97310,'tas','Boat Harbour');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97311,'tas','Bothwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97312,'tas','Bracknell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97313,'tas','Branxholm');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97314,'tas','Breadalbane');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97315,'tas','Bream Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97316,'tas','Bridgenorth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37894,'tas','Bridgewater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97317,'tas','Bridport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97318,'tas','Broadmarsh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97319,'tas','Buckland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2259,'tas','Burnie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97320,'tas','Bushy Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97321,'tas','Cambridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97322,'tas','Campania');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97323,'tas','Campbell Town');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97324,'tas','Cape Barren Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64678,'tas','Carlton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97325,'tas','Carrick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97326,'tas','Caveside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97327,'tas','Chudleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11176,'tas','Claremont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97328,'tas','Cleveland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97329,'tas','Colebrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97330,'tas','Coles Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97331,'tas','Collinsvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97332,'tas','Coningham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97333,'tas','Cooee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97334,'tas','Copping');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97335,'tas','Cornwall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97336,'tas','Cradoc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97337,'tas','Cranbrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252129,'tas','Cremorne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97338,'tas','Cressy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35059,'tas','Currie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97339,'tas','Cygnet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97340,'tas','Deddington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97341,'tas','Deloraine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97342,'tas','Dennes Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97343,'tas','Derby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97344,'tas','Detention');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97345,'tas','Deviot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11470,'tas','Devonport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97346,'tas','Dilston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251969,'tas','Dodges Ferry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97347,'tas','Dover');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97348,'tas','Dromedary');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97349,'tas','Dunalley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97350,'tas','Dunorlan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97351,'tas','Dysart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97352,'tas','Eaglehawk Neck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (258998,'tas','East Launceston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97353,'tas','Elderslie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97354,'tas','Electrona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97355,'tas','Elizabeth Town');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97356,'tas','Ellendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97357,'tas','Elliott');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97358,'tas','Emita');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97359,'tas','Epping Forest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97360,'tas','Evandale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190767,'tas','Exeter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97361,'tas','Exton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97362,'tas','Fentonbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251947,'tas','Fern Tree');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97363,'tas','Fingal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97364,'tas','Fitzgerald');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97365,'tas','Flowerdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97366,'tas','Flowery Gully');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97367,'tas','Forcett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97368,'tas','Forest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97369,'tas','Forester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97370,'tas','Forth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97371,'tas','Frankford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97372,'tas','Franklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251948,'tas','Gagebrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97373,'tas','Garden Island Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97374,'tas','Gardners Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97375,'tas','Gawler');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97376,'tas','Geeveston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97377,'tas','George Town');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97378,'tas','Gladstone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97379,'tas','Glaziers Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97380,'tas','Glen Huon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97381,'tas','Glendevie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97382,'tas','Glenfern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97383,'tas','Glengarry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97384,'tas','Glenlusk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252130,'tas','Glenora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97385,'tas','Glenorchy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97386,'tas','Golconda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97387,'tas','Golden Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97388,'tas','Goodwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97389,'tas','Gordon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302397,'tas','Gormanston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97390,'tas','Goshen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97391,'tas','Goulds Country');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97392,'tas','Gowrie Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97393,'tas','Grassy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97394,'tas','Gravelly Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97395,'tas','Gray');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97396,'tas','Greens Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97397,'tas','Gretna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97398,'tas','Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97399,'tas','Gunns Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97400,'tas','Hadspen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97401,'tas','Hagley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97402,'tas','Hamilton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97403,'tas','Hampshire');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97404,'tas','Henrietta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252096,'tas','Heybridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97405,'tas','Highclere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97406,'tas','Highcroft');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97407,'tas','Hillwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11850,'tas','Hobart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97408,'tas','Holwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252019,'tas','Howden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97409,'tas','Howth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302398,'tas','Huntingfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97410,'tas','Huonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97411,'tas','Interlaken');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97412,'tas','Invermay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97413,'tas','Jackeys Marsh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97414,'tas','Jericho');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97415,'tas','Judbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97416,'tas','Kaoota');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97417,'tas','Karoola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97418,'tas','Kayena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97419,'tas','Kellevie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97420,'tas','Kelso');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97421,'tas','Kempton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97422,'tas','Kettering');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97423,'tas','Kimberley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97424,'tas','Kindred');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97425,'tas','Kingston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97426,'tas','Kingston Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97427,'tas','Koonya');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97428,'tas','Lachlan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97429,'tas','Lady Barron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251949,'tas','Lanena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97430,'tas','Lapoinya');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64677,'tas','Latrobe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97431,'tas','Lauderdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3296,'tas','Launceston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97432,'tas','Lebrina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97433,'tas','Legana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97434,'tas','Legerwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97435,'tas','Leith');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97436,'tas','Levendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97437,'tas','Lewisham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97438,'tas','Liena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97439,'tas','Liffey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97440,'tas','Lileah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97441,'tas','Lilydale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97442,'tas','Lindisfarne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97443,'tas','Lisle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97444,'tas','Little Swanport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97445,'tas','Loccota');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97446,'tas','Loira');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97447,'tas','Longford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97448,'tas','Longley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97449,'tas','Loorana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97450,'tas','Lorinna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97451,'tas','Low Head');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97452,'tas','Lower Barrington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97453,'tas','Lower Longley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97454,'tas','Lucaston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260994,'tas','Lulworth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97455,'tas','Lutana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97456,'tas','Lymington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97457,'tas','Magra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97458,'tas','Mangalore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97459,'tas','Mangana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97460,'tas','Margate');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97461,'tas','Mathinna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97462,'tas','Mawbanna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97463,'tas','Mayberry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97464,'tas','Mayfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97465,'tas','Meander');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97466,'tas','Melton Mowbray');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97467,'tas','Middleton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251970,'tas','Midway Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97468,'tas','Moina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97469,'tas','Mole Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97470,'tas','Moltema');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97471,'tas','Montagu');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97472,'tas','Montana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97473,'tas','Montumana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97474,'tas','Moonah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97475,'tas','Moorina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97476,'tas','Mount Direction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97477,'tas','Mount Lloyd');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302399,'tas','Mount Nelson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97478,'tas','Mount Seymour');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252097,'tas','Murdunna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97479,'tas','Myalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97480,'tas','Myrtle Bank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97481,'tas','Nabowla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97482,'tas','Natone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97483,'tas','Needles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97484,'tas','Neika');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97485,'tas','New Norfolk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97486,'tas','New Town');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97487,'tas','Newnham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64679,'tas','Newstead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97488,'tas','Nicholls Rivulet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97489,'tas','Nietta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97490,'tas','Nile');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97491,'tas','Nook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97492,'tas','North Motton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97493,'tas','Northdown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97494,'tas','Nubeena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97495,'tas','Nugent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97496,'tas','Nunamara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97497,'tas','Oaks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97498,'tas','Oatlands');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97499,'tas','Old Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97500,'tas','Oldina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97501,'tas','Opossum Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97502,'tas','Orford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97503,'tas','Orielton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97504,'tas','Osterley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251917,'tas','Otago');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97505,'tas','Ouse');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97506,'tas','Paloona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97507,'tas','Paradise');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97508,'tas','Parattah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97509,'tas','Parkham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97510,'tas','Patersonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97511,'tas','Pelverata');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97512,'tas','Penguin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97513,'tas','Penna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97514,'tas','Perth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97515,'tas','Pipers Brook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97516,'tas','Pipers River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97517,'tas','Plenty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97518,'tas','Pontville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17559,'tas','Port Arthur');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259933,'tas','Port Huon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97519,'tas','Port Sorell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97520,'tas','Powranna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97521,'tas','Premaydena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97522,'tas','Preolenna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97523,'tas','Pyengana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97524,'tas','Quamby Brook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37797,'tas','Queenstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97525,'tas','Railton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97526,'tas','Ranelagh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97527,'tas','Redpa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97528,'tas','Renison Bell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97529,'tas','Retreat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97530,'tas','Rhyndaston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97531,'tas','Riana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97532,'tas','Richmond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97533,'tas','Ridgeway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97534,'tas','Ridgley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97535,'tas','Ringarooma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97536,'tas','Risdon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263168,'tas','Risdon Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97537,'tas','Robigana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97538,'tas','Rocky Cape');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97539,'tas','Roger River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97540,'tas','Rokeby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97541,'tas','Roland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97542,'tas','Rosebery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97543,'tas','Rosevale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97544,'tas','Rosevears');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97545,'tas','Ross');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97546,'tas','Rossarden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97547,'tas','Rowella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97548,'tas','Runnymede');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302400,'tas','Saltwater River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97549,'tas','Sandfly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97550,'tas','Sandford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97551,'tas','Sandy Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97552,'tas','Sassafras');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97553,'tas','Scamander');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97554,'tas','Scottsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97555,'tas','Selbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252056,'tas','Seven Mile Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97556,'tas','Seymour');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97557,'tas','Sheffield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97558,'tas','Sidmouth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97559,'tas','Simpsons Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97560,'tas','Sisters Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97561,'tas','Sisters Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302401,'tas','Sloping Main');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37796,'tas','Smithton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97562,'tas','Snug');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97563,'tas','Somerset');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97564,'tas','Sorell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97565,'tas','South Arm');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97566,'tas','South Burnie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (264551,'tas','South Launceston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97567,'tas','South Riana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97568,'tas','Sprent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97569,'tas','Spreyton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97570,'tas','Springfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (258997,'tas','St Helens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259932,'tas','St Leonards');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259931,'tas','St Marys');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97571,'tas','Stanley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259930,'tas','Stieglitz');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97572,'tas','Stonor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97573,'tas','Stoodley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97574,'tas','Stowport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97575,'tas','Strahan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302402,'tas','Strathgordon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97576,'tas','Sulphur Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97577,'tas','Surges Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97578,'tas','Swansea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97579,'tas','Taranna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97580,'tas','Targa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97581,'tas','Taroona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97582,'tas','Tarraleah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97583,'tas','Tayene');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97584,'tas','Tea Tree');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97585,'tas','Tewkesbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97586,'tas','Thirlstane');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97587,'tas','Tinderbox');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302403,'tas','Tolmans Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97588,'tas','Tonganah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97589,'tas','Triabunna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97590,'tas','Trowutta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97591,'tas','Tullah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97592,'tas','Tunbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97593,'tas','Tunnack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252098,'tas','Turners Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97594,'tas','Turners Marsh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2772,'tas','Ulverstone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97595,'tas','Underwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97596,'tas','Upper Castra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97597,'tas','Upper Natone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97598,'tas','Waddamana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97599,'tas','Waratah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97600,'tas','Warrane');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97601,'tas','Wattle Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97602,'tas','Wattle Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97603,'tas','Weegena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97604,'tas','Weetah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97605,'tas','Weldborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97606,'tas','Wesley Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97607,'tas','West Kentish');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97608,'tas','Westbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97609,'tas','Western Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97610,'tas','Westerway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97611,'tas','Weymouth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97612,'tas','White Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97613,'tas','Whitefoord');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97614,'tas','Whitemark');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97615,'tas','Whitemore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97616,'tas','Wilmot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97617,'tas','Windermere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97618,'tas','Winkleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97619,'tas','Winnaleah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97620,'tas','Wivenhoe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97621,'tas','Woodbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97622,'tas','Woodbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97623,'tas','Woodsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97624,'tas','Woodstock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97625,'tas','Wyena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97626,'tas','Wynyard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97627,'tas','Yolla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97628,'tas','York Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97629,'tas','Zeehan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190779,'vic','Abbotsford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97630,'vic','Acheron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97631,'vic','Adelaide Lead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97632,'vic','Aireys Inlet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190741,'vic','Albert Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97633,'vic','Alberton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97634,'vic','Alberton West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97635,'vic','Albion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43448,'vic','Alexandra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97636,'vic','Alfredton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97637,'vic','Allambee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97638,'vic','Allansford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97639,'vic','Allendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97640,'vic','Allestree');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97641,'vic','Alma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97642,'vic','Almurta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251918,'vic','Alphington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43540,'vic','Altona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (264561,'vic','Altona North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97643,'vic','Alvie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259828,'vic','Amherst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97644,'vic','Amphitheatre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97645,'vic','Anakie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97646,'vic','Ancona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97647,'vic','Anderson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97648,'vic','Anglesea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97649,'vic','Antwerp');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97650,'vic','Apollo Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97651,'vic','Appin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97652,'vic','Appin South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97653,'vic','Apsley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97654,'vic','Ararat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97655,'vic','Arawata');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97656,'vic','Arcadia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97657,'vic','Archies Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302404,'vic','Ardeer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97658,'vic','Ardmona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97659,'vic','Argyle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97660,'vic','Armadale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97661,'vic','Armstrong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97662,'vic','Arnold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97663,'vic','Arthurs Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97664,'vic','Ascot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64714,'vic','Ascot Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (42467,'vic','Ashburton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11256,'vic','Aspendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97665,'vic','Athlone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97666,'vic','Auburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97667,'vic','Auburn South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97668,'vic','Avenel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97669,'vic','Avoca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190749,'vic','Avondale Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97670,'vic','Avonsleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97671,'vic','Axedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41770,'vic','Bacchus Marsh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97672,'vic','Baddaginnie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97673,'vic','Badger Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97674,'vic','Bagshot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97675,'vic','Bailieston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24035,'vic','Bairnsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97676,'vic','Bald Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97677,'vic','Ballan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97678,'vic','Ballangeich');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2260,'vic','Ballarat');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97679,'vic','Ballendella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97680,'vic','Balliang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97681,'vic','Balliang East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97682,'vic','Balmattum');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97683,'vic','Balmoral');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97684,'vic','Balnarring');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97685,'vic','Balnarring Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10349,'vic','Balwyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259832,'vic','Balwyn North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97686,'vic','Bamawm');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97687,'vic','Bambra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97688,'vic','Bamganie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97689,'vic','Bandiana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302405,'vic','Bandiana Milpo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97690,'vic','Bangerang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97691,'vic','Bannerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97692,'vic','Bannockburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97693,'vic','Baranduda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97694,'vic','Barfold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97695,'vic','Baringhup');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97696,'vic','Barkers Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97697,'vic','Barkly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97698,'vic','Barkstead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97699,'vic','Barmah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97700,'vic','Barnadown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97701,'vic','Barnawartha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97702,'vic','Barongarook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97703,'vic','Barraport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97704,'vic','Barrys Reef');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97705,'vic','Barwite');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97706,'vic','Barwon Heads');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97707,'vic','Bass');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97708,'vic','Batesford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261060,'vic','Batman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190694,'vic','Baw Baw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97709,'vic','Baxter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97710,'vic','Bayles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97711,'vic','Baynton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11936,'vic','Bayswater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97712,'vic','Beaconsfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97713,'vic','Beaconsfield Upper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97714,'vic','Bealiba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97715,'vic','Beaufort');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20814,'vic','Beaumaris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97716,'vic','Beazleys Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37745,'vic','Beeac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97717,'vic','Beech Forest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97718,'vic','Beechworth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97719,'vic','Beenak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97720,'vic','Belgrave');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97721,'vic','Belgrave Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97722,'vic','Belgrave South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97723,'vic','Bellarine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97724,'vic','Bellbrae');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252099,'vic','Bellbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11960,'vic','Belmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97725,'vic','Bena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64724,'vic','Benalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97726,'vic','Benambra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302406,'vic','Bend Of Islands');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4536,'vic','Bendigo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97727,'vic','Bendoc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97728,'vic','Bengworden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97729,'vic','Benloch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97730,'vic','Bennison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251971,'vic','Bentleigh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252057,'vic','Bentleigh East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97731,'vic','Beremboke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252058,'vic','Berrimal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97732,'vic','Berringa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97733,'vic','Berriwillock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97734,'vic','Berrys Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20815,'vic','Berwick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97735,'vic','Bessiebelle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97736,'vic','Bet Bet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97737,'vic','Bethanga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97738,'vic','Betley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97739,'vic','Beulah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302407,'vic','Beverford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97740,'vic','Beveridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97741,'vic','Big Pats Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97742,'vic','Biggara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97743,'vic','Billabong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97744,'vic','Bindi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97745,'vic','Binginwarri');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97746,'vic','Birchip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97747,'vic','Birregurra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97748,'vic','Bittern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251919,'vic','Black Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97749,'vic','Black Rock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11605,'vic','Blackburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97750,'vic','Blackheath');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97751,'vic','Blackwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302408,'vic','Blairgowrie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97752,'vic','Blakeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97753,'vic','Blampied');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259004,'vic','Blind Bight');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97754,'vic','Blowhard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97755,'vic','Bochara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97756,'vic','Boho');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97757,'vic','Boho South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97758,'vic','Boisdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97759,'vic','Bolinda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97760,'vic','Bolton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97761,'vic','Bolwarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97762,'vic','Bolwarrah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38551,'vic','Bonang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97763,'vic','Bonbeach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97764,'vic','Bonegilla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97765,'vic','Boneo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97766,'vic','Bonnie Doon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97767,'vic','Boolarra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97768,'vic','Boolarra South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97769,'vic','Boonah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97770,'vic','Boorcan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260980,'vic','Boorhaman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97771,'vic','Boort');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64695,'vic','Boronia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97772,'vic','Borung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97773,'vic','Bostocks Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302409,'vic','Boundary Bend');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97774,'vic','Bowenvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97775,'vic','Boweya');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12059,'vic','Box Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263104,'vic','Box Hill North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97776,'vic','Boxwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3905,'vic','Braeside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97777,'vic','Brandy Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97778,'vic','Branxholme');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (264567,'vic','Braybrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261061,'vic','Breakaway Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97779,'vic','Brewster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97780,'vic','Briagolong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64702,'vic','Briar Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97781,'vic','Bridgewater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97782,'vic','Bright');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43541,'vic','Brighton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (262047,'vic','Brighton East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97783,'vic','Brim');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97784,'vic','Brimpaen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97785,'vic','Bringalbert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97786,'vic','Broadford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10877,'vic','Broadmeadows');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97787,'vic','Broadwater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97788,'vic','Bromley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (243463,'vic','Brooklyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97789,'vic','Brookville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97790,'vic','Broughton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251920,'vic','Brown Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97791,'vic','Browns Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97792,'vic','Bruarong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97793,'vic','Brucknell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64684,'vic','Brunswick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190768,'vic','Brunswick East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263068,'vic','Brunswick West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97794,'vic','Bruthen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97795,'vic','Buangor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43449,'vic','Buchan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97796,'vic','Buchan South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97797,'vic','Buckland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97798,'vic','Buckley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97799,'vic','Buckrabanyule');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97800,'vic','Budgeree');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97801,'vic','Buffalo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97802,'vic','Buffalo River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97803,'vic','Bulla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97804,'vic','Bullarto');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64725,'vic','Bulleen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97805,'vic','Bullengarook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97806,'vic','Bullioh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97807,'vic','Bullumwaal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97808,'vic','Buln Buln');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97809,'vic','Buln Buln East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261871,'vic','Bumberrah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97810,'vic','Bunbartha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97811,'vic','Bundalaguah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97812,'vic','Bundalong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97813,'vic','Bunding');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3716,'vic','Bundoora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97814,'vic','Bung Bong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97815,'vic','Bungalally');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97816,'vic','Bungaree');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97817,'vic','Bungeet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97818,'vic','Bungil');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97819,'vic','Buninyong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97820,'vic','Bunyip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190786,'vic','Burnley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97821,'vic','Burramine South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4005,'vic','Burwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43208,'vic','Burwood East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97822,'vic','Bushfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97823,'vic','Buxton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97824,'vic','Byaduk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97825,'vic','Bylands');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97826,'vic','Byrneside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259852,'vic','Cabarita');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97827,'vic','Caldermeade');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97828,'vic','Callawadda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97829,'vic','Callignee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97830,'vic','Calrossie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4934,'vic','Camberwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261863,'vic','Camberwell South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97831,'vic','Cambrian Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97832,'vic','Campbellfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97833,'vic','Campbells Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97834,'vic','Campbelltown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11045,'vic','Camperdown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97835,'vic','Canadian');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43451,'vic','Cann River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252020,'vic','Canterbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97836,'vic','Cape Bridgewater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97837,'vic','Cape Clear');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97838,'vic','Carag Carag');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97839,'vic','Caramut');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97840,'vic','Carapooee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260998,'vic','Carapook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97841,'vic','Carboor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97842,'vic','Cardigan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97843,'vic','Cardinia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97844,'vic','Carina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97845,'vic','Carisbrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97846,'vic','Carlisle River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97847,'vic','Carlsruhe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190746,'vic','Carlton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263091,'vic','Carlton North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48753,'vic','Carnegie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97848,'vic','Carngham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190803,'vic','Caroline Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97849,'vic','Carpendeit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97850,'vic','Carrajung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97851,'vic','Carrajung Lower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97852,'vic','Carrajung South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97853,'vic','Carrum');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64719,'vic','Carrum Downs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97854,'vic','Cashmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97855,'vic','Castella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97856,'vic','Casterton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37788,'vic','Castlemaine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97857,'vic','Catani');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11833,'vic','Caulfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (262046,'vic','Caulfield North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97858,'vic','Cavendish');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97859,'vic','Ceres');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261001,'vic','Chapple Vale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37694,'vic','Charlton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35338,'vic','Chelsea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97860,'vic','Chelsea Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12102,'vic','Cheltenham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259835,'vic','Chepstowe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97861,'vic','Cheshunt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97862,'vic','Chetwynd');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97863,'vic','Chewton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97864,'vic','Childers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97865,'vic','Chillingollah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97866,'vic','Chiltern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (264554,'vic','Chirnside Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97867,'vic','Christmas Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259000,'vic','Churchill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97868,'vic','Clarendon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252100,'vic','Clarinda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97869,'vic','Clarkefield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3666,'vic','Clayton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97870,'vic','Clematis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251921,'vic','Clifton Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97871,'vic','Clifton Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97872,'vic','Cloverlea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97873,'vic','Club Terrace');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97874,'vic','Clunes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97875,'vic','Clyde');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97876,'vic','Clyde North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97877,'vic','Clydesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97878,'vic','Cobaw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97879,'vic','Cobden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14656,'vic','Cobram');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97880,'vic','Cobrico');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64692,'vic','Coburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97881,'vic','Cockatoo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97882,'vic','Codrington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97883,'vic','Coghills Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97884,'vic','Cohuna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97885,'vic','Coimadai');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97886,'vic','Colac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97887,'vic','Colbinabbin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97888,'vic','Coldstream');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97889,'vic','Coleraine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97890,'vic','Colignan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19760,'vic','Collingwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97891,'vic','Combienbar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97892,'vic','Condah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302410,'vic','Congupna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97893,'vic','Connewarre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251950,'vic','Coongulla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97894,'vic','Cora Lynn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97895,'vic','Corack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97896,'vic','Corack East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97897,'vic','Corinella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43542,'vic','Corio');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97898,'vic','Cornella');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261062,'vic','Cornishtown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252021,'vic','Coronet Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97899,'vic','Corop');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97900,'vic','Cororooke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97901,'vic','Corryong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97902,'vic','Cosgrove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260968,'vic','Cotham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97903,'vic','Cottles Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97904,'vic','Cowangie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97905,'vic','Cowes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97906,'vic','Cowwarr');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64699,'vic','Craigieburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38549,'vic','Cranbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97907,'vic','Cremorne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97908,'vic','Cressy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97909,'vic','Creswick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97910,'vic','Crib Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97911,'vic','Crossley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97912,'vic','Crossover');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97913,'vic','Croxton East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39513,'vic','Croydon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97914,'vic','Croydon North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97915,'vic','Cudgee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97916,'vic','Cudgewa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97917,'vic','Culgoa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97918,'vic','Culla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97919,'vic','Curlewis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97920,'vic','Daisy Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97921,'vic','Dalmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97922,'vic','Dalyston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17582,'vic','Dandenong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97923,'vic','Darley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97924,'vic','Darlimurla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251951,'vic','Darling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97925,'vic','Darlington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97926,'vic','Darnum');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251972,'vic','Dartmoor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97927,'vic','Dawson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97928,'vic','Daylesford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97929,'vic','Dean');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97930,'vic','Deans Marsh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97931,'vic','Dederang');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97932,'vic','Deep Lead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64701,'vic','Deer Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97933,'vic','Delburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97934,'vic','Denison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97935,'vic','Dennington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97936,'vic','Denver');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97937,'vic','Derby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97938,'vic','Dereel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97939,'vic','Dergholm');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97940,'vic','Derrimut');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97941,'vic','Derrinal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97942,'vic','Derrinallum');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97943,'vic','Devenish');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97944,'vic','Devon Meadows');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261059,'vic','Devon North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97945,'vic','Diamond Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97946,'vic','Digby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97947,'vic','Diggers Rest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37742,'vic','Dimboola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37809,'vic','Dingee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43543,'vic','Dingley Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97948,'vic','Dingwall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97949,'vic','Dixie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97950,'vic','Dixons Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97951,'vic','Dobie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97952,'vic','Docker');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190725,'vic','Docklands');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97953,'vic','Dollar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37671,'vic','Donald');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (42025,'vic','Doncaster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64696,'vic','Doncaster East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97954,'vic','Donnybrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97955,'vic','Donvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97956,'vic','Dooen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97957,'vic','Dookie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97958,'vic','Doreen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97959,'vic','Douglas');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43544,'vic','Doveton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97960,'vic','Dreeite');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97961,'vic','Dromana');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97962,'vic','Drouin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97963,'vic','Drouin South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97964,'vic','Drouin West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97965,'vic','Drumanure');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97966,'vic','Drumborg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97967,'vic','Drummond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97968,'vic','Drysdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97969,'vic','Dumbalk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97970,'vic','Dunach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97971,'vic','Dunkeld');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97972,'vic','Dunluce');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97973,'vic','Dunnstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97974,'vic','Dunolly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97975,'vic','Durham Lead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97976,'vic','Durham Ox');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97977,'vic','Eagle Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97978,'vic','Eaglehawk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190667,'vic','Eaglemont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97979,'vic','Earlston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263107,'vic','East Melbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302411,'vic','East Sale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97980,'vic','Ebden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24039,'vic','Echuca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97981,'vic','Echuca Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97982,'vic','Ecklin South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97983,'vic','Eddington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97984,'vic','Eden Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97985,'vic','Edenhope');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97986,'vic','Edgecombe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97987,'vic','Edi Upper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97988,'vic','Edithvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97989,'vic','Eganstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97990,'vic','Eildon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97991,'vic','Elaine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97992,'vic','Eldorado');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97993,'vic','Elingamite North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97994,'vic','Ellerslie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97995,'vic','Elliminyt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97996,'vic','Ellinbank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97997,'vic','Elmhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97998,'vic','Elmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (97999,'vic','Elphinstone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64715,'vic','Elsternwick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64707,'vic','Eltham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98000,'vic','Eltham North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19453,'vic','Elwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98001,'vic','Emerald');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98002,'vic','Emu Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64694,'vic','Endeavour Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252101,'vic','Enfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261056,'vic','Englefield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98003,'vic','Ensay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98004,'vic','Eppalock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11211,'vic','Epping');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98005,'vic','Epsom');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98006,'vic','Erica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64693,'vic','Essendon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98007,'vic','Euroa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98008,'vic','Eurobin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98009,'vic','Evansford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98010,'vic','Eversley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98011,'vic','Everton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98012,'vic','Exford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (252131,'vic','Fairfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98013,'vic','Fairhaven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98014,'vic','Faraday');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98015,'vic','Fawkner');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98016,'vic','Fentons Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98017,'vic','Ferguson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98018,'vic','Fern Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98019,'vic','Fernbank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98020,'vic','Ferndale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98021,'vic','Fernihurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98022,'vic','Fernshaw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251973,'vic','Ferntree Gully');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98023,'vic','Ferny Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98024,'vic','Fish Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98025,'vic','Fish Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4618,'vic','Fitzroy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (190778,'vic','Flemington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98026,'vic','Flinders');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98027,'vic','Flowerdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98028,'vic','Flynn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11266,'vic','Footscray');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98029,'vic','Forest Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98030,'vic','Forge Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98031,'vic','Forrest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98032,'vic','Foster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98033,'vic','Foxhow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98034,'vic','Framlingham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35054,'vic','Frankston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98035,'vic','Frankston East');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (302412,'vic','Frankston North');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98036,'vic','Freeburgh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259002,'vic','French Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98037,'vic','Freshwater Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98038,'vic','Fryerstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98039,'vic','Fulham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98040,'vic','Fumina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98041,'vic','Fumina South');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98042,'vic','Fyansford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98043,'vic','Gainsborough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98044,'vic','Gapsted');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251974,'vic','Gardenvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98045,'vic','Garfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98046,'vic','Garibaldi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98047,'vic','Garvoc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11615,'vic','Geelong');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98048,'vic','Geelong West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98049,'vic','Gelantipy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98050,'vic','Gellibrand');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98051,'vic','Gembrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98052,'vic','Genoa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98053,'vic','Georges Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98054,'vic','Gerang Gerung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98055,'vic','Gerangamete');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98056,'vic','Germantown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98057,'vic','Gheringhap');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98058,'vic','Giffard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98059,'vic','Gilderoy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98060,'vic','Gipsy Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (259011,'vic','Girgarre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37801,'vic','Gisborne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98061,'vic','Gladysdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98062,'vic','Glen Alvie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98063,'vic','Glen Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98064,'vic','Glen Forbes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43545,'vic','Glen Huntly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13004,'vic','Glen Iris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11164,'vic','Glen Waverley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98065,'vic','Glenaladale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98066,'vic','Glenaroua');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98067,'vic','Glenbrae');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98068,'vic','Glenburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98069,'vic','Glendaruel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98070,'vic','Glenfyne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98071,'vic','Glengarry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98072,'vic','Glengarry West');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (98073,'vic','Glengower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51794,'ny','Orwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6203,'ny','Ossining');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51856,'ny','Oswegatchie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17,'ny','Oswego');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51906,'ny','Otego');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30511,'ny','Otisville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52038,'ny','Otto');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51907,'ny','Ouaquaga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34399,'ny','Ovid');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23678,'ny','Owego');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51702,'ny','Owls Head');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51826,'ny','Oxbow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50189,'ny','Oxford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8151,'ny','Oyster Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20009,'ny','Ozone Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6555,'ny','Painted Post');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46593,'ny','Palatine Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51582,'ny','Palenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3617,'ny','Palisades');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18344,'ny','Palmyra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52039,'ny','Panama');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51658,'ny','Paradox');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30512,'ny','Parish');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38773,'ny','Parishville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51629,'ny','Parksville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8375,'ny','Patchogue');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6421,'ny','Patterson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51528,'ny','Pattersonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16029,'ny','Paul Smiths');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20584,'ny','Pavilion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4532,'ny','Pawling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4101,'ny','Pearl River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16162,'ny','Peconic');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10687,'ny','Peekskill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17525,'ny','Pelham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15834,'ny','Penfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8722,'ny','Penn Yan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51743,'ny','Pennellville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51993,'ny','Perkinsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37529,'ny','Perry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51956,'ny','Perrysburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46598,'ny','Peru');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51744,'ny','Peterboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (21008,'ny','Petersburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14756,'ny','Phelps');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51859,'ny','Philadelphia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51630,'ny','Phillipsport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34400,'ny','Philmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19664,'ny','Phoenicia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38944,'ny','Phoenix');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51703,'ny','Piercefield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10049,'ny','Piermont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51860,'ny','Pierrepont Manor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51994,'ny','Piffard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51957,'ny','Pike');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8475,'ny','Pine Bush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52077,'ny','Pine City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20062,'ny','Pine Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50190,'ny','Pine Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34401,'ny','Pine Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52078,'ny','Pine Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51529,'ny','Piseco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51745,'ny','Pitcher');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5841,'ny','Pittsford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2499,'ny','Plainview');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6772,'ny','Plainville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51603,'ny','Plattekill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3173,'ny','Plattsburgh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10099,'ny','Pleasant Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2278,'ny','Pleasantville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50191,'ny','Plessis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48604,'ny','Plymouth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51530,'ny','Poestenkill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50192,'ny','Point Lookout');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51795,'ny','Poland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16595,'ny','Pomona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51746,'ny','Pompey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51631,'ny','Pond Eddy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46243,'ny','Poplar Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30513,'ny','Port Byron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (365,'ny','Port Chester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51908,'ny','Port Crane');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48175,'ny','Port Ewen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51995,'ny','Port Gibson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34402,'ny','Port Henry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13798,'ny','Port Jefferson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8868,'ny','Port Jefferson Station');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4361,'ny','Port Jervis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51704,'ny','Port Kent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51796,'ny','Port Leyden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5102,'ny','Port Washington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23679,'ny','Portageville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51659,'ny','Porter Corners');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38707,'ny','Portland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51909,'ny','Portlandville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46026,'ny','Portville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2976,'ny','Potsdam');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37779,'ny','Pottersville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (187,'ny','Poughkeepsie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48069,'ny','Poughquag');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6204,'ny','Pound Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24140,'ny','Prattsburgh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51583,'ny','Prattsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51747,'ny','Preble');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51584,'ny','Preston Hollow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51797,'ny','Prospect');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5791,'ny','Pulaski');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52079,'ny','Pulteney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48170,'ny','Pultneyville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2656,'ny','Purchase');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23472,'ny','Purdys');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51585,'ny','Purling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34403,'ny','Putnam Station');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36938,'ny','Putnam Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51861,'ny','Pyrites');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51531,'ny','Quaker Street');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (618369,'ny','Queens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23680,'ny','Queens Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5248,'ny','Queensbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16303,'ny','Quogue');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30514,'ny','Rainbow Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45782,'ny','Randolph');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18740,'ny','Ransomville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50193,'ny','Raquette Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51532,'ny','Ravena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34404,'ny','Ray Brook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51862,'ny','Raymondville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52080,'ny','Reading Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9159,'ny','Red Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10087,'ny','Red Hook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51798,'ny','Redfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51705,'ny','Redford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51863,'ny','Redwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23681,'ny','Rego Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39394,'ny','Remsen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50194,'ny','Remsenburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5649,'ny','Rensselaer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51864,'ny','Rensselaer Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5810,'ny','Rensselaerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37519,'ny','Retsof');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13098,'ny','Rexford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52081,'ny','Rexville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6993,'ny','Rhinebeck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34405,'ny','Rhinecliff');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52040,'ny','Richburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15535,'ny','Richfield Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51893,'ny','Richford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51748,'ny','Richland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23682,'ny','Richmond Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51533,'ny','Richmondville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51865,'ny','Richville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10943,'ny','Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18105,'ny','Ridgewood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18731,'ny','Rifton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51660,'ny','Riparius');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50777,'ny','Ripley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1289,'ny','Riverhead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (125,'ny','Rochester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51661,'ny','Rock City Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8419,'ny','Rock Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52082,'ny','Rock Stream');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46479,'ny','Rock Tavern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23683,'ny','Rockaway Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6397,'ny','Rockville Centre');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10187,'ny','Rocky Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51866,'ny','Rodman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (892,'ny','Rome');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4927,'ny','Romulus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6208,'ny','Ronkonkoma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34406,'ny','Roosevelt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51867,'ny','Rooseveltown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18800,'ny','Roscoe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51996,'ny','Rose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51799,'ny','Roseboom');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6774,'ny','Rosedale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20521,'ny','Rosendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6523,'ny','Roslyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7957,'ny','Roslyn Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41248,'ny','Rotterdam Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46600,'ny','Round Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51586,'ny','Round Top');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34407,'ny','Rouses Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50195,'ny','Roxbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51587,'ny','Ruby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48800,'ny','Rush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52041,'ny','Rushford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37513,'ny','Rushville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51868,'ny','Russell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3807,'ny','Rye');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51662,'ny','Sabael');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34408,'ny','Sackets Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30516,'ny','Sag Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50196,'ny','Sagaponack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (248602,'ny','Saint Regis Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18739,'ny','Salamanca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17263,'ny','Salem');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51800,'ny','Salisbury Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51604,'ny','Salisbury Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34409,'ny','Salt Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13526,'ny','Sanborn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51534,'ny','Sand Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51943,'ny','Sandusky');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41229,'ny','Sandy Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50197,'ny','Sangerfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51706,'ny','Saranac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13523,'ny','Saranac Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4102,'ny','Saratoga Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51959,'ny','Sardinia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9080,'ny','Saugerties');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5605,'ny','Sauquoit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23684,'ny','Savannah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50198,'ny','Savona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10053,'ny','Sayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5463,'ny','Scarsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51535,'ny','Schaghticoke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2418,'ny','Schenectady');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51536,'ny','Schenevus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48167,'ny','Schodack Landing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16539,'ny','Schoharie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46006,'ny','Schroon Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51707,'ny','Schuyler Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51801,'ny','Schuyler Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51663,'ny','Schuylerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52083,'ny','Scio');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (21001,'ny','Scipio Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51997,'ny','Scottsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20088,'ny','Scottsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8449,'ny','Sea Cliff');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13421,'ny','Seaford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2344,'ny','Selden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30517,'ny','Selkirk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51998,'ny','Seneca Castle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6985,'ny','Seneca Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51664,'ny','Severance');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51588,'ny','Shandaken');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51802,'ny','Sharon Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34410,'ny','Shelter Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50199,'ny','Shelter Island Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38563,'ny','Shenorock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51803,'ny','Sherburne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51960,'ny','Sheridan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52042,'ny','Sherman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50200,'ny','Sherrill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51911,'ny','Shinhopple');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16301,'ny','Shirley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8494,'ny','Shokan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20634,'ny','Shoreham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45878,'ny','Shortsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30518,'ny','Shrub Oak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34411,'ny','Shushan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9094,'ny','Sidney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51912,'ny','Sidney Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50201,'ny','Silver Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18766,'ny','Silver Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51999,'ny','Silver Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11578,'ny','Silver Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52043,'ny','Sinclairville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11687,'ny','Skaneateles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12061,'ny','Skaneateles Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50202,'ny','Slate Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52084,'ny','Slaterville Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46606,'ny','Slingerlands');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51537,'ny','Sloansville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34412,'ny','Sloatsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51633,'ny','Smallwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51913,'ny','Smithboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6209,'ny','Smithtown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50203,'ny','Smithville Flats');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36575,'ny','Smyrna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7986,'ny','Sodus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18343,'ny','Sodus Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51804,'ny','Solsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1819,'ny','Somers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47897,'ny','Sonyea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34413,'ny','Sound Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15036,'ny','South Bethlehem');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51749,'ny','South Butler');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52000,'ny','South Byron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51589,'ny','South Cairo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51869,'ny','South Colton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6414,'ny','South Dayton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30519,'ny','South Fallsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16616,'ny','South Glens Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50204,'ny','South Jamesport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51914,'ny','South Kortright');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52001,'ny','South Lima');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51915,'ny','South New Berlin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51750,'ny','South Otselic');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30520,'ny','South Ozone Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51916,'ny','South Plymouth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30521,'ny','South Richmond Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7176,'ny','South Salem');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30522,'ny','South Wales');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2542,'ny','Southampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50205,'ny','Southfields');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20150,'ny','Southold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13337,'ny','Sparkill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51634,'ny','Sparrow Bush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51538,'ny','Speculator');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34414,'ny','Spencer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6872,'ny','Spencerport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34415,'ny','Spencertown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50206,'ny','Speonk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39246,'ny','Sprakers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51961,'ny','Spring Brook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51590,'ny','Spring Glen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2067,'ny','Spring Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51805,'ny','Springfield Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19473,'ny','Springfield Gardens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6413,'ny','Springville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38706,'ny','Springwater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50207,'ny','St Albans');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10945,'ny','St Bonaventure');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15904,'ny','St James');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50208,'ny','St Johnsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13352,'ny','Staatsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43427,'ny','Stafford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17215,'ny','Stamford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34416,'ny','Stanfordville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52002,'ny','Stanley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46016,'ny','Star Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1290,'ny','Staten Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52044,'ny','Steamburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51948,'ny','Stella Niagara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51539,'ny','Stephentown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51751,'ny','Sterling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6980,'ny','Sterling Forest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30523,'ny','Stillwater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51806,'ny','Stittville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52045,'ny','Stockton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13253,'ny','Stone Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (40,'ny','Stony Brook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51665,'ny','Stony Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34417,'ny','Stony Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50209,'ny','Stormville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34418,'ny','Stottville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52046,'ny','Stow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51807,'ny','Stratford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47163,'ny','Strykersville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34419,'ny','Stuyvesant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34420,'ny','Stuyvesant Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5760,'ny','Suffern');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51488,'ny','Sugar Loaf');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51543,'ny','Summit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51635,'ny','Summitville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23685,'ny','Sunnyside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51544,'ny','Surprise');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52085,'ny','Swain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51322,'ny','Swan Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51752,'ny','Sylvan Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6398,'ny','Syosset');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (145,'ny','Syracuse');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51808,'ny','Taberg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39794,'ny','Tallman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51566,'ny','Tannersville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18618,'ny','Tappan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3761,'ny','Tarrytown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51809,'ny','Thendara');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51871,'ny','Theresa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34421,'ny','Thiells');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51489,'ny','Thompson Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51636,'ny','Thompsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7240,'ny','Thornwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263247,'ny','Thousand Island Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50210,'ny','Three Mile Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5812,'ny','Ticonderoga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51592,'ny','Tillson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34422,'ny','Tioga Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17910,'ny','Tivoli');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34423,'ny','Tomkins Cove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1944,'ny','Tonawanda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51917,'ny','Treadwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51545,'ny','Tribes Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52086,'ny','Troupsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51918,'ny','Trout Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2423,'ny','Troy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17971,'ny','Trumansburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51720,'ny','Truxton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5360,'ny','Tuckahoe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39070,'ny','Tully');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51919,'ny','Tunnel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22688,'ny','Tupper Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51810,'ny','Turin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17057,'ny','Tuxedo Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52087,'ny','Tyrone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30524,'ny','Ulster Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50211,'ny','Unadilla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52003,'ny','Union Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30525,'ny','Union Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5597,'ny','Uniondale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39028,'ny','Unionville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51708,'ny','Upper Jay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3668,'ny','Upton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (891,'ny','Utica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50212,'ny','Vails Gate');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34424,'ny','Valatie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3542,'ny','Valhalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6979,'ny','Valley Cottage');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51546,'ny','Valley Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5439,'ny','Valley Stream');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51963,'ny','Van Buren Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52088,'ny','Van Etten');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51811,'ny','Van Hornesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51964,'ny','Varysburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50213,'ny','Verbank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51709,'ny','Vermontville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8105,'ny','Vernon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51812,'ny','Vernon Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5117,'ny','Verona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51754,'ny','Verona Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50214,'ny','Verplanck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51965,'ny','Versailles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6530,'ny','Vestal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5499,'ny','Victor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51668,'ny','Victory Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5809,'ny','Voorheesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8968,'ny','Waccabuc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38766,'ny','Waddington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23473,'ny','Wading River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46763,'ny','Wainscott');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8285,'ny','Walden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51966,'ny','Wales Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51605,'ny','Walker Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6982,'ny','Wallkill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35058,'ny','Walton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30526,'ny','Walworth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50215,'ny','Wampsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50216,'ny','Wanakena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7850,'ny','Wantagh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6693,'ny','Wappingers Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51755,'ny','Warners');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51547,'ny','Warnerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45974,'ny','Warrensburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18408,'ny','Warsaw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12051,'ny','Warwick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46260,'ny','Washington Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5465,'ny','Washingtonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51606,'ny','Wassaic');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34425,'ny','Water Mill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38708,'ny','Waterford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16762,'ny','Waterloo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52004,'ny','Waterport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (974,'ny','Watertown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16299,'ny','Waterville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4722,'ny','Watervliet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34426,'ny','Watkins Glen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37783,'ny','Waverly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51593,'ny','Wawarsing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37518,'ny','Wayland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52089,'ny','Wayne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5088,'ny','Webster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5795,'ny','Weedsport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34427,'ny','Wellesley Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51548,'ny','Wells');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51920,'ny','Wells Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52090,'ny','Wellsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38871,'ny','Wellsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8438,'ny','West Babylon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52005,'ny','West Bloomfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51813,'ny','West Burlington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51594,'ny','West Camp');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51710,'ny','West Chazy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52047,'ny','West Clarksville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46601,'ny','West Coxsackie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51921,'ny','West Davenport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51815,'ny','West Eaton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51816,'ny','West Edmeston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36579,'ny','West Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51550,'ny','West Fulton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23686,'ny','West Harrison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19310,'ny','West Haverstraw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8739,'ny','West Hempstead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5842,'ny','West Henrietta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6697,'ny','West Hurley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10175,'ny','West Islip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51595,'ny','West Kill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34429,'ny','West Lebanon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51819,'ny','West Leyden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51756,'ny','West Monroe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6696,'ny','West Nyack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51922,'ny','West Oneonta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50217,'ny','West Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3570,'ny','West Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50218,'ny','West Sand Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10177,'ny','West Sayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37509,'ny','West Shokan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51872,'ny','West Stockholm');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16576,'ny','West Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51820,'ny','West Winfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51637,'ny','Westbrookville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5147,'ny','Westbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51814,'ny','Westdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51504,'ny','Westerlo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51817,'ny','Westernville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4329,'ny','Westfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51818,'ny','Westford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9095,'ny','Westhampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8712,'ny','Westhampton Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30527,'ny','Westmoreland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52048,'ny','Westons Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16239,'ny','Westport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50219,'ny','Westtown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51669,'ny','Wevertown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51711,'ny','Whippleville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38704,'ny','White Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (238,'ny','White Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51638,'ny','White Sulphur Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34430,'ny','Whitehall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44873,'ny','Whitesboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6815,'ny','Whitestone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51210,'ny','Whitesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48168,'ny','Whitney Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52006,'ny','Willard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51923,'ny','Willet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23687,'ny','Williamson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51821,'ny','Williamstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1868,'ny','Williston Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51596,'ny','Willow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15413,'ny','Willsboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51924,'ny','Willseyville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34431,'ny','Wilmington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51967,'ny','Wilson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30528,'ny','Windham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44462,'ny','Windsor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37505,'ny','Wingdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51873,'ny','Winthrop');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51712,'ny','Witherbee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39245,'ny','Wolcott');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51639,'ny','Woodbourne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4330,'ny','Woodbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51822,'ny','Woodgate');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30529,'ny','Woodhaven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52091,'ny','Woodhull');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6816,'ny','Woodmere');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51640,'ny','Woodridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7287,'ny','Woodside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13353,'ny','Woodstock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19470,'ny','Worcester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50220,'ny','Wurtsboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17309,'ny','Wyandanch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23688,'ny','Wynantskill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37527,'ny','Wyoming');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10532,'ny','Yaphank');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1452,'ny','Yonkers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6335,'ny','York');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51968,'ny','Yorkshire');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2599,'ny','Yorktown Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18176,'ny','Yorkville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47066,'ny','Youngstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51641,'ny','Youngsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51642,'ny','Yulan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39100,'ny','Accord');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51551,'ny','Acra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51823,'ny','Adams');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51969,'ny','Adams Basin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51824,'ny','Adams Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41217,'ny','Addison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22243,'ny','Adirondack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8971,'ny','Afton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6410,'ny','Akron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (148,'ny','Albany');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5798,'ny','Albertson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35653,'ny','Albion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50151,'ny','Alcove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18748,'ny','Alden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51757,'ny','Alder Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37514,'ny','Alexander');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34344,'ny','Alexandria Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2417,'ny','Alfred');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61195,'ny','Alfred Station');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16766,'ny','Allegany');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52007,'ny','Allentown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35655,'ny','Alma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52049,'ny','Almond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52050,'ny','Alpine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51493,'ny','Alplaus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16043,'ny','Altamont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51758,'ny','Altmar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51970,'ny','Alton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51670,'ny','Altona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37516,'ny','Amagansett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10406,'ny','Amawalk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20465,'ny','Amenia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5799,'ny','Amityville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8131,'ny','Amsterdam');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34345,'ny','Ancram');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34346,'ny','Ancramdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43533,'ny','Andes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17997,'ny','Andover');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52008,'ny','Angelica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6411,'ny','Angola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35270,'ny','Annandale On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51825,'ny','Antwerp');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8753,'ny','Apalachin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51925,'ny','Appleton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61277,'ny','Apulia Station');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2975,'ny','Aquebogue');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18178,'ny','Arcade');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51481,'ny','Arden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8017,'ny','Ardsley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263244,'ny','Ardsley On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34347,'ny','Argyle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52051,'ny','Arkport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51552,'ny','Arkville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8582,'ny','Armonk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46599,'ny','Arverne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51553,'ny','Ashland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50152,'ny','Ashville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3531,'ny','Astoria');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37502,'ny','Athens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51643,'ny','Athol');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51926,'ny','Athol Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52052,'ny','Atlanta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34348,'ny','Atlantic Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30477,'ny','Attica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51671,'ny','Au Sable Forks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4587,'ny','Auburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16760,'ny','Aurora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34349,'ny','Austerlitz');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39393,'ny','Ava');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37510,'ny','Averill Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48725,'ny','Avoca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37522,'ny','Avon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1446,'ny','Babylon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9217,'ny','Bainbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51644,'ny','Bakers Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8153,'ny','Baldwin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50153,'ny','Baldwin Place');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6554,'ny','Baldwinsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15794,'ny','Ballston Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5815,'ny','Ballston Spa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34350,'ny','Bangall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50154,'ny','Barker');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39392,'ny','Barneveld');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34351,'ny','Barrytown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51607,'ny','Barryville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51874,'ny','Barton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51928,'ny','Basom');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6416,'ny','Batavia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18798,'ny','Bath');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2283,'ny','Bay Shore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5789,'ny','Bayport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23659,'ny','Bayside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8774,'ny','Bayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9050,'ny','Beacon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34352,'ny','Bear Mountain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18052,'ny','Bearsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51321,'ny','Beaver Dams');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51759,'ny','Beaver Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2085,'ny','Bedford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7177,'ny','Bedford Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52009,'ny','Belfast');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10688,'ny','Bellerose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51827,'ny','Belleville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8076,'ny','Bellmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51971,'ny','Bellona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3540,'ny','Bellport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51482,'ny','Bellvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6949,'ny','Belmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47006,'ny','Bemus Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30478,'ny','Bergen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51875,'ny','Berkshire');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51494,'ny','Berlin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51495,'ny','Berne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51713,'ny','Bernhards Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38705,'ny','Bethel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3788,'ny','Bethpage');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36266,'ny','Big Flats');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51554,'ny','Big Indian');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51597,'ny','Billings');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (608,'ny','Binghamton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52010,'ny','Black Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51828,'ny','Black River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14804,'ny','Blauvelt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50155,'ny','Bliss');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51876,'ny','Blodgett Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13186,'ny','Bloomfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51483,'ny','Blooming Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50156,'ny','Bloomingburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51672,'ny','Bloomingdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51555,'ny','Bloomington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51877,'ny','Bloomville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48158,'ny','Blossvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51026,'ny','Blue Mountain Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34353,'ny','Blue Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6423,'ny','Bohemia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51556,'ny','Boiceville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52011,'ny','Bolivar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37531,'ny','Bolton Landing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17262,'ny','Bombay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44269,'ny','Boonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50157,'ny','Boston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48985,'ny','Bouckville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51878,'ny','Bovina Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16216,'ny','Bowmansville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52053,'ny','Bradford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34354,'ny','Brainard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51673,'ny','Brainardsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51972,'ny','Branchport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30479,'ny','Brant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51645,'ny','Brant Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51760,'ny','Brantingham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38769,'ny','Brasher Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52054,'ny','Breesport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50158,'ny','Breezy Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (528,'ny','Brentwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19183,'ny','Brewerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2070,'ny','Brewster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9858,'ny','Briarcliff Manor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19477,'ny','Bridgehampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19660,'ny','Bridgeport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13736,'ny','Bridgewater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38770,'ny','Brier Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19476,'ny','Brightwaters');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34355,'ny','Broadalbin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3212,'ny','Brockport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52012,'ny','Brocton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (65,'ny','Bronx');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2969,'ny','Bronxville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51762,'ny','Brookfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30480,'ny','Brookhaven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (366,'ny','Brooklyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52055,'ny','Brooktondale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51829,'ny','Brownville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51034,'ny','Brushton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18013,'ny','Buchanan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (146,'ny','Buffalo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51484,'ny','Bullville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (24136,'ny','Burdett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51674,'ny','Burke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51608,'ny','Burlingham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51763,'ny','Burlington Flats');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16183,'ny','Burnt Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51929,'ny','Burt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17278,'ny','Buskirk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30481,'ny','Byron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51675,'ny','Cadyville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37503,'ny','Cairo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51830,'ny','Calcium');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37523,'ny','Caledonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20144,'ny','Callicoon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51609,'ny','Callicoon Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6776,'ny','Calverton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30482,'ny','Cambria Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15288,'ny','Cambridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5793,'ny','Camden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52056,'ny','Cameron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52057,'ny','Cameron Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6264,'ny','Camillus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19113,'ny','Campbell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14754,'ny','Campbell Hall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34356,'ny','Canaan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16240,'ny','Canajoharie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3365,'ny','Canandaigua');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52059,'ny','Canaseraga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46595,'ny','Canastota');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44270,'ny','Candor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52013,'ny','Caneadea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46867,'ny','Canisteo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2634,'ny','Canton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34357,'ny','Cape Vincent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6524,'ny','Carle Place');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51496,'ny','Carlisle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1451,'ny','Carmel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51497,'ny','Caroga Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51831,'ny','Carthage');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52014,'ny','Cassadaga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50729,'ny','Cassville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51973,'ny','Castile');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51879,'ny','Castle Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50159,'ny','Castle Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5813,'ny','Castleton On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51832,'ny','Castorland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51714,'ny','Cato');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10505,'ny','Catskill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45970,'ny','Cattaraugus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51715,'ny','Cayuga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52060,'ny','Cayuta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5792,'ny','Cazenovia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8489,'ny','Cedarhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52015,'ny','Celoron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34358,'ny','Center Moriches');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14722,'ny','Centereach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11545,'ny','Centerport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51930,'ny','Centerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51498,'ny','Central Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2348,'ny','Central Islip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50160,'ny','Central Square');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19305,'ny','Central Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52016,'ny','Ceres');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17519,'ny','Chadwicks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51931,'ny','Chaffee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9221,'ny','Champlain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18395,'ny','Chappaqua');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51499,'ny','Charlotteville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51833,'ny','Chase Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51676,'ny','Chateaugay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9153,'ny','Chatham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36183,'ny','Chaumont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2903,'ny','Chautauqua');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18252,'ny','Chazy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51598,'ny','Chelsea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44271,'ny','Chemung');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50161,'ny','Chenango Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46738,'ny','Chenango Forks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52017,'ny','Cherry Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17214,'ny','Cherry Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5831,'ny','Chester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50162,'ny','Chestertown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51557,'ny','Chichester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51677,'ny','Childwold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48172,'ny','Chippewa Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6527,'ny','Chittenango');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30483,'ny','Churchville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50163,'ny','Churubusco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6528,'ny','Cicero');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50164,'ny','Cincinnatus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51485,'ny','Circleville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5785,'ny','Clarence');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30484,'ny','Clarence Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51974,'ny','Clarendon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51764,'ny','Clark Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22882,'ny','Clarkson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50165,'ny','Clarksville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46602,'ny','Claryville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16610,'ny','Claverack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17143,'ny','Clay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10165,'ny','Clayton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51765,'ny','Clayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34359,'ny','Clemons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51716,'ny','Cleveland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45497,'ny','Cleverdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5808,'ny','Clifton Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17972,'ny','Clifton Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51500,'ny','Climax');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2276,'ny','Clinton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37504,'ny','Clinton Corners');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51599,'ny','Clintondale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51717,'ny','Clockville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46244,'ny','Clyde');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52018,'ny','Clymer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3888,'ny','Cobleskill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51610,'ny','Cochecton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51611,'ny','Cochecton Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51501,'ny','Coeymans');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51502,'ny','Coeymans Hollow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52061,'ny','Cohocton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6990,'ny','Cohoes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51766,'ny','Cold Brook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18073,'ny','Cold Spring');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4148,'ny','Cold Spring Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51932,'ny','Colden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8537,'ny','College Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51880,'ny','Colliersville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36563,'ny','Collins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51933,'ny','Collins Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37532,'ny','Colton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34360,'ny','Columbiaville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2503,'ny','Commack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34361,'ny','Comstock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51975,'ny','Conesus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52019,'ny','Conewango Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1450,'ny','Congers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16376,'ny','Conklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51558,'ny','Connelly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51678,'ny','Constable');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51767,'ny','Constableville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51718,'ny','Constantia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52062,'ny','Coopers Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13206,'ny','Cooperstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34362,'ny','Copake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51600,'ny','Copake Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51834,'ny','Copenhagen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19474,'ny','Copiague');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7056,'ny','Coram');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51881,'ny','Corbettsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37528,'ny','Corfu');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38992,'ny','Corinth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (147,'ny','Corning');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15244,'ny','Cornwall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17271,'ny','Cornwall On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51559,'ny','Cornwallville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23660,'ny','Corona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3221,'ny','Cortland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46594,'ny','Cortlandt Manor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34363,'ny','Cossayuna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51560,'ny','Cottekill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51927,'ny','Cowlesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8848,'ny','Coxsackie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51561,'ny','Cragsmoor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38926,'ny','Cranberry Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34364,'ny','Craryville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51935,'ny','Crittenden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50166,'ny','Croghan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51480,'ny','Crompond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16765,'ny','Cropseyville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20078,'ny','Cross River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18115,'ny','Croton Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23466,'ny','Croton On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46451,'ny','Crown Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8476,'ny','Cuba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51612,'ny','Cuddebackville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34365,'ny','Cutchogue');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51936,'ny','Dale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52063,'ny','Dalton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51679,'ny','Dannemora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9140,'ny','Dansville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50167,'ny','Darien Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51882,'ny','Davenport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51883,'ny','Davenport Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51937,'ny','Dayton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64890,'ny','De Kalb Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51839,'ny','De Peyster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30485,'ny','De Ruyter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51768,'ny','Deansboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2554,'ny','Deer Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51835,'ny','Deer River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51836,'ny','Deferiet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49305,'ny','Delancey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50168,'ny','Delanson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51938,'ny','Delevan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1821,'ny','Delhi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15793,'ny','Delmar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51719,'ny','Delphi Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51837,'ny','Denmark');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51562,'ny','Denver');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51838,'ny','Depauville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3515,'ny','Depew');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23662,'ny','Deposit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15118,'ny','Derby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52020,'ny','Dewittville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48766,'ny','Dexter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51646,'ny','Diamond Point');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51680,'ny','Dickinson Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2974,'ny','Dobbs Ferry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37511,'ny','Dolgeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51503,'ny','Dormansville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6981,'ny','Dover Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48169,'ny','Downsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51976,'ny','Dresden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12080,'ny','Dryden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22441,'ny','Duanesburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23663,'ny','Dundee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6970,'ny','Dunkirk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51563,'ny','Durham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48157,'ny','Durhamville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51769,'ny','Eagle Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51505,'ny','Eagle Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51506,'ny','Earlton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50169,'ny','Earlville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15719,'ny','East Amherst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4671,'ny','East Aurora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51507,'ny','East Berne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51939,'ny','East Bethany');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17987,'ny','East Bloomfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51884,'ny','East Branch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34366,'ny','East Chatham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51940,'ny','East Concord');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51564,'ny','East Durham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23664,'ny','East Elmhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5611,'ny','East Greenbush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15718,'ny','East Hampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (260772,'ny','East Homer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15280,'ny','East Islip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51565,'ny','East Jewett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34367,'ny','East Marion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7956,'ny','East Meadow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50170,'ny','East Meredith');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34368,'ny','East Moriches');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51508,'ny','East Nassau');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8340,'ny','East Northport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10042,'ny','East Norwich');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52021,'ny','East Otto');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51941,'ny','East Pembroke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51885,'ny','East Pharsalia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18717,'ny','East Quogue');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52022,'ny','East Randolph');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6871,'ny','East Rochester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13528,'ny','East Rockaway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51509,'ny','East Schodack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6689,'ny','East Setauket');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51770,'ny','East Springfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5794,'ny','East Syracuse');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51977,'ny','East Williamson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51510,'ny','East Worcester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8707,'ny','Eastchester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1445,'ny','Eastport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51771,'ny','Eaton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50171,'ny','Eden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8881,'ny','Edmeston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50172,'ny','Edwards');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37530,'ny','Elba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6983,'ny','Elbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39168,'ny','Eldred');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34369,'ny','Elizabethtown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34370,'ny','Elizaville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (261129,'ny','Elka Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51681,'ny','Ellenburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51682,'ny','Ellenburg Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51683,'ny','Ellenburg Depot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6972,'ny','Ellenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6879,'ny','Ellicottville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52023,'ny','Ellington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51840,'ny','Ellisburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15828,'ny','Elma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23665,'ny','Elmhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2144,'ny','Elmira');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8501,'ny','Elmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (933,'ny','Elmsford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2145,'ny','Endicott');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16423,'ny','Endwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51721,'ny','Erieville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52064,'ny','Erin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51567,'ny','Esopus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51511,'ny','Esperance');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51684,'ny','Essex');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51722,'ny','Etna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47132,'ny','Evans Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51723,'ny','Fabius');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8385,'ny','Fair Haven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2732,'ny','Fairport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46597,'ny','Falconer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18165,'ny','Fallsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51978,'ny','Fancher');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23666,'ny','Far Rockaway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61134,'ny','Farmersville Station');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (527,'ny','Farmingdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18763,'ny','Farmington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8889,'ny','Farmingville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51942,'ny','Farnham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (21094,'ny','Fayette');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30486,'ny','Fayetteville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51841,'ny','Felts Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30487,'ny','Ferndale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46596,'ny','Feura Bush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48068,'ny','Fillmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52024,'ny','Findley Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51842,'ny','Fine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15436,'ny','Fishers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44536,'ny','Fishers Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51843,'ny','Fishers Landing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6973,'ny','Fishkill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51886,'ny','Fishs Eddy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51568,'ny','Fleischmanns');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5086,'ny','Floral Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18698,'ny','Florida');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1840,'ny','Flushing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51772,'ny','Fly Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50173,'ny','Fonda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23667,'ny','Forest Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51632,'ny','Forestburgh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51773,'ny','Forestport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45658,'ny','Forestville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (244921,'ny','Fort Hunter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (21005,'ny','Frankfort');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18744,'ny','Franklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51774,'ny','Franklin Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10272,'ny','Franklin Square');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8477,'ny','Franklinville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4106,'ny','Fredonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30488,'ny','Freedom');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51569,'ny','Freehold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7032,'ny','Freeport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51724,'ny','Freeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51613,'ny','Fremont Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23668,'ny','Fresh Meadows');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47327,'ny','Frewsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52025,'ny','Friendship');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34371,'ny','Ft Ann');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (65309,'ny','Ft Covington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4457,'ny','Ft Drum');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5811,'ny','Ft Edward');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (65322,'ny','Ft Johnson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34372,'ny','Ft Montgomery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39244,'ny','Ft Plain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2902,'ny','Fulton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51512,'ny','Fultonham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44425,'ny','Fultonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30489,'ny','Gabriels');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37525,'ny','Gainesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51513,'ny','Gallupville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51514,'ny','Galway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48518,'ny','Gansevoort');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (803,'ny','Garden City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20466,'ny','Gardiner');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30490,'ny','Garnerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51775,'ny','Garrattsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6971,'ny','Garrison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47824,'ny','Gasport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3227,'ny','Geneseo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3470,'ny','Geneva');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47288,'ny','Genoa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51725,'ny','Georgetown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15755,'ny','Germantown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52026,'ny','Gerry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8523,'ny','Getzville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34373,'ny','Ghent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51887,'ny','Gilbertsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37515,'ny','Gilboa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51570,'ny','Glasco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51888,'ny','Glen Aubrey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8207,'ny','Glen Cove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16300,'ny','Glen Head');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23669,'ny','Glen Oaks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51614,'ny','Glen Spey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51615,'ny','Glen Wild');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51761,'ny','Glenfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51571,'ny','Glenford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51601,'ny','Glenham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16218,'ny','Glenmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5814,'ny','Glens Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51944,'ny','Glenwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20613,'ny','Glenwood Landing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6407,'ny','Gloversville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45281,'ny','Goldens Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51979,'ny','Gorham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15356,'ny','Goshen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38768,'ny','Gouverneur');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30491,'ny','Gowanda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51515,'ny','Grafton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51616,'ny','Grahamsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50174,'ny','Grand Gorge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6869,'ny','Grand Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50175,'ny','Granite Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18182,'ny','Granville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51844,'ny','Great Bend');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (736,'ny','Great Neck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41219,'ny','Great River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52027,'ny','Great Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51889,'ny','Greene');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51647,'ny','Greenfield Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61177,'ny','Greenfield Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52028,'ny','Greenhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11130,'ny','Greenlawn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11673,'ny','Greenport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2409,'ny','Greenvale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16174,'ny','Greenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34847,'ny','Greenwich');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52065,'ny','Greenwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45917,'ny','Greenwood Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51778,'ny','Greig');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51726,'ny','Groton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50176,'ny','Groveland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1908,'ny','Guilderland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23670,'ny','Guilderland Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51890,'ny','Guilford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50177,'ny','Hadley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51516,'ny','Hagaman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51648,'ny','Hague');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51845,'ny','Hailesboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37506,'ny','Haines Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51572,'ny','Halcottsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51980,'ny','Hall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1171,'ny','Hamburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51891,'ny','Hamden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2414,'ny','Hamilton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34374,'ny','Hamlin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41223,'ny','Hammond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52066,'ny','Hammondsport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34375,'ny','Hampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14902,'ny','Hampton Bays');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18743,'ny','Hancock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51617,'ny','Hankins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51517,'ny','Hannacroix');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51846,'ny','Hannawa Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50178,'ny','Hannibal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51892,'ny','Harford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51894,'ny','Harpersfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50179,'ny','Harpursville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8442,'ny','Harriman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51618,'ny','Harris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5071,'ny','Harrison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45966,'ny','Harrisville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34376,'ny','Hartford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6694,'ny','Hartsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51779,'ny','Hartwick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23467,'ny','Hastings');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30492,'ny','Hastings On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5410,'ny','Hauppauge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7179,'ny','Haverstraw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5758,'ny','Hawthorne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34377,'ny','Hector');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51847,'ny','Helena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30493,'ny','Hemlock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2552,'ny','Hempstead');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8917,'ny','Henderson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51848,'ny','Henderson Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6992,'ny','Henrietta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51573,'ny','Hensonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6968,'ny','Herkimer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36186,'ny','Hermon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48173,'ny','Heuvelton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8229,'ny','Hewlett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1661,'ny','Hicksville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10303,'ny','High Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6974,'ny','Highland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34700,'ny','Highland Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51619,'ny','Highland Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7213,'ny','Highland Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50180,'ny','Highmount');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34378,'ny','Hillburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34379,'ny','Hillsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2044,'ny','Hilton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52067,'ny','Himrod');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51780,'ny','Hinckley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52029,'ny','Hinsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51895,'ny','Hobart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51490,'ny','Hoffmeister');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34380,'ny','Hogansburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5160,'ny','Holbrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30494,'ny','Holland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51782,'ny','Holland Patent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17948,'ny','Holley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30495,'ny','Hollis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34381,'ny','Hollowville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50181,'ny','Holmes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4816,'ny','Holtsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15344,'ny','Homer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23671,'ny','Honeoye');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15414,'ny','Honeoye Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41742,'ny','Hoosick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8644,'ny','Hoosick Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6695,'ny','Hopewell Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9258,'ny','Hornell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16210,'ny','Horseheads');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51620,'ny','Hortonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6418,'ny','Houghton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16550,'ny','Howard Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51486,'ny','Howells');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51518,'ny','Howes Cave');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51783,'ny','Hubbardsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3375,'ny','Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16617,'ny','Hudson Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51602,'ny','Hughsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47161,'ny','Huguenot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34382,'ny','Huletts Landing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52030,'ny','Hume');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51491,'ny','Hunt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37507,'ny','Hunter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2898,'ny','Huntington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4374,'ny','Huntington Station');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37508,'ny','Hurley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16336,'ny','Hurleyville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15722,'ny','Hyde Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37512,'ny','Ilion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44234,'ny','Indian Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51784,'ny','Inlet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34383,'ny','Interlaken');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8352,'ny','Inwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51981,'ny','Ionia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20202,'ny','Irving');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3339,'ny','Irvington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11987,'ny','Island Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4100,'ny','Islandia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3125,'ny','Islip');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16304,'ny','Islip Terrace');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (961,'ny','Ithaca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6336,'ny','Jackson Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52069,'ny','Jacksonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2416,'ny','Jamaica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23468,'ny','Jamesport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2146,'ny','Jamestown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13571,'ny','Jamesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52070,'ny','Jasper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51945,'ny','Java Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51946,'ny','Java Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51685,'ny','Jay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34384,'ny','Jefferson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8486,'ny','Jefferson Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11137,'ny','Jeffersonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2498,'ny','Jericho');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51574,'ny','Jewett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51649,'ny','Johnsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23672,'ny','Johnson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2143,'ny','Johnson City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30496,'ny','Johnsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7031,'ny','Johnstown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15720,'ny','Jordan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47064,'ny','Jordanville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52071,'ny','Kanona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6200,'ny','Katonah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34385,'ny','Kattskill Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17947,'ny','Kauneonga Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51686,'ny','Keene');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15827,'ny','Keene Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38767,'ny','Keeseville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64771,'ny','Kendall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52031,'ny','Kennedy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51621,'ny','Kenoza Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22317,'ny','Kent');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50182,'ny','Kerhonkson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2848,'ny','Keuka Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23673,'ny','Kew Gardens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51622,'ny','Kiamesha Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52032,'ny','Kill Buck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51896,'ny','Killawog');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5805,'ny','Kinderhook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45495,'ny','King Ferry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10188,'ny','Kings Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2147,'ny','Kingston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51727,'ny','Kirkville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30497,'ny','Kirkwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51982,'ny','Knowlesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51519,'ny','Knox');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51785,'ny','Knoxboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51849,'ny','La Fargeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44388,'ny','La Fayette');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30498,'ny','Lacona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7178,'ny','Lagrangeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51687,'ny','Lake Clear');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2596,'ny','Lake George');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8292,'ny','Lake Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51575,'ny','Lake Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51623,'ny','Lake Huntington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10535,'ny','Lake Katrine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48304,'ny','Lake Luzerne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16792,'ny','Lake Peekskill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6406,'ny','Lake Placid');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51520,'ny','Lake Pleasant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50183,'ny','Lake View');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6984,'ny','Lakemont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51983,'ny','Lakeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23674,'ny','Lakewood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5787,'ny','Lancaster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51576,'ny','Lanesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18820,'ny','Lansing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7944,'ny','Larchmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5152,'ny','Latham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34386,'ny','Laurel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17213,'ny','Laurens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7119,'ny','Lawrence');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51688,'ny','Lawrenceville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51947,'ny','Lawtons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5840,'ny','Le Roy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51786,'ny','Lee Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48166,'ny','Leeds');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44389,'ny','Leicester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52033,'ny','Leon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51787,'ny','Leonardsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14882,'ny','Levittown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48696,'ny','Lewis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18796,'ny','Lewiston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51577,'ny','Lexington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15285,'ny','Liberty');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52034,'ny','Lily Dale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20050,'ny','Lima');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3010,'ny','Limestone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37521,'ny','Lincolndale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8023,'ny','Lindenhurst');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52072,'ny','Lindley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51984,'ny','Linwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51850,'ny','Lisbon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51897,'ny','Lisle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15463,'ny','Little Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52035,'ny','Little Genesee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7229,'ny','Little Neck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15438,'ny','Little Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51728,'ny','Little York');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6262,'ny','Liverpool');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30499,'ny','Livingston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17216,'ny','Livingston Manor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37526,'ny','Livonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51985,'ny','Livonia Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13524,'ny','Loch Sheldrake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51729,'ny','Locke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6948,'ny','Lockport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52073,'ny','Lockwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5801,'ny','Locust Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34388,'ny','Lodi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8519,'ny','Long Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47162,'ny','Long Eddy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5003,'ny','Long Island City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51650,'ny','Long Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51851,'ny','Lorraine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52074,'ny','Lowman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5902,'ny','Lowville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51730,'ny','Lycoming');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6401,'ny','Lynbrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51949,'ny','Lyndonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51689,'ny','Lyon Mountain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23675,'ny','Lyons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46384,'ny','Lyons Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7136,'ny','Macedon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51950,'ny','Machias');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23469,'ny','Madison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38771,'ny','Madrid');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9049,'ny','Mahopac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16928,'ny','Mahopac Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30500,'ny','Maine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34389,'ny','Malden Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263245,'ny','Malden On Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51731,'ny','Mallory');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38993,'ny','Malone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30501,'ny','Malverne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6202,'ny','Mamaroneck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51986,'ny','Manchester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3364,'ny','Manhasset');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (618368,'ny','Manhattan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16292,'ny','Manlius');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51852,'ny','Mannsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34390,'ny','Manorville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52037,'ny','Maple Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51732,'ny','Maple View');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51578,'ny','Maplecrest');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15505,'ny','Marathon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34391,'ny','Marcellus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15435,'ny','Marcy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39256,'ny','Margaretville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51733,'ny','Marietta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51951,'ny','Marilla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44944,'ny','Marion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41741,'ny','Marlboro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51788,'ny','Martinsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51734,'ny','Martville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64846,'ny','Maryknoll');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51521,'ny','Maryland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51898,'ny','Masonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6212,'ny','Maspeth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7984,'ny','Massapequa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8154,'ny','Massapequa Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16157,'ny','Massena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15681,'ny','Mastic');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15064,'ny','Mastic Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (33724,'ny','Mattituck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5838,'ny','Maybrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51522,'ny','Mayfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14873,'ny','Mayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30502,'ny','Mc Connellsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61122,'ny','Mc Donough');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (65092,'ny','Mc Graw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263246,'ny','Mc Lean');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16179,'ny','Mechanicville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34392,'ny','Mecklenburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5100,'ny','Medford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18051,'ny','Medina');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51523,'ny','Medusa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9859,'ny','Mellenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30503,'ny','Melrose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2819,'ny','Melville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48174,'ny','Memphis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20350,'ny','Mendon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51899,'ny','Meridale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51735,'ny','Meridian');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6399,'ny','Merrick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16763,'ny','Mexico');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22244,'ny','Middle Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34393,'ny','Middle Granville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51651,'ny','Middle Grove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15829,'ny','Middle Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16386,'ny','Middle Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41240,'ny','Middleburgh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30504,'ny','Middleport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51987,'ny','Middlesex');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5832,'ny','Middletown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51789,'ny','Middleville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17212,'ny','Milford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34394,'ny','Mill Neck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16767,'ny','Millbrook');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16302,'ny','Miller Place');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18782,'ny','Millerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52075,'ny','Millport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10209,'ny','Millwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30505,'ny','Milton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6400,'ny','Mineola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51652,'ny','Minerva');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51736,'ny','Minetto');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51693,'ny','Mineville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3060,'ny','Minoa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18536,'ny','Model City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30506,'ny','Modena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50184,'ny','Mohawk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16761,'ny','Mohegan Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51694,'ny','Moira');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51624,'ny','Mongaup Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10514,'ny','Monroe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6978,'ny','Monsey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34395,'ny','Montauk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46066,'ny','Montezuma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10529,'ny','Montgomery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6994,'ny','Monticello');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (52076,'ny','Montour Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10694,'ny','Montrose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51695,'ny','Mooers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51696,'ny','Mooers Forks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6969,'ny','Moravia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51697,'ny','Moriah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51698,'ny','Moriah Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23470,'ny','Moriches');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51900,'ny','Morris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6822,'ny','Morrisonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38942,'ny','Morristown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3873,'ny','Morrisville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51988,'ny','Morton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51737,'ny','Mottville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7817,'ny','Mount Kisco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51579,'ny','Mount Marion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23676,'ny','Mount Morris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5101,'ny','Mount Sinai');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50185,'ny','Mount Tremper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51901,'ny','Mount Upton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6201,'ny','Mount Vernon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51902,'ny','Mount Vision');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51625,'ny','Mountain Dale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17901,'ny','Mountainville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51989,'ny','Mumford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46851,'ny','Munnsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2066,'ny','Nanuet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51580,'ny','Napanoch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37517,'ny','Naples');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11136,'ny','Narrowsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2856,'ny','Nassau');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51853,'ny','Natural Bridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51738,'ny','Nedrow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51790,'ny','Nelliston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8496,'ny','Nesconset');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51626,'ny','Neversink');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51524,'ny','New Baltimore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18272,'ny','New Berlin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6214,'ny','New City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46603,'ny','New Hampton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8990,'ny','New Hartford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51739,'ny','New Haven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5800,'ny','New Hyde Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51581,'ny','New Kingston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5806,'ny','New Lebanon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51791,'ny','New Lisbon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51487,'ny','New Milford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3222,'ny','New Paltz');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3372,'ny','New Rochelle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51699,'ny','New Russia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51492,'ny','New Suffolk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6422,'ny','New Windsor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51740,'ny','New Woodstock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (57,'ny','New York');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50186,'ny','New York Mills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6263,'ny','Newark');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51903,'ny','Newark Valley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5839,'ny','Newburgh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51653,'ny','Newcomb');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51952,'ny','Newfane');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30507,'ny','Newfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15721,'ny','Newport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51854,'ny','Newton Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15308,'ny','Newtonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (529,'ny','Niagara Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30508,'ny','Niagara University');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16764,'ny','Nichols');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15926,'ny','Nicholville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51904,'ny','Nineveh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34396,'ny','Niverville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51855,'ny','Norfolk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15347,'ny','North Babylon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51700,'ny','North Bangor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51741,'ny','North Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51525,'ny','North Blenheim');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51953,'ny','North Boston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51627,'ny','North Branch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51793,'ny','North Brookfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30509,'ny','North Chatham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51990,'ny','North Chili');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48779,'ny','North Collins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51655,'ny','North Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51954,'ny','North Evans');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34397,'ny','North Granville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30510,'ny','North Greece');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51526,'ny','North Hoosick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51656,'ny','North Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46604,'ny','North Java');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51701,'ny','North Lawrence');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51905,'ny','North Norwich');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51742,'ny','North Pitcher');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51657,'ny','North River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51991,'ny','North Rose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18560,'ny','North Salem');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5782,'ny','North Tonawanda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12995,'ny','Northport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51527,'ny','Northville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (12035,'ny','Norwich');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38772,'ny','Norwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37524,'ny','Nunda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2501,'ny','Nyack');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23471,'ny','Oak Hill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10944,'ny','Oakdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34398,'ny','Oakfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23677,'ny','Oakland Gardens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51992,'ny','Oaks Corners');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51628,'ny','Obernburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17311,'ny','Ocean Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7973,'ny','Oceanside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45838,'ny','Odessa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20203,'ny','Ogdensburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51955,'ny','Olcott');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20689,'ny','Old Bethpage');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18285,'ny','Old Chatham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39243,'ny','Old Forge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2630,'ny','Old Westbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3313,'ny','Olean');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48176,'ny','Olivebridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50187,'ny','Olmstedville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5796,'ny','Oneida');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3223,'ny','Oneonta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6396,'ny','Ontario');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37520,'ny','Ontario Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5761,'ny','Orangeburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5786,'ny','Orchard Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11138,'ny','Orient');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19370,'ny','Oriskany');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50188,'ny','Oriskany Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3244,'mi','Houghton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3083,'mi','Houghton Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55929,'mi','Houghton Lake Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15694,'mi','Howard City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1101,'mi','Howell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56051,'mi','Hubbard Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45968,'mi','Hubbardston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56111,'mi','Hubbell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19717,'mi','Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7909,'mi','Hudsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56052,'mi','Hulbert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30341,'mi','Huntington Woods');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23421,'mi','Ida');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56024,'mi','Idlewild');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16140,'mi','Imlay City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13166,'mi','Indian River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56081,'mi','Ingalls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15012,'mi','Inkster');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37615,'mi','Interlochen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8033,'mi','Ionia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13199,'mi','Iron Mountain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39042,'mi','Iron River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56025,'mi','Irons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20297,'mi','Ironwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36816,'mi','Ishpeming');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10120,'mi','Ithaca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (959,'mi','Jackson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15702,'mi','Jamestown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55989,'mi','Jasper');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23422,'mi','Jeddo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15689,'mi','Jenison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47236,'mi','Jerome');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18191,'mi','Johannesburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55976,'mi','Jones');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6665,'mi','Jonesville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1940,'mi','Kalamazoo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56026,'mi','Kaleva');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36804,'mi','Kalkaska');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44214,'mi','Kawkawlin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (263281,'mi','Kearsarge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6303,'mi','Keego Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55977,'mi','Kendall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9023,'mi','Kent City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56027,'mi','Kewadin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61117,'mi','Kincheloe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36814,'mi','Kinde');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13168,'mi','Kingsford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36805,'mi','Kingsley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17985,'mi','Kingston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50919,'mi','Kinross');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55909,'mi','La Salle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56053,'mi','Lachine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55978,'mi','Lacota');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34145,'mi','Laingsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55930,'mi','Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56028,'mi','Lake Ann');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (33720,'mi','Lake City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55931,'mi','Lake George');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47308,'mi','Lake Leelanau');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36838,'mi','Lake Linden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7023,'mi','Lake Odessa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7914,'mi','Lake Orion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64842,'mi','Lakeland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55982,'mi','Lakeside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15710,'mi','Lakeview');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35943,'mi','Lakeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13180,'mi','Lambertville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56010,'mi','Lamont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36839,'mi','Lanse');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (768,'mi','Lansing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1311,'mi','Lapeer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17012,'mi','Lawrence');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45770,'mi','Lawton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36806,'mi','Leland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49924,'mi','Lennon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36780,'mi','Leonard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30342,'mi','Leonidas');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17284,'mi','Leroy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36807,'mi','Leslie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56054,'mi','Levering');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5555,'mi','Lewiston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2478,'mi','Lexington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5565,'mi','Lincoln');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19165,'mi','Lincoln Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23423,'mi','Linden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30021,'mi','Linwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20236,'mi','Litchfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56076,'mi','Little Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (136,'mi','Livonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55944,'mi','Long Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56082,'mi','Loretto');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11874,'mi','Lowell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5552,'mi','Ludington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30343,'mi','Luna Pier');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48488,'mi','Lupton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56029,'mi','Luther');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55932,'mi','Luzerne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55957,'mi','Lyons');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56011,'mi','Macatawa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22899,'mi','Mackinac Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13751,'mi','Mackinaw City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1535,'mi','Macomb');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4345,'mi','Madison Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19837,'mi','Mancelona');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8257,'mi','Manchester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3081,'mi','Manistee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7082,'mi','Manistique');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49925,'mi','Manitou Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36829,'mi','Manton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36797,'mi','Maple City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55958,'mi','Maple Rapids');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (385,'mi','Marcellus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48118,'mi','Marenisco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2481,'mi','Marine City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36808,'mi','Marion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6913,'mi','Marlette');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20155,'mi','Marne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2608,'mi','Marquette');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16654,'mi','Marshall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15699,'mi','Martin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4664,'mi','Marysville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6893,'mi','Mason');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56112,'mi','Mass City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19915,'mi','Mattawan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23424,'mi','Maybee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56030,'mi','Mayfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19792,'mi','Mayville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36809,'mi','Mc Bain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64861,'mi','Mc Millan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3066,'mi','Mcbrides');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46844,'mi','Mears');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46857,'mi','Mecosta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55920,'mi','Melvin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7264,'mi','Melvindale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20979,'mi','Memphis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20578,'mi','Mendon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23614,'mi','Menominee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36810,'mi','Merrill');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56031,'mi','Merritt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38879,'mi','Mesick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23425,'mi','Metamora');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48060,'mi','Michigamme');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30344,'mi','Michigan Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36836,'mi','Middleton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11998,'mi','Middleville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2213,'mi','Midland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43508,'mi','Mikado');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4662,'mi','Milan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8298,'mi','Milford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56055,'mi','Millersburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18197,'mi','Millington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6914,'mi','Minden City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5562,'mi','Mio');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46567,'mi','Mohawk');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15700,'mi','Moline');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1306,'mi','Monroe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14881,'mi','Montague');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55990,'mi','Montgomery');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36811,'mi','Montrose');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56056,'mi','Moran');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36802,'mi','Morenci');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36812,'mi','Morley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34146,'mi','Morrice');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55991,'mi','Moscow');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55992,'mi','Mosherville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1307,'mi','Mount Clemens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22300,'mi','Mount Morris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (604,'mi','Mount Pleasant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55959,'mi','Muir');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56057,'mi','Mullett Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2961,'mi','Mulliken');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49926,'mi','Munger');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39448,'mi','Munising');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47951,'mi','Munith');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (603,'mi','Muskegon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56084,'mi','Nadeau');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49927,'mi','Nahma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30345,'mi','Napoleon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13171,'mi','Nashville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55945,'mi','National City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56085,'mi','National Mine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56058,'mi','Naubinway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49928,'mi','Nazareth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5686,'mi','Negaunee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16935,'mi','New Baltimore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2214,'mi','New Boston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43514,'mi','New Buffalo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35760,'mi','New Era');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2479,'mi','New Haven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4665,'mi','New Hudson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36813,'mi','New Lothrop');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49929,'mi','New Troy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8156,'mi','Newaygo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48059,'mi','Newberry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23426,'mi','Newport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5728,'mi','Niles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56113,'mi','Nisula');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38884,'mi','North Adams');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5561,'mi','North Branch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55960,'mi','North Star');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49930,'mi','North Street');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36815,'mi','Northport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1960,'mi','Northville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55993,'mi','Norvell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36817,'mi','Norway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38876,'mi','Nottawa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4339,'mi','Novi');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15709,'mi','Nunica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6667,'mi','Oak Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46569,'mi','Oakland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55933,'mi','Oakley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56059,'mi','Oden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4337,'mi','Okemos');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56032,'mi','Old Mission');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7017,'mi','Olivet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56033,'mi','Omena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55946,'mi','Omer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3087,'mi','Onaway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56034,'mi','Onekama');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (37659,'mi','Onondaga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22635,'mi','Onsted');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36818,'mi','Ontonagon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49931,'mi','Orleans');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23427,'mi','Ortonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13181,'mi','Oscoda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45558,'mi','Oshtemo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8056,'mi','Osseo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48948,'mi','Ossineke');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23428,'mi','Otisville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13359,'mi','Otsego');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36828,'mi','Ottawa Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51096,'mi','Otter Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (587,'mi','Ovid');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13173,'mi','Owendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (584,'mi','Owosso');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2476,'mi','Oxford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56114,'mi','Painesdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56086,'mi','Palmer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55921,'mi','Palms');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55994,'mi','Palmyra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55961,'mi','Palo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39449,'mi','Paradise');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20328,'mi','Paris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18583,'mi','Parma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13391,'mi','Paw Paw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36820,'mi','Peck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7083,'mi','Pelkie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13164,'mi','Pellston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36821,'mi','Pentwater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56087,'mi','Perkins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55962,'mi','Perrinton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56088,'mi','Perronville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15325,'mi','Perry');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16342,'mi','Petersburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13163,'mi','Petoskey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36823,'mi','Pewamo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44200,'mi','Pickford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56005,'mi','Pierson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (16262,'mi','Pigeon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10344,'mi','Pinckney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13033,'mi','Pinconning');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36819,'mi','Pittsford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10519,'mi','Plainwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55995,'mi','Pleasant Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20621,'mi','Pleasant Ridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3491,'mi','Plymouth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43510,'mi','Pointe Aux Pins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55963,'mi','Pompeii');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (845,'mi','Pontiac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44858,'mi','Port Austin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36822,'mi','Port Hope');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1310,'mi','Port Huron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23429,'mi','Port Sanilac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7819,'mi','Portage');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3090,'mi','Portland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56060,'mi','Posen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34147,'mi','Potterville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45908,'mi','Powers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5553,'mi','Prescott');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56061,'mi','Presque Isle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55934,'mi','Prudenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18442,'mi','Pullman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20978,'mi','Quincy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7084,'mi','Quinnesec');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56090,'mi','Ralph');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56115,'mi','Ramsay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17014,'mi','Rapid City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38877,'mi','Rapid River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15708,'mi','Ravenna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55908,'mi','Ray');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34148,'mi','Reading');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4656,'mi','Redford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6390,'mi','Reed City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49932,'mi','Reese');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13177,'mi','Remus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49933,'mi','Republic');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55924,'mi','Rhodes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13161,'mi','Richland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18767,'mi','Richmond');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55947,'mi','Richville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55996,'mi','Riga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20359,'mi','River Rouge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55964,'mi','Riverdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30346,'mi','Riverside');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49934,'mi','Riverview');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61100,'mi','Rives Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3243,'mi','Rochester');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56091,'mi','Rock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15052,'mi','Rockford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56116,'mi','Rockland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18314,'mi','Rockwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49935,'mi','Rodney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3086,'mi','Rogers City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1963,'mi','Romeo');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8320,'mi','Romulus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3082,'mi','Roscommon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19670,'mi','Rose City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6673,'mi','Rosebush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2477,'mi','Roseville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49936,'mi','Rothbury');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1961,'mi','Royal Oak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43515,'mi','Rudyard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56073,'mi','Rumely');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55922,'mi','Ruth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (767,'mi','Saginaw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22261,'mi','Sagola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2607,'mi','Salem');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10242,'mi','Saline');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55910,'mi','Samaria');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36803,'mi','Sand Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15050,'mi','Sand Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2475,'mi','Sandusky');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14778,'mi','Sanford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15387,'mi','Saranac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34838,'mi','Saugatuck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2609,'mi','Sault Sainte Marie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44229,'mi','Sawyer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (386,'mi','Schoolcraft');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46572,'mi','Scotts');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5557,'mi','Scottville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19640,'mi','Sears');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13172,'mi','Sebewaing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56092,'mi','Seney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55965,'mi','Shaftsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3079,'mi','Shelby');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48945,'mi','Shelbyville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36840,'mi','Shepherd');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46568,'mi','Sheridan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55979,'mi','Sherwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56093,'mi','Shingleton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56117,'mi','Sidnaw');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9038,'mi','Sidney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55948,'mi','Silverwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (33733,'mi','Six Lakes');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30347,'mi','Skandia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56118,'mi','Skanee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23430,'mi','Smiths Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55923,'mi','Snover');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55983,'mi','Sodus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55997,'mi','Somerset');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55998,'mi','Somerset Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56035,'mi','South Boardman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49937,'mi','South Branch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7125,'mi','South Haven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8640,'mi','South Lyon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56119,'mi','South Range');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49938,'mi','South Rockwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (840,'mi','Southfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11134,'mi','Southgate');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56094,'mi','Spalding');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15388,'mi','Sparta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13175,'mi','Spring Arbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5704,'mi','Spring Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7365,'mi','Springport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3441,'mi','Spruce');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18027,'mi','St Charles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2106,'mi','St Clair');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18441,'mi','St Clair Shores');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48061,'mi','St Helen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46481,'mi','St Ignace');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1950,'mi','St Johns');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3156,'mi','St Joseph');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10041,'mi','St Louis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43516,'mi','Stambaugh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43517,'mi','Standish');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23615,'mi','Stanton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56006,'mi','Stanwood');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17015,'mi','Stephenson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18042,'mi','Sterling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1506,'mi','Sterling Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6539,'mi','Stevensville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3091,'mi','Stockbridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2965,'mi','Sturgis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55966,'mi','Sumner');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44849,'mi','Sunfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17030,'mi','Suttons Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5567,'mi','Swartz Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49315,'mi','Sylvan Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20239,'mi','Tawas City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1505,'mi','Taylor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4657,'mi','Tecumseh');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (345,'mi','Tekonsha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6732,'mi','Temperance');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46574,'mi','Thompsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7126,'mi','Three Oaks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (384,'mi','Three Rivers');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (357,'mi','Tipton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47902,'mi','Toivola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56063,'mi','Topinabee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56064,'mi','Tower');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1941,'mi','Traverse City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49939,'mi','Trenary');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1962,'mi','Trenton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56120,'mi','Trout Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56065,'mi','Trout Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3181,'mi','Troy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56007,'mi','Trufant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55949,'mi','Turner');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49940,'mi','Tuscola');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30348,'mi','Tustin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15704,'mi','Twin Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43518,'mi','Twining');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36824,'mi','Ubly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55985,'mi','Union');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (346,'mi','Union City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55912,'mi','Union Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55984,'mi','Union Pier');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49941,'mi','Unionville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2610,'mi','University Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7929,'mi','Utica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55980,'mi','Vandalia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30349,'mi','Vanderbilt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44236,'mi','Vassar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38878,'mi','Vermontville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43519,'mi','Vernon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55967,'mi','Vestaburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5702,'mi','Vicksburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56083,'mi','Vulcan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36841,'mi','Wakefield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36825,'mi','Waldron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56012,'mi','Walhalla');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36826,'mi','Walkerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39238,'mi','Wallace');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5720,'mi','Walled Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17011,'mi','Walloon Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (657,'mi','Warren');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6912,'mi','Washington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3482,'mi','Waterford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56066,'mi','Waters');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15960,'mi','Watersmeet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36827,'mi','Watervliet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56121,'mi','Watton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15695,'mi','Wayland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (656,'mi','Wayne');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34149,'mi','Webberville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5703,'mi','Weidman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56096,'mi','Wells');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56036,'mi','Wellston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9277,'mi','West Bloomfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1951,'mi','West Branch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45486,'mi','West Olive');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4660,'mi','Westland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49942,'mi','Weston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49943,'mi','Westphalia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56097,'mi','Wetmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44783,'mi','Wheeler');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15693,'mi','White Cloud');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13665,'mi','White Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5669,'mi','White Pigeon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56122,'mi','White Pine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11901,'mi','Whitehall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13752,'mi','Whitmore Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55911,'mi','Whittaker');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43520,'mi','Whittemore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45411,'mi','Williamsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6672,'mi','Williamston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23431,'mi','Willis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56098,'mi','Wilson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55968,'mi','Winn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4663,'mi','Wixom');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30350,'mi','Wolverine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55969,'mi','Woodland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2474,'mi','Wyandotte');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49314,'mi','Wyoming');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36830,'mi','Yale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2457,'mi','Ypsilanti');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2900,'mi','Zeeland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49899,'mi','Acme');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5087,'mi','Ada');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36779,'mi','Addison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (355,'mi','Adrian');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56037,'mi','Afton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56099,'mi','Ahmeek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45066,'mi','Akron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13165,'mi','Alanson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38886,'mi','Alba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3275,'mi','Albion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56013,'mi','Alden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44253,'mi','Alger');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10656,'mi','Algonac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9130,'mi','Allegan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55986,'mi','Allen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7026,'mi','Allen Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2410,'mi','Allendale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49900,'mi','Allenton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49901,'mi','Allouez');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2313,'mi','Alma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6915,'mi','Almont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3085,'mi','Alpena');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56100,'mi','Alpha');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15053,'mi','Alto');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56101,'mi','Amasa');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55907,'mi','Anchorville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (104,'mi','Ann Arbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23415,'mi','Applegate');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56014,'mi','Arcadia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55913,'mi','Argyle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (39407,'mi','Armada');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56070,'mi','Arnold');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36831,'mi','Ashley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55970,'mi','Athens');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35057,'mi','Atlanta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49902,'mi','Atlantic Mine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55914,'mi','Atlas');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48793,'mi','Attica');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43507,'mi','Au Gres');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49903,'mi','Au Train');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5675,'mi','Auburn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3018,'mi','Auburn Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30328,'mi','Augusta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23416,'mi','Avoca');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15773,'mi','Azalia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8775,'mi','Bad Axe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49904,'mi','Bailey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35677,'mi','Baldwin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55915,'mi','Bancroft');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38697,'mi','Bangor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55950,'mi','Bannister');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9219,'mi','Baraga');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56038,'mi','Barbeau');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56067,'mi','Bark River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (41474,'mi','Baroda');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55999,'mi','Barryton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30329,'mi','Barton City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34140,'mi','Bath');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (958,'mi','Battle Creek');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1500,'mi','Bay City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55936,'mi','Bay Port');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22692,'mi','Bay Shore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36832,'mi','Bear Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13753,'mi','Beaver Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36782,'mi','Beaverton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55971,'mi','Bedford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15690,'mi','Belding');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7022,'mi','Bellaire');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (838,'mi','Belleville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55972,'mi','Bellevue');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18443,'mi','Belmont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22693,'mi','Bentley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1945,'mi','Benton Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35792,'mi','Benzonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36798,'mi','Bergland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15312,'mi','Berkley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49905,'mi','Berrien Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3251,'mi','Berrien Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56102,'mi','Bessemer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7019,'mi','Beulah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61581,'mi','Big Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4953,'mi','Big Rapids');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36783,'mi','Birch Run');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1855,'mi','Birmingham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56000,'mi','Bitely');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55937,'mi','Black River');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43509,'mi','Blanchard');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (356,'mi','Blissfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3469,'mi','Bloomfield Hills');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10098,'mi','Bloomingdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46571,'mi','Boon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6674,'mi','Boyne City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6391,'mi','Boyne Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45212,'mi','Bradley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44967,'mi','Branch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55925,'mi','Brant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5556,'mi','Breckenridge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55973,'mi','Breedsville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36837,'mi','Brethren');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7098,'mi','Bridgeport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43521,'mi','Bridgewater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14967,'mi','Bridgman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1309,'mi','Brighton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5705,'mi','Brimley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36784,'mi','Britton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49906,'mi','Brohman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (349,'mi','Bronson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34141,'mi','Brooklyn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36781,'mi','Brown City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56103,'mi','Bruce Crossing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49907,'mi','Brutus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6540,'mi','Buchanan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56015,'mi','Buckley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (350,'mi','Burlington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15701,'mi','Burnips');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20329,'mi','Burr Oak');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55916,'mi','Burt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56039,'mi','Burt Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10104,'mi','Burton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2480,'mi','Byron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15048,'mi','Byron Center');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2140,'mi','Cadillac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8295,'mi','Caledonia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30330,'mi','Calumet');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43511,'mi','Camden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2828,'mi','Cannonsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4667,'mi','Canton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30331,'mi','Capac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3496,'mi','Carleton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13169,'mi','Carney');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10094,'mi','Caro');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56040,'mi','Carp Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55938,'mi','Carrollton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15712,'mi','Carson City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13754,'mi','Carsonville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45703,'mi','Casco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36833,'mi','Caseville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56001,'mi','Casnovia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49908,'mi','Caspian');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36785,'mi','Cass City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11917,'mi','Cassopolis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56016,'mi','Cedar');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55951,'mi','Cedar Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7024,'mi','Cedar Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43512,'mi','Cedarville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49909,'mi','Cement City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (839,'mi','Center Line');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15400,'mi','Central Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (387,'mi','Centreville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49910,'mi','Ceresco');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49911,'mi','Champion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56068,'mi','Channing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15402,'mi','Charlevoix');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3088,'mi','Charlotte');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46470,'mi','Chase');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56104,'mi','Chassell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (33707,'mi','Chatham');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6926,'mi','Cheboygan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4659,'mi','Chelsea');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38885,'mi','Chesaning');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56002,'mi','Chippewa Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7970,'mi','Clare');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55987,'mi','Clarklake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8456,'mi','Clarkston');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7020,'mi','Clarksville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8534,'mi','Clawson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (48343,'mi','Clayton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30332,'mi','Clifford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30333,'mi','Climax');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10676,'mi','Clinton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23611,'mi','Clinton Township');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15232,'mi','Clio');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55952,'mi','Cohoctah');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (347,'mi','Coldwater');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23612,'mi','Coleman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6668,'mi','Coloma');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3089,'mi','Colon');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23417,'mi','Columbiaville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49912,'mi','Columbus');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (65033,'mi','Comins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8000,'mi','Commerce Township');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49913,'mi','Comstock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15049,'mi','Comstock Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36786,'mi','Concord');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30334,'mi','Conklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20572,'mi','Constantine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56041,'mi','Conway');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56069,'mi','Cooks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15696,'mi','Coopersville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56017,'mi','Copemish');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56105,'mi','Copper City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22879,'mi','Copper Harbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56003,'mi','Coral');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22880,'mi','Cornell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (586,'mi','Corunna');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30335,'mi','Covert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56106,'mi','Covington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56042,'mi','Cross Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17996,'mi','Croswell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5566,'mi','Crystal');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30336,'mi','Crystal Falls');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49914,'mi','Curran');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56071,'mi','Curtis');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18630,'mi','Custer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49915,'mi','Dafter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46828,'mi','Daggett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36790,'mi','Dansville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19451,'mi','Davisburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (605,'mi','Davison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56043,'mi','De Tour Village');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1822,'mi','Dearborn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8319,'mi','Dearborn Heights');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13162,'mi','Decatur');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55917,'mi','Decker');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36787,'mi','Deckerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36788,'mi','Deerfield');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56072,'mi','Deerton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55939,'mi','Deford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36789,'mi','Delton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (144,'mi','Detroit');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34142,'mi','Dewitt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4658,'mi','Dexter');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8007,'mi','Dimondale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56107,'mi','Dodgeville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38883,'mi','Dollar Bay');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15691,'mi','Dorr');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15698,'mi','Douglas');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6387,'mi','Dowagiac');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55974,'mi','Dowling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23418,'mi','Drayton Plains');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49916,'mi','Drummond Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23419,'mi','Dryden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4958,'mi','Dundee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (588,'mi','Durand');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55953,'mi','Eagle');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36791,'mi','East China');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13167,'mi','East Jordan');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1547,'mi','East Lansing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (51308,'mi','East Leroy');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14963,'mi','East Tawas');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (251509,'mi','Eastlake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7871,'mi','Eastpointe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56018,'mi','Eastport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19542,'mi','Eaton Rapids');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35867,'mi','Eau Claire');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61205,'mi','Eben Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56044,'mi','Eckerman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11135,'mi','Ecorse');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55926,'mi','Edenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15711,'mi','Edmore');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19911,'mi','Edwardsburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56019,'mi','Elberta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36792,'mi','Elk Rapids');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55940,'mi','Elkton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15401,'mi','Ellsworth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55954,'mi','Elm Hall');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56045,'mi','Elmira');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (585,'mi','Elsie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55955,'mi','Elwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6844,'mi','Emmett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49917,'mi','Empire');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56074,'mi','Engadine');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6436,'mi','Erie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5685,'mi','Escanaba');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8336,'mi','Essexville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49918,'mi','Eureka');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14777,'mi','Evart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56108,'mi','Ewen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46570,'mi','Fair Haven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55941,'mi','Fairgrove');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36834,'mi','Fairview');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56020,'mi','Falmouth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (837,'mi','Farmington');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49919,'mi','Farwell');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56075,'mi','Felch');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15697,'mi','Fennville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (2482,'mi','Fenton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55956,'mi','Fenwick');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10290,'mi','Ferndale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34143,'mi','Ferrysburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36793,'mi','Fife Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56021,'mi','Filer City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55918,'mi','Filion');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13170,'mi','Flat Rock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1619,'mi','Flint');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6911,'mi','Flushing');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (47203,'mi','Forestville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (35895,'mi','Foster City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46573,'mi','Fostoria');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56008,'mi','Fountain');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36835,'mi','Fowler');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3092,'mi','Fowlerville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (14978,'mi','Frankenmuth');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36794,'mi','Frankfort');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8271,'mi','Franklin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5725,'mi','Fraser');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (61095,'mi','Frederic');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45969,'mi','Free Soil');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8927,'mi','Freeland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15692,'mi','Freeport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11891,'mi','Fremont');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55988,'mi','Frontier');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15705,'mi','Fruitport');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46566,'mi','Ft Gratiot');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55975,'mi','Fulton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56109,'mi','Gaastra');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49920,'mi','Gagetown');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46242,'mi','Gaines');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11576,'mi','Galesburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49921,'mi','Galien');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (64777,'mi','Garden');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6662,'mi','Garden City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3080,'mi','Gaylord');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36795,'mi','Genesee');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56077,'mi','Germfask');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38880,'mi','Gladstone');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13174,'mi','Gladwin');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30337,'mi','Glen Arbor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56009,'mi','Glenn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55943,'mi','Glennie');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (43513,'mi','Gobles');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56046,'mi','Goetzville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56047,'mi','Good Hart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (13178,'mi','Goodells');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4661,'mi','Goodrich');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56078,'mi','Gould City');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56004,'mi','Gowen');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (8291,'mi','Grand Blanc');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6675,'mi','Grand Haven');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7016,'mi','Grand Junction');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20235,'mi','Grand Ledge');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56079,'mi','Grand Marais');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (769,'mi','Grand Rapids');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5428,'mi','Grandville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6939,'mi','Grant');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36796,'mi','Grass Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (10491,'mi','Grawn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3084,'mi','Grayling');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38698,'mi','Greenbush');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56110,'mi','Greenland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (7018,'mi','Greenville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (46015,'mi','Gregory');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36799,'mi','Grosse Ile');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5741,'mi','Grosse Pointe');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (50911,'mi','Gulliver');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20629,'mi','Gwinn');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55919,'mi','Hadley');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (19790,'mi','Hale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (18593,'mi','Hamburg');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36800,'mi','Hamilton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (20238,'mi','Hamtramck');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (11864,'mi','Hancock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (22891,'mi','Hanover');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55981,'mi','Harbert');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30338,'mi','Harbor Beach');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (36801,'mi','Harbor Springs');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (4336,'mi','Harper Woods');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49922,'mi','Harrietta');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56080,'mi','Harris');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5564,'mi','Harrison');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30339,'mi','Harrison Township');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5558,'mi','Harrisville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (44193,'mi','Harsens Island');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49923,'mi','Hart');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (17282,'mi','Hartford');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23420,'mi','Hartland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (9264,'mi','Haslett');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1952,'mi','Hastings');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56048,'mi','Hawks');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6843,'mi','Hazel Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5670,'mi','Hemlock');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (30340,'mi','Henderson');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (45907,'mi','Hermansville');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56049,'mi','Herron');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56022,'mi','Hersey');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15703,'mi','Hesperia');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56050,'mi','Hessel');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (34144,'mi','Hickory Corners');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55927,'mi','Higgins Lake');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (23613,'mi','Highland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3564,'mi','Highland Park');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (49240,'mi','Hillman');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (3093,'mi','Hillsdale');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1942,'mi','Holland');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (1308,'mi','Holly');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (5467,'mi','Holt');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (15706,'mi','Holton');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (33714,'mi','Homer');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (56023,'mi','Honor');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (55928,'mi','Hope');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (6750,'mi','Hopkins');
INSERT INTO dbo.Master_City (CityCode, RegionCode, CityName) VALUES (38882,'mi','Horton');
GO

-- Insert records into dbo.Master_Product Table
INSERT INTO dbo.Master_Product (ProductID, ProductName, Price) VALUES(40001,'OMNiX P1 Plus Sports Band',3499);
INSERT INTO dbo.Master_Product (ProductID, ProductName, Price) VALUES(40002,'Opta SB-001 Bluetooth tracker',2249);
INSERT INTO dbo.Master_Product (ProductID, ProductName, Price) VALUES(40003,'Mi Band - HRX Edition',1299);
INSERT INTO dbo.Master_Product (ProductID, ProductName, Price) VALUES(40004,'Fastrack Reflex Smartwatch',1495);
GO