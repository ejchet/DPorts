# Created by: Robert Noland <rnoland@FreeBSD.org>
# $FreeBSD: devel/compiz-bcop/Makefile 316333 2013-04-23 10:13:19Z bapt $

PORTNAME=	compiz-bcop
PORTVERSION=	0.8.4
CATEGORIES=	devel x11-wm
MASTER_SITES=	http://releases.compiz.org/${PORTVERSION}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Code generator for Compiz Fusion Plugins

RUN_DEPENDS=	${LOCALBASE}/bin/bash:${PORTSDIR}/shells/bash \
		${LOCALBASE}/bin/getopt:${PORTSDIR}/misc/getopt

USE_BZIP2=	yes
GNU_CONFIGURE=	yes

USES=		pkgconfig
USE_GNOME=	libxslt

post-patch:
	@${REINPLACE_CMD} \
		-e 's|/bin/bash|${LOCALBASE}/bin/bash|' \
		-e 's|getopt|${LOCALBASE}/bin/getopt|' \
		${WRKSRC}/src/bcop.in
	@${REINPLACE_CMD} -e \
		's|[(]datadir[)]/pkgconfig|(prefix)/libdata/pkgconfig|g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
