# Created by: Yukihiro Nakai <Nakai@technologist.com>
# $FreeBSD: textproc/libxml/Makefile 313633 2013-03-08 10:51:34Z kwm $

PORTNAME=	libxml
PORTVERSION=	1.8.17
PORTREVISION=	5
CATEGORIES=	textproc gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	XML parser library for GNOME

DEPRECATED=	Last release in 2002, unsupported by developers

USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
MAKE_JOBS_UNSAFE=yes

pre-patch:
	@${FIND} ${WRKSRC} -name "*.[ch]" | ${XARGS} ${REINPLACE_CMD} -e \
		's|malloc\.h|stdlib.h|g'

.include <bsd.port.mk>
