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
