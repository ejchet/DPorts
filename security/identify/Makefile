# Created by: nsayer@quack.kfu.com
# $FreeBSD: ports/security/identify/Makefile,v 1.20 2012/11/17 06:01:05 svnexp Exp $

PORTNAME=	identify
PORTVERSION=	0.7
CATEGORIES=	security
MASTER_SITES=	http://ftp.nluug.nl/ftp/pub/pub/security/coast/daemons/pidentd/tools/ \
		http://www.scn.rain.com/pub/security/authent/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Client side ident protocol daemon wrapper

BUILD_DEPENDS=	${LOCALBASE}/lib/libident.a:${PORTSDIR}/security/libident

PORTDOCS=	README
PLIST_FILES=	libexec/identify

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/identify ${PREFIX}/libexec
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
