# Created by: Michael Vasilenko <acid@stu.cn.ua>
# $FreeBSD: x11-fm/mtoolsfm/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=	mtoolsfm
PORTVERSION=	1.9.5
PORTREVISION=	2
CATEGORIES=	x11-fm
MASTER_SITES=	SF
DISTNAME=	MToolsFM-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A graphical frontend to mtools

RUN_DEPENDS=	mtools:${PORTSDIR}/emulators/mtools

USES=        pathfix gettext
USE_GNOME=	gtk12
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--with-conffile="${PREFIX}/etc/mtoolsfm.conf"

MAN1=		mtoolsfm.1

post-patch:
	@${REINPLACE_CMD} -e 's|MToolsFM|mtoolsfm|g' ${WRKSRC}/configure
	@${FIND} ${WRKSRC} -name 'Makefile.in' | ${XARGS} ${REINPLACE_CMD} -e \
		's|MToolsFM|mtoolsfm|g'
	@cd ${WRKSRC} && ${SED} -e \
		's|MToolsFM|mtoolsfm|g ; \
		 s| /etc| ${PREFIX}/etc|g ; \
		 s|/usr/X11R6/bin|${PREFIX}/bin|g ; \
		 s|/usr/bin|${LOCALBASE}/bin|g ; \
		 s|^/etc|${PREFIX}/etc|g' < MToolsFM.1 > mtoolsfm.1

.include <bsd.port.mk>
