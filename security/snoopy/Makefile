# Created by: Philippe Audeoud <jadawin@tuxaco.net>
# $FreeBSD: security/snoopy/Makefile 322325 2013-07-05 13:44:31Z bapt $

PORTNAME=	snoopy
PORTVERSION=	1.8.0
CATEGORIES=	security
MASTER_SITES=	SF/${PORTNAME}logger/

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	An execve() wrapper and logger

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

PLIST_FILES=	lib/snoopy.so bin/detect
PORTDOCS=	README

USES=		gmake
GNU_CONFIGURE=	yes

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} 's|/usr/local|${PREFIX}|g' ${WRKSRC}/README
	@${REINPLACE_CMD} '/^LIBS.*/d' ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/snoopy.so ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/detect ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
