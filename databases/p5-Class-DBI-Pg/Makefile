# Created by: Mathieu Arnold <m@absolight.net>
# $FreeBSD: databases/p5-Class-DBI-Pg/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Class-DBI-Pg
PORTVERSION=	0.09
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Class/DMAKI
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Extensions to Class::DBI for PostgreSQL

BUILD_DEPENDS=	p5-Class-DBI>=0:${PORTSDIR}/databases/p5-Class-DBI \
		p5-DBD-Pg>=0:${PORTSDIR}/databases/p5-DBD-Pg
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Class::DBI::Pg.3

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes README

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
