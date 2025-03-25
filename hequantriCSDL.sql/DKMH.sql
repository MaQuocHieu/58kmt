CREATE TABLE [dbo].[DKMH](
	[maLopHP] [varchar](20) NOT NULL,
	[maSV] [varchar](20) NOT NULL,
	[DiemTP] [float] NULL,
	[DiemThi] [float] NULL,
	[PhanTramThi] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC,
	[maSV] ASC
))
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_SinhVien]
GO


