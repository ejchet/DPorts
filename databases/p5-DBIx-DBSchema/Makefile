# Created by: Peter Avalos <pavalos@theshell.com>
# $FreeBSD: databases/p5-DBIx-DBSchema/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DBIx-DBSchema
PORTVERSION=	0.40
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	OO-interface to database schemas

BUILD_DEPENDS=	p5-FreezeThaw>=0:${PORTSDIR}/devel/p5-FreezeThaw \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	DBIx::DBSchema.3 DBIx::DBSchema::ColGroup.3 \
	DBIx::DBSchema::ColGroup::Index.3 DBIx::DBSchema::ColGroup::Unique.3 \
	DBIx::DBSchema::Column.3 DBIx::DBSchema::DBD.3 \
	DBIx::DBSchema::DBD::mysql.3 DBIx::DBSchema::DBD::Pg.3 \
	DBIx::DBSchema::DBD::Sybase.3 DBIx::DBSchema::Table.3 \
	DBIx::DBSchema::DBD::Oracle.3 DBIx::DBSchema::DBD::SQLite.3 \
	DBIx::DBSchema::Index.3

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes README

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
