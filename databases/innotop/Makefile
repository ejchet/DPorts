# New ports collection makefile for:	innotop
# Date created:				23 October 2006
# Whom:	      				Steven Kreuzer <skreuzer@f2o.org>
#
# $FreeBSD: databases/innotop/Makefile 323497 2013-07-22 20:24:55Z skreuzer $
#

PORTNAME=	innotop
PORTVERSION=	1.9.1
CATEGORIES=	databases
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	A MySQL and InnoDB monitoring program

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql \
		p5-DBI>=1.46:${PORTSDIR}/databases/p5-DBI \
		p5-Term-ReadKey>=2.10:${PORTSDIR}/devel/p5-Term-ReadKey
RUN_DEPENDS=	p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql \
		p5-DBI>=1.46:${PORTSDIR}/databases/p5-DBI \
		p5-Term-ReadKey>=2.10:${PORTSDIR}/devel/p5-Term-ReadKey

PERL_CONFIGURE=	yes
USE_MYSQL=	yes

MAN1=		innotop.1

post-patch:
	@${REINPLACE_CMD} -e 's|/etc/innotop|${PREFIX}/etc|g' ${WRKSRC}/innotop

.include <bsd.port.mk>
