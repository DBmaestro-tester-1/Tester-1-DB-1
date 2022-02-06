SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[order_status] [tinyint] NOT NULL,
	[order_date] [date] NOT NULL,
	[required_date] [date] NOT NULL,
	[shipped_date] [date] NULL,
	[store_id] [int] NOT NULL,
	[staff_id] [int] NOT NULL,
 CONSTRAINT [PK__orders__465962298664E836] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__customer__34C8D9D1] FOREIGN KEY([customer_id])
REFERENCES [sales].[customers] ([customer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[orders] CHECK CONSTRAINT [FK__orders__customer__34C8D9D1]
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__staff_id__36B12243] FOREIGN KEY([staff_id])
REFERENCES [sales].[staffs] ([staff_id])
GO
ALTER TABLE [sales].[orders] CHECK CONSTRAINT [FK__orders__staff_id__36B12243]
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__store_id__35BCFE0A] FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[orders] CHECK CONSTRAINT [FK__orders__store_id__35BCFE0A]
GO
