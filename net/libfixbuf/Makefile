# Created by: David Thiel <lx@redundancy.redundancy.org>
# $FreeBSD: net/libfixbuf/Makefile 319389 2013-05-29 19:42:08Z lx $

PORTNAME=	libfixbuf
PORTVERSION=	1.3.0
CATEGORIES=	net
MASTER_SITES=	http://tools.netsa.cert.org/releases/ \
		http://redundancy.redundancy.org/mirror/

MAINTAINER=	lx@FreeBSD.org
COMMENT=	Library for using the IP Flow Information Export protocol

GNU_CONFIGURE=	yes
USES=		pkgconfig
USE_GNOME=	glib20
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|echo aout|echo elf|' ${WRKSRC}/configure

.include <bsd.port.mk>
