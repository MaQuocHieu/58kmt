CREATE TABLE [dbo].[BoMon1](
	[MaBM] [varchar](20) NOT NULL,
	[tenBM] [nvarchar](50) NULL,
	[makhoa] [varchar](10) NULL,
 CONSTRAINT [PK_BoMon1] PRIMARY KEY CLUSTERED 
(
	[MaBM] ASC
))
GO
ALTER TABLE [dbo].[BoMon1]  WITH CHECK ADD  CONSTRAINT [FK_BoMon1_Khoa1] FOREIGN KEY([makhoa])
REFERENCES [dbo].[Khoa] ([makhoa])
GO
ALTER TABLE [dbo].[BoMon1] CHECK CONSTRAINT [FK_BoMon1_Khoa1]
GO


