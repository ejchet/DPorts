# Created by: Anders Nordby <anders@FreeBSD.org>
# $FreeBSD: net-mgmt/darkstat/Makefile 324402 2013-08-08 17:08:38Z wg $

PORTNAME=	darkstat
PORTVERSION=	3.0.716
CATEGORIES=	net-mgmt
MASTER_SITES=	http://unix4lyfe.org/darkstat/

MAINTAINER=	emikulic@gmail.com
COMMENT=	Network statistics gatherer and reporter

USE_RC_SUBR=	darkstat

USE_BZIP2=	yes
GNU_CONFIGURE=	yes

MAN8=		darkstat.8
PORTDOCS=	AUTHORS INSTALL README
PLIST_FILES=	sbin/darkstat

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
post-install:
	@${INSTALL} -d ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
