# Created by: Jacek Pelka <jacek@combit.com.pl>
# $FreeBSD: polish/ekg/Makefile 322729 2013-07-10 19:41:30Z pawel $

PORTNAME=	ekg
DISTVERSION=	1.8rc2
PORTREVISION=	1
PORTEPOCH=	3
CATEGORIES=	polish net-im
MASTER_SITES=	http://ekg.chmurka.net/

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Text-mode Gadu-Gadu client

LIB_DEPENDS=	execinfo:${PORTSDIR}/devel/libexecinfo \
		gadu:${PORTSDIR}/polish/libgadu

GNU_CONFIGURE=	yes
USES=		gmake pathfix pkgconfig
USE_LDCONFIG=	yes

CONFIGURE_ARGS= --without-libungif \
		--without-libjpeg \
		--disable-ui-gtk

CFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-L/usr/lib -lncurses -L${LOCALBASE}/lib -lexecinfo -pthread

MAN1=		ekg.1
MANLANG=	"" pl
MANCOMPRESSED=	no

OPTIONS_DEFINE=		ASPELL OPENSSL
OPTIONS_DEFAULT=	OPENSSL

ASPELL_CONFIGURE_ON=	--enable-aspell
ASPELL_LIB_DEPENDS=	aspell:${PORTSDIR}/polish/aspell

OPENSSL_CONFIGURE_OFF=	--without-openssl

post-install:
	${STRIP_CMD} ${PREFIX}/bin/ekg

.include <bsd.port.mk>
