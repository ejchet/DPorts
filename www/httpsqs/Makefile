# Created by: Zhihao Yuan <lichray@gmail.com>
# $FreeBSD: www/httpsqs/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	httpsqs
PORTVERSION=	1.7
CATEGORIES=	www devel
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	lichray@gmail.com
COMMENT=	Simple Queue Service based on HTTP GET/POST protocol

LICENSE=	BSD

LIB_DEPENDS+=	tokyocabinet:${PORTSDIR}/databases/tokyocabinet \
	event-2.0:${PORTSDIR}/devel/libevent2

USES=		pkgconfig

PLIST_FILES=	bin/${PORTNAME}

post-patch:
	${CP} ${PATCHDIR}/Makefile ${WRKSRC}
	@${REINPLACE_CMD} -e 's|{ 0 }|"${PREFIX}/bin/${PORTNAME}"|' \
		${WRKSRC}/httpsqs.c

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
