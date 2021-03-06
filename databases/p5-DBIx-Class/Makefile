# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: databases/p5-DBIx-Class/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DBIx-Class
PORTVERSION=	0.08250
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RIBASUSHI
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Extensible and flexible object <-> relational mapper

BUILD_DEPENDS=	p5-Class-Accessor-Grouped>=0.10007:${PORTSDIR}/devel/p5-Class-Accessor-Grouped \
		p5-Class-C3-Componentised>=1.0009:${PORTSDIR}/devel/p5-Class-C3-Componentised \
		p5-Class-Inspector>=1.24:${PORTSDIR}/devel/p5-Class-Inspector \
		p5-Class-Method-Modifiers>=1.06:${PORTSDIR}/devel/p5-Class-Method-Modifiers \
		p5-Config-Any>=0.20:${PORTSDIR}/devel/p5-Config-Any \
		p5-Context-Preserve>=0.01:${PORTSDIR}/devel/p5-Context-Preserve \
		p5-DBI>=1.57:${PORTSDIR}/databases/p5-DBI \
		p5-Data-Compare>=1.2200:${PORTSDIR}/devel/p5-Data-Compare \
		p5-Data-Dumper-Concise>=2.020:${PORTSDIR}/devel/p5-Data-Dumper-Concise \
		p5-Data-Page>=2.00:${PORTSDIR}/databases/p5-Data-Page \
		p5-Devel-GlobalDestruction>=0:${PORTSDIR}/devel/p5-Devel-GlobalDestruction \
		p5-Hash-Merge>=0.12:${PORTSDIR}/textproc/p5-Hash-Merge \
		p5-MRO-Compat>=0.09:${PORTSDIR}/devel/p5-MRO-Compat \
		p5-Module-Find>=0.06:${PORTSDIR}/devel/p5-Module-Find \
		p5-Moo>=0.009100:${PORTSDIR}/devel/p5-Moo \
		p5-Path-Class>=0.18:${PORTSDIR}/devel/p5-Path-Class \
		p5-SQL-Abstract>=1.73:${PORTSDIR}/databases/p5-SQL-Abstract \
		p5-Scope-Guard>=0.03:${PORTSDIR}/devel/p5-Scope-Guard \
		p5-Sub-Name>=0.04:${PORTSDIR}/devel/p5-Sub-Name \
		p5-Try-Tiny>=0.04:${PORTSDIR}/lang/p5-Try-Tiny \
		p5-namespace-clean>=0.20:${PORTSDIR}/devel/p5-namespace-clean \
		p5-strictures>=1.003001:${PORTSDIR}/devel/p5-strictures
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Class-DBI-Plugin-DeepAbstractSearch>=0:${PORTSDIR}/databases/p5-Class-DBI-Plugin-DeepAbstractSearch \
		p5-DBD-SQLite>=1.29:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-DateTime>=0.55:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Format-MySQL>=0:${PORTSDIR}/devel/p5-DateTime-Format-MySQL \
		p5-DateTime-Format-Pg>=0:${PORTSDIR}/devel/p5-DateTime-Format-Pg \
		p5-DateTime-Format-SQLite>=0:${PORTSDIR}/devel/p5-DateTime-Format-SQLite \
		p5-JSON-Any>=0:${PORTSDIR}/converters/p5-JSON-Any \
		p5-Math-Base36>=0.07:${PORTSDIR}/math/p5-Math-Base36 \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Types>=0:${PORTSDIR}/devel/p5-MooseX-Types \
		p5-MooseX-Types-JSON>=0:${PORTSDIR}/devel/p5-MooseX-Types-JSON \
		p5-MooseX-Types-Path-Class>=0.04:${PORTSDIR}/devel/p5-MooseX-Types-Path-Class \
		p5-SQL-Translator>=0.09.004:${PORTSDIR}/databases/p5-SQL-Translator \
		p5-Test-Exception>=0.31:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-Warn>=0.21:${PORTSDIR}/devel/p5-Test-Warn \
		p5-Test-Deep>0:${PORTSDIR}/devel/p5-Test-Deep \
		p5-Text-CSV>=0:${PORTSDIR}/textproc/p5-Text-CSV \
		p5-Time-Piece>=0:${PORTSDIR}/devel/p5-Time-Piece \
		p5-Time-Piece-MySQL>=0:${PORTSDIR}/databases/p5-Time-Piece-MySQL \
		p5-namespace-autoclean>=0:${PORTSDIR}/devel/p5-namespace-autoclean

