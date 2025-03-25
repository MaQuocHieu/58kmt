CREATE TABLE [dbo].[GiaoVien](
	[maGV] [varchar](20) NOT NULL,
	[hoTen] [varchar](100) NULL,
	[NgaySinh] [date] NULL,
	[MaBM] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
))
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([MaBM])
REFERENCES [dbo].[BoMon] ([MaBM])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
GO


