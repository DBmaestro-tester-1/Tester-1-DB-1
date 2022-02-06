SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[order_items](
	[order_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
	[discount] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK__order_it__837942D44F2A07A0] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [sales].[order_items] ADD  CONSTRAINT [DF__order_ite__disco__398D8EEE]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [sales].[order_items]  WITH CHECK ADD  CONSTRAINT [FK__order_ite__order__3A81B327] FOREIGN KEY([order_id])
REFERENCES [sales].[orders] ([order_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[order_items] CHECK CONSTRAINT [FK__order_ite__order__3A81B327]
GO
ALTER TABLE [sales].[order_items]  WITH CHECK ADD  CONSTRAINT [FK__order_ite__produ__3B75D760] FOREIGN KEY([product_id])
REFERENCES [production].[products] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[order_items] CHECK CONSTRAINT [FK__order_ite__produ__3B75D760]
GO
