# Created by: Patrick Li <pat@databits.net>
# $FreeBSD: security/gtk-knocker/Makefile 315566 2013-03-29 19:33:41Z cs $
#

PORTNAME=	knocker
PORTVERSION=	0.6.6
PORTREVISION=	4
CATEGORIES=	security net x11
MASTER_SITES=	SF/${PORTNAME}/gtk-${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	gtk-
DISTNAME=	gtk-${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple and easy to use TCP only port scanner (GTK+ version)

GNU_CONFIGURE=	yes
USE_XORG=	x11 xpm
USE_GNOME=	gtk12

MAN1=		gtk-knocker.1

.include <bsd.port.pre.mk>

post-patch:
.for file in src/gtk_support.c src/gtk_callbacks.c
	@${REINPLACE_CMD} -e 's|"\.\./pixmaps"|PACKAGE_DATA_DIR "/pixmaps"|g' \
		${WRKSRC}/${file}
.endfor
.for file in src/license.h
	@${REINPLACE_CMD} -e 's|$$|\\n\\|g ; \
		 s|^".*|";|g' ${WRKSRC}/${file}
.endfor

post-install:
	@${INSTALL_MAN} ${WRKSRC}/docs/gtk-knocker.1 ${MANPREFIX}/man/man1

.include <bsd.port.post.mk>
