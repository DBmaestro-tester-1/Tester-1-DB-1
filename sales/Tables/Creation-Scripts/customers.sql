SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) COLLATE Hebrew_CI_AS NOT NULL,
	[last_name] [varchar](255) COLLATE Hebrew_CI_AS NOT NULL,
	[phone] [varchar](25) COLLATE Hebrew_CI_AS NULL,
	[email] [varchar](255) COLLATE Hebrew_CI_AS NOT NULL,
	[street] [varchar](255) COLLATE Hebrew_CI_AS NULL,
	[city] [varchar](50) COLLATE Hebrew_CI_AS NULL,
	[state] [varchar](25) COLLATE Hebrew_CI_AS NULL,
	[zip_code] [varchar](5) COLLATE Hebrew_CI_AS NULL,
 CONSTRAINT [PK__customer__CD65CB855075BC7F] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
