# Created by: James FitzGibbon <jfitz@FreeBSD.org>
# $FreeBSD: databases/p5-DBD-Pg/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DBD-Pg
PORTVERSION=	2.19.3
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Provides access to PostgreSQL databases through the DBI

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-DBI>=1.52:${PORTSDIR}/databases/p5-DBI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
USE_PGSQL=	yes

MAN3=		DBD::Pg.3 Bundle::DBD::Pg.3

.include <bsd.port.mk>
