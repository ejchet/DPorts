# Created by: Alejandro Pulver <alejandro@varnet.biz>
# $FreeBSD: devel/adime/Makefile 323129 2013-07-16 21:59:48Z eadler $

PORTNAME=	adime
PORTVERSION=	2.2.1
PORTREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	SF

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	Generate Allegro dialogs in a very simple way

LIB_DEPENDS=	alleg:${PORTSDIR}/devel/allegro

USES=	gmake

.include "Makefile.man"

MAKEFILE=	makefile
INSTALL_TARGET=	install install-man
USE_LDCONFIG=	yes

pre-build:
	@(cd ${WRKSRC} && ${SH} fix.sh unix)

post-patch:
# Fix Makefile
	@${REINPLACE_CMD} -e 's|gcc|${CC}| ; \
			s|%%CFLAGS%%|${CFLAGS}| ; \
			s|/usr/local|${PREFIX}| ; s|$$(OPT)||' \
				${WRKSRC}/misc/makefile.uni

.include <bsd.port.mk>
