
CREATE TABLE [dbo].[Usuarios]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Email] VARCHAR(200) unique NOT NULL, 
    [Password] VARCHAR(200) NOT NULL, 
    [UltimoLogin] DATETIME NOT NULL
)


CREATE TABLE [dbo].[Projetos]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Titulo] VARCHAR(200) NOT NULL, 
    [dt_Criacao] DATETIME NOT NULL,
	UserId    int  references Usuarios(Id) on delete cascade NOT NULL

)


CREATE TABLE [dbo].[Responsavel]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] VARCHAR(200) NOT NULL, 
    [Produto] VARCHAR(150) NOT NULL, 
    [Email] VARCHAR(150) NOT NULL
)


CREATE TABLE [dbo].[Tarefas]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Titulo] VARCHAR(200) NOT NULL, 
    [dt_Cadastro] DATETIME NOT NULL, 
    [Imporancia] CHAR(1) NULL , /*  b, n, u */   /* b-aixa    n-ormal    u-rgente  */
    [Status] CHAR(1) NULL ,  /*  i, a, c */   /* i-niciar  a-ndamento c-oncluida  */
    [ID_Projeto] int  references Projetos(Id) on delete cascade, 
    [ID_Responsavel] int  references Responsavel(Id) on delete cascade, 
    [dt_Ini_Prev] DATETIME NOT NULL, 
    [dt_Fim_Prev] DATETIME NULL, 
    [dt_Ini] DATETIME NULL, 
    [dt_Fim] DATETIME NULL, 
    [Obs] NVARCHAR(MAX) NULL
)

