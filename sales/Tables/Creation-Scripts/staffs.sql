SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[staffs](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) COLLATE Hebrew_CI_AS NOT NULL,
	[last_name] [varchar](50) COLLATE Hebrew_CI_AS NOT NULL,
	[email] [varchar](255) COLLATE Hebrew_CI_AS NOT NULL,
	[phone] [varchar](25) COLLATE Hebrew_CI_AS NULL,
	[active] [tinyint] NOT NULL,
	[store_id] [int] NOT NULL,
	[manager_id] [int] NULL,
 CONSTRAINT [PK__staffs__1963DD9CDFD0E91D] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
 CONSTRAINT [UQ__staffs__AB6E616470459578] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [sales].[staffs]  WITH CHECK ADD  CONSTRAINT [FK__staffs__manager___31EC6D26] FOREIGN KEY([manager_id])
REFERENCES [sales].[staffs] ([staff_id])
GO
ALTER TABLE [sales].[staffs] CHECK CONSTRAINT [FK__staffs__manager___31EC6D26]
GO
ALTER TABLE [sales].[staffs]  WITH CHECK ADD  CONSTRAINT [FK__staffs__store_id__30F848ED] FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[staffs] CHECK CONSTRAINT [FK__staffs__store_id__30F848ED]
GO
