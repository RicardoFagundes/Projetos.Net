CREATE TABLE [dbo].[Projetos]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Titulo] VARCHAR(200) NOT NULL, 
    [dt_Criacao] DATETIME NOT NULL,
	UserId    int  references Usuarios(Id) on delete cascade NOT NULL

)
