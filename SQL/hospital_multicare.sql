USE [master]
GO
/****** Object:  Database [SistemaHospital]    Script Date: 13/09/2024 23:24:25 ******/
CREATE DATABASE [SistemaHospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SistemaHospital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SistemaHospital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SistemaHospital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SistemaHospital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SistemaHospital] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistemaHospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistemaHospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistemaHospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistemaHospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistemaHospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistemaHospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistemaHospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SistemaHospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistemaHospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistemaHospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistemaHospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistemaHospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistemaHospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistemaHospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistemaHospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistemaHospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SistemaHospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistemaHospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistemaHospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistemaHospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistemaHospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistemaHospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SistemaHospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistemaHospital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SistemaHospital] SET  MULTI_USER 
GO
ALTER DATABASE [SistemaHospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistemaHospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SistemaHospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SistemaHospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SistemaHospital] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SistemaHospital] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SistemaHospital] SET QUERY_STORE = ON
GO
ALTER DATABASE [SistemaHospital] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SistemaHospital]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[DepartamentoID] [int] NOT NULL,
	[NomeDepartamento] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalhesFuncionario]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalhesFuncionario](
	[DetalhesFuncionarioID] [int] NOT NULL,
	[FuncionarioID] [int] NULL,
	[PrimeiroNome] [varchar](45) NULL,
	[Sobrenome] [varchar](45) NULL,
	[DataNascimento] [date] NULL,
	[Genero] [varchar](45) NULL,
	[NumeroTelefone] [varchar](45) NULL,
	[FuncaoID] [int] NULL,
	[CriadoEm] [datetime] NULL,
	[ModificadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetalhesFuncionarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[doenca]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doenca](
	[DoencaID] [int] NOT NULL,
	[Nome] [varchar](45) NULL,
	[Descricao] [varchar](255) NULL,
	[Sintomas] [varchar](255) NULL,
	[Severidade] [varchar](20) NULL,
	[DataDiagnostico] [date] NULL,
	[TratamentoRecomendado] [varchar](255) NULL,
	[CriadoEm] [datetime] NULL,
	[ModificadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DoencaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[endereco]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[endereco](
	[EnderecoID] [int] NOT NULL,
	[Endereco1] [varchar](45) NULL,
	[Endereco2] [varchar](45) NULL,
	[Cidade] [varchar](45) NULL,
	[Estado] [varchar](45) NULL,
	[Pais] [varchar](10) NULL,
	[CEP] [varchar](45) NULL,
	[CriadoEm] [datetime] NULL,
	[ModificadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnderecoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[FeedbackID] [int] NOT NULL,
	[DePacienteID] [int] NULL,
	[ParaFuncionarioID] [int] NULL,
	[Comentario] [varchar](45) NULL,
	[Avaliacao] [varchar](45) NULL,
	[CriadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcao]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcao](
	[FuncaoID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NULL,
	[Nivel] [varchar](20) NULL,
	[SalarioBase] [decimal](10, 2) NULL,
	[ReportaParaID] [int] NULL,
	[TipoContrato] [varchar](50) NULL,
	[DataCriacao] [datetime] NULL,
	[DataModificacao] [datetime] NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[FuncaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcionario]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionario](
	[FuncionarioID] [int] NOT NULL,
	[NumeroFuncionario] [int] NULL,
	[Email] [varchar](45) NULL,
	[Senha] [varbinary](250) NULL,
	[CriadoPor] [int] NULL,
	[CriadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FuncionarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcionarioDepartamento]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionarioDepartamento](
	[FuncionarioDepartamentoID] [int] NOT NULL,
	[FuncionarioID] [int] NOT NULL,
	[DepartamentoID] [int] NOT NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[FuncionarioDepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcionarioEndereco]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionarioEndereco](
	[FuncionarioEnderecoID] [int] NOT NULL,
	[Rua] [varchar](100) NULL,
	[Numero] [varchar](10) NULL,
	[Complemento] [varchar](45) NULL,
	[Bairro] [varchar](45) NULL,
	[Cidade] [varchar](45) NULL,
	[Estado] [varchar](45) NULL,
	[Pais] [varchar](45) NULL,
	[CEP] [varchar](10) NULL,
	[Ativo] [bit] NULL,
	[CriadoEm] [datetime] NULL,
	[ModificadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FuncionarioEnderecoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paciente]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paciente](
	[PacienteID] [int] NOT NULL,
	[PrimeiroNome] [varchar](45) NULL,
	[Sobrenome] [varchar](45) NULL,
	[DataNascimento] [date] NULL,
	[Genero] [varchar](45) NULL,
	[NumeroTelefone] [varchar](45) NULL,
	[Email] [varchar](45) NULL,
	[Altura] [varchar](45) NULL,
	[Peso] [varchar](45) NULL,
	[GrupoSanguineo] [varchar](45) NULL,
	[Doenca] [varchar](45) NULL,
	[CriadoEm] [datetime] NULL,
	[ModificadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacienteConsulta]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacienteConsulta](
	[PacienteConsultaID] [int] NOT NULL,
	[PacienteID] [int] NOT NULL,
	[FuncionarioID] [int] NOT NULL,
	[DataConsulta] [datetime] NOT NULL,
	[Concluida] [bit] NULL,
	[Cancelada] [bit] NULL,
	[Ausente] [bit] NULL,
	[CriadoPor] [int] NULL,
	[CriadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteConsultaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacienteDoenca]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacienteDoenca](
	[PacienteRegistroID] [int] NOT NULL,
	[DoencaID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacienteFaturamento]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacienteFaturamento](
	[PacienteFaturamentoID] [int] NOT NULL,
	[PacienteRegistroID] [int] NOT NULL,
	[DescricaoTransacao] [varchar](45) NOT NULL,
	[Valor] [decimal](8, 2) NULL,
	[DataGeracao] [datetime] NULL,
	[Tipo] [varchar](100) NULL,
	[PacienteEnderecoID] [int] NULL,
	[TipoPagamento] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteFaturamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacienteRegistro]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacienteRegistro](
	[PacienteRegistroID] [int] NOT NULL,
	[PacienteID] [int] NOT NULL,
	[DataInternacao] [date] NULL,
	[DataAlta] [date] NULL,
	[PacienteSeguroID] [int] NULL,
	[TipoCoparticipacao] [varchar](30) NULL,
	[NumeroQuarto] [varchar](45) NULL,
	[CriadoPor] [int] NULL,
	[CriadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteRegistroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacienteRelatorioLaboratorial]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacienteRelatorioLaboratorial](
	[PacienteRelatorioLaboratorialID] [int] NOT NULL,
	[PacienteRegistroID] [int] NOT NULL,
	[TesteLaboratorialID] [int] NOT NULL,
	[ValorTeste] [varchar](45) NULL,
	[Comentario] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteRelatorioLaboratorialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacienteSeguro]    Script Date: 13/09/2024 23:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacienteSeguro](
	[PacienteSeguroID] [int] NOT NULL,
	[PacienteID] [int] NOT NULL,
	[NomeFornecedor] [varchar](45) NULL,
	[NumeroGrupo] [varchar](45) NULL,
	[NumeroSeguro] [varchar](45) NULL,
	[CoparticipacaoEmRede] [int] NULL,
	[CoparticipacaoForaRede] [int] NULL,
	[DataInicio] [datetime] NULL,
	[DataFim] [datetime] NULL,
	[Atual] [bit] NULL,
	[CriadoEm] [datetime] NULL,
	[ModificadoEm] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteSeguroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testeLaboratorial]    Script Date: 13/09/2024 23:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testeLaboratorial](
	[TesteLaboratorialID] [int] NOT NULL,
	[NomeTeste] [varchar](45) NULL,
	[Ativo] [bit] NULL,
	[Descricao] [varchar](10) NULL,
	[TipoTeste] [varchar](10) NULL,
	[Preco] [varchar](30) NULL,
	[Resultado] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TesteLaboratorialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalhesFuncionario]  WITH CHECK ADD  CONSTRAINT [FK_detalhesFuncionario_funcionario_IDX] FOREIGN KEY([FuncionarioID])
REFERENCES [dbo].[funcionario] ([FuncionarioID])
GO
ALTER TABLE [dbo].[detalhesFuncionario] CHECK CONSTRAINT [FK_detalhesFuncionario_funcionario_IDX]
GO
ALTER TABLE [dbo].[funcionarioDepartamento]  WITH CHECK ADD  CONSTRAINT [FK_FuncionarioDepartamento_Departamento] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[departamento] ([DepartamentoID])
GO
ALTER TABLE [dbo].[funcionarioDepartamento] CHECK CONSTRAINT [FK_FuncionarioDepartamento_Departamento]
GO
ALTER TABLE [dbo].[funcionarioDepartamento]  WITH CHECK ADD  CONSTRAINT [FK_funcionarioDepartamento_Departamento_IDX] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[departamento] ([DepartamentoID])
GO
ALTER TABLE [dbo].[funcionarioDepartamento] CHECK CONSTRAINT [FK_funcionarioDepartamento_Departamento_IDX]
GO
ALTER TABLE [dbo].[funcionarioDepartamento]  WITH CHECK ADD  CONSTRAINT [FK_funcionarioDepartamento_funcionario_IDX] FOREIGN KEY([FuncionarioID])
REFERENCES [dbo].[funcionario] ([FuncionarioID])
GO
ALTER TABLE [dbo].[funcionarioDepartamento] CHECK CONSTRAINT [FK_funcionarioDepartamento_funcionario_IDX]
GO
ALTER TABLE [dbo].[pacienteConsulta]  WITH CHECK ADD  CONSTRAINT [FK_pacienteConsulta_funcionario_IDX] FOREIGN KEY([FuncionarioID])
REFERENCES [dbo].[funcionario] ([FuncionarioID])
GO
ALTER TABLE [dbo].[pacienteConsulta] CHECK CONSTRAINT [FK_pacienteConsulta_funcionario_IDX]
GO
ALTER TABLE [dbo].[pacienteConsulta]  WITH CHECK ADD  CONSTRAINT [FK_pacienteConsulta_paciente_IDX] FOREIGN KEY([PacienteID])
REFERENCES [dbo].[paciente] ([PacienteID])
GO
ALTER TABLE [dbo].[pacienteConsulta] CHECK CONSTRAINT [FK_pacienteConsulta_paciente_IDX]
GO
ALTER TABLE [dbo].[pacienteDoenca]  WITH CHECK ADD  CONSTRAINT [FK_pacienteDoenca_doenca_IDX] FOREIGN KEY([DoencaID])
REFERENCES [dbo].[doenca] ([DoencaID])
GO
ALTER TABLE [dbo].[pacienteDoenca] CHECK CONSTRAINT [FK_pacienteDoenca_doenca_IDX]
GO
ALTER TABLE [dbo].[pacienteDoenca]  WITH CHECK ADD  CONSTRAINT [FK_pacienteDoenca_pacienteRegistro_IDX] FOREIGN KEY([PacienteRegistroID])
REFERENCES [dbo].[pacienteRegistro] ([PacienteRegistroID])
GO
ALTER TABLE [dbo].[pacienteDoenca] CHECK CONSTRAINT [FK_pacienteDoenca_pacienteRegistro_IDX]
GO
ALTER TABLE [dbo].[pacienteRegistro]  WITH CHECK ADD  CONSTRAINT [FK_pacienteRegistro_paciente_IDX] FOREIGN KEY([PacienteID])
REFERENCES [dbo].[paciente] ([PacienteID])
GO
ALTER TABLE [dbo].[pacienteRegistro] CHECK CONSTRAINT [FK_pacienteRegistro_paciente_IDX]
GO
ALTER TABLE [dbo].[pacienteRegistro]  WITH CHECK ADD  CONSTRAINT [FK_pacienteRegistro_pacienteSeguro_IDX] FOREIGN KEY([PacienteSeguroID])
REFERENCES [dbo].[pacienteSeguro] ([PacienteSeguroID])
GO
ALTER TABLE [dbo].[pacienteRegistro] CHECK CONSTRAINT [FK_pacienteRegistro_pacienteSeguro_IDX]
GO
ALTER TABLE [dbo].[pacienteRelatorioLaboratorial]  WITH CHECK ADD  CONSTRAINT [FK_pacienteRelatorioLaboratorial_testeLaboratorial_IDX] FOREIGN KEY([TesteLaboratorialID])
REFERENCES [dbo].[testeLaboratorial] ([TesteLaboratorialID])
GO
ALTER TABLE [dbo].[pacienteRelatorioLaboratorial] CHECK CONSTRAINT [FK_pacienteRelatorioLaboratorial_testeLaboratorial_IDX]
GO
ALTER TABLE [dbo].[pacienteSeguro]  WITH CHECK ADD  CONSTRAINT [FK_pacienteSeguro_paciente_IDX] FOREIGN KEY([PacienteID])
REFERENCES [dbo].[paciente] ([PacienteID])
GO
ALTER TABLE [dbo].[pacienteSeguro] CHECK CONSTRAINT [FK_pacienteSeguro_paciente_IDX]
GO
USE [master]
GO
ALTER DATABASE [SistemaHospital] SET  READ_WRITE 
GO
