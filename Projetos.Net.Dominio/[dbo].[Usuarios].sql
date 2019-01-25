CREATE TABLE [dbo].[Usuarios]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Email] VARCHAR(200) unique NOT NULL, 
    [Password] VARCHAR(200) NOT NULL, 
    [UltimoLogin] DATETIME NOT NULL
)