OPTIONS_DEFINE=	SQLT
SQLT_DESC=	SQL::Translator (generate DDL from schema)

USES=		perl5
USE_PERL5=	configure
CONFIGURE_ENV=	DBICTEST_NO_SQLITE_CHECK=1

MAN1=		dbicadmin.1
MAN3=		DBIx::Class.3 \
		DBIx::Class::AccessorGroup.3 \
		DBIx::Class::Admin.3 \
		DBIx::Class::CDBICompat.3 \
		DBIx::Class::CDBICompat::AbstractSearch.3 \
		DBIx::Class::CDBICompat::ColumnsAsHash.3 \
		DBIx::Class::CDBICompat::Copy.3 \
		DBIx::Class::CDBICompat::Iterator.3 \
		DBIx::Class::CDBICompat::NoObjectIndex.3 \
		DBIx::Class::CDBICompat::Relationship.3 \
		DBIx::Class::CDBICompat::Relationships.3 \
		DBIx::Class::CDBICompat::SQLTransformer.3 \
		DBIx::Class::Carp.3 \
		DBIx::Class::Core.3 \
		DBIx::Class::Cursor.3 \
		DBIx::Class::DB.3 \
		DBIx::Class::Exception.3 \
		DBIx::Class::FilterColumn.3 \
		DBIx::Class::InflateColumn.3 \
		DBIx::Class::InflateColumn::DateTime.3 \
		DBIx::Class::InflateColumn::File.3 \
		DBIx::Class::Manual.3 \
		DBIx::Class::Manual::Component.3 \
		DBIx::Class::Manual::Cookbook.3 \
		DBIx::Class::Manual::DocMap.3 \
		DBIx::Class::Manual::Example.3 \
		DBIx::Class::Manual::FAQ.3 \
		DBIx::Class::Manual::Features.3 \
		DBIx::Class::Manual::Glossary.3 \
		DBIx::Class::Manual::Intro.3 \
		DBIx::Class::Manual::Joining.3 \
		DBIx::Class::Manual::Reading.3 \
		DBIx::Class::Manual::ResultClass.3 \
		DBIx::Class::Manual::Troubleshooting.3 \
		DBIx::Class::Optional::Dependencies.3 \
		DBIx::Class::Ordered.3 \
		DBIx::Class::PK.3 \
		DBIx::Class::PK::Auto.3 \
		DBIx::Class::PK::Auto::DB2.3 \
		DBIx::Class::PK::Auto::MSSQL.3 \
		DBIx::Class::PK::Auto::MySQL.3 \
		DBIx::Class::PK::Auto::Oracle.3 \
		DBIx::Class::PK::Auto::Pg.3 \
		DBIx::Class::PK::Auto::SQLite.3 \
		DBIx::Class::Relationship.3 \
		DBIx::Class::Relationship::Base.3 \
		DBIx::Class::ResultClass::HashRefInflator.3 \
		DBIx::Class::ResultSet.3 \
		DBIx::Class::ResultSetColumn.3 \
		DBIx::Class::ResultSetManager.3 \
		DBIx::Class::ResultSource.3 \
		DBIx::Class::ResultSource::Table.3 \
		DBIx::Class::ResultSource::View.3 \
		DBIx::Class::ResultSourceHandle.3 \
		DBIx::Class::ResultSourceProxy::Table.3 \
		DBIx::Class::Row.3 \
		DBIx::Class::SQLMaker.3 \
		DBIx::Class::SQLMaker::LimitDialects.3 \
		DBIx::Class::SQLMaker::OracleJoins.3 \
		DBIx::Class::Schema.3 \
		DBIx::Class::Schema::Versioned.3 \
		DBIx::Class::Serialize::Storable.3 \
		DBIx::Class::StartupCheck.3 \
		DBIx::Class::Storage.3 \
		DBIx::Class::Storage::BlockRunner.3 \
		DBIx::Class::Storage::DBI.3 \
		DBIx::Class::Storage::DBI::ACCESS.3 \
		DBIx::Class::Storage::DBI::ADO.3 \
		DBIx::Class::Storage::DBI::ADO::MS_Jet.3 \
		DBIx::Class::Storage::DBI::ADO::MS_Jet::Cursor.3 \
		DBIx::Class::Storage::DBI::ADO::Microsoft_SQL_Server.3 \
		DBIx::Class::Storage::DBI::ADO::Microsoft_SQL_Server::Cursor.3 \
		DBIx::Class::Storage::DBI::AutoCast.3 \
		DBIx::Class::Storage::DBI::Cursor.3 \
		DBIx::Class::Storage::DBI::DB2.3 \
		DBIx::Class::Storage::DBI::Firebird.3 \
		DBIx::Class::Storage::DBI::Firebird::Common.3 \
		DBIx::Class::Storage::DBI::IdentityInsert.3 \
		DBIx::Class::Storage::DBI::Informix.3 \
		DBIx::Class::Storage::DBI::InterBase.3 \
		DBIx::Class::Storage::DBI::MSSQL.3 \
		DBIx::Class::Storage::DBI::NoBindVars.3 \
		DBIx::Class::Storage::DBI::ODBC.3 \
		DBIx::Class::Storage::DBI::ODBC::ACCESS.3 \
		DBIx::Class::Storage::DBI::ODBC::DB2_400_SQL.3 \
		DBIx::Class::Storage::DBI::ODBC::Firebird.3 \
		DBIx::Class::Storage::DBI::ODBC::Microsoft_SQL_Server.3 \
		DBIx::Class::Storage::DBI::ODBC::SQL_Anywhere.3 \
		DBIx::Class::Storage::DBI::Oracle.3 \
		DBIx::Class::Storage::DBI::Oracle::Generic.3 \
		DBIx::Class::Storage::DBI::Oracle::WhereJoins.3 \
		DBIx::Class::Storage::DBI::Pg.3 \
		DBIx::Class::Storage::DBI::Replicated.3 \
		DBIx::Class::Storage::DBI::Replicated::Balancer.3 \
		DBIx::Class::Storage::DBI::Replicated::Balancer::First.3 \
		DBIx::Class::Storage::DBI::Replicated::Balancer::Random.3 \
		DBIx::Class::Storage::DBI::Replicated::Introduction.3 \
		DBIx::Class::Storage::DBI::Replicated::Pool.3 \
		DBIx::Class::Storage::DBI::Replicated::Replicant.3 \
		DBIx::Class::Storage::DBI::Replicated::WithDSN.3 \
		DBIx::Class::Storage::DBI::SQLAnywhere.3 \
		DBIx::Class::Storage::DBI::SQLAnywhere::Cursor.3 \
		DBIx::Class::Storage::DBI::SQLite.3 \
		DBIx::Class::Storage::DBI::Sybase.3 \
		DBIx::Class::Storage::DBI::Sybase::ASE.3 \
		DBIx::Class::Storage::DBI::Sybase::ASE::NoBindVars.3 \
		DBIx::Class::Storage::DBI::Sybase::FreeTDS.3 \
		DBIx::Class::Storage::DBI::Sybase::MSSQL.3 \
		DBIx::Class::Storage::DBI::Sybase::Microsoft_SQL_Server.3 \
		DBIx::Class::Storage::DBI::Sybase::Microsoft_SQL_Server::NoBindVars.3 \
		DBIx::Class::Storage::DBI::UniqueIdentifier.3 \
		DBIx::Class::Storage::DBI::mysql.3 \
		DBIx::Class::Storage::Statistics.3 \
		DBIx::Class::Storage::TxnScopeGuard.3 \
		DBIx::Class::UTF8Columns.3 \
		SQL::Translator::Parser::DBIx::Class.3 \
		SQL::Translator::Producer::DBIx::Class::File.3

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSQLT}
RUN_DEPENDS+=	p5-SQL-Translator>=0.09.004:${PORTSDIR}/databases/p5-SQL-Translator
.endif

.include <bsd.port.pre.mk>

#.if ${PERL_LEVEL} < 501600
#BUILD_DEPENDS+=	p5-ExtUtils-MakeMaker>=6.59:${PORTSDIR}/devel/p5-ExtUtils-MakeMaker
#.endif

.include <bsd.port.post.mk>
