# New ports collection makefile for:   qalculate
# Date created:        07 July 2004
# Whom:                Sergey Akifyev <asa@gascom.ru>
#
# $FreeBSD: math/qalculate/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	qalculate
PORTVERSION=	0.9.7
PORTREVISION=	2
CATEGORIES=	math
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}-gtk/${PORTNAME}-gtk-${PORTVERSION}
DISTNAME=	${PORTNAME}-gtk-${PORTVERSION}

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	A multi-purpose desktop calculator (Gnome frontend)

LIB_DEPENDS=	qalculate.5:${PORTSDIR}/math/libqalculate
RUN_DEPENDS=	gnuplot:${PORTSDIR}/math/gnuplot \
		wget:${PORTSDIR}/ftp/wget

USE_GNOME=	gnomehack gnomeprefix intlhack libglade2 libgnome
USES=		gettext
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
INSTALLS_OMF=	yes

post-patch:
	@${REINPLACE_CMD} -e 's/^GMSGFMT = @GMSGFMT@/GMSGFMT = msgfmt/' ${WRKSRC}/po/Makefile.in.in

.include <bsd.port.mk>
