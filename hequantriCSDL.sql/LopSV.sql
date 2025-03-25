CREATE TABLE [dbo].[LopSV](
	[maLop] [varchar](20) NOT NULL,
	[maSV] [varchar](20) NOT NULL,
	[ChucVu] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSV] ASC
))
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_Lop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_SinhVien]
GO


