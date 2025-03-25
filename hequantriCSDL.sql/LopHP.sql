CREATE TABLE [dbo].[LopHP](
	[maLopHP] [varchar](20) NOT NULL,
	[TenLopHP] [varchar](100) NULL,
	[HK] [varchar](10) NULL,
	[maMon] [varchar](20) NULL,
	[maGV] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC
))
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_GiaoVien]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_MonHoc] FOREIGN KEY([maMon])
REFERENCES [dbo].[MonHoc] ([maMon])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_MonHoc]
GO


