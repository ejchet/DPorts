# Created by: FURUSAWA, Kazuhisa <kazu@jp.freebsd.org>
# $FreeBSD: x11-clocks/mouseclock/Makefile 321957 2013-06-28 11:51:05Z bapt $

PORTNAME=	mouseclock
PORTVERSION=	1.0
PORTREVISION=	4
CATEGORIES=	x11-clocks
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/clocks

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Display the current time using the X root cursor

USES=		imake
USE_GMAKE=	yes
USE_XORG=	x11 xext
NO_INSTALL_MANPAGES=	yes

post-configure:
	@${TOUCH} ${WRKSRC}/mouseclock.man

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_MAN} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
