# $FreeBSD: graphics/libpuzzle/Makefile 324437 2013-08-09 14:05:52Z dinoex $

PORTNAME=	libpuzzle
PORTVERSION=	0.11
PORTREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.pureftpd.org/pub/pure-ftpd/misc/libpuzzle/releases/

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	Library to find similar pictures

LICENSE=	BSD

LIB_DEPENDS=	gd:${PORTSDIR}/graphics/gd

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

PORTDOCS=	AUTHORS COPYING NEWS README THANKS

MAN3=		libpuzzle.3 puzzle_set.3
MAN8=		puzzle-diff.8

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/COPYING ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/NEWS	${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/THANKS ${DOCSDIR}
.endif

.include <bsd.port.mk>
