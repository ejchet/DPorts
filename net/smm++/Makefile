# Created by: Edwin Groothuis (edwin@mavetju.org)
# $FreeBSD: net/smm++/Makefile 316786 2013-04-29 08:57:12Z bapt $

PORTNAME=	smm++
PORTVERSION=	6.1.1
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	SF/smm/smm/${PORTVERSION}
DISTNAME=	smm611
EXTRACT_SUFX=	.tgz

MAINTAINER=	edwin@mavetju.org
COMMENT=	Graphical mudclient with mapper

RUN_DEPENDS=	${LOCALBASE}/lib/iwidgets4.0.1/iwidgets.tcl:${PORTSDIR}/x11-toolkits/iwidgets
BUILD_DEPENDS=	${LOCALBASE}/lib/libitk.so:${PORTSDIR}/x11-toolkits/itk \
		${LOCALBASE}/lib/libitcl.so:${PORTSDIR}/lang/itcl

WRKSRC=		${WRKDIR}/smm/Install.unix
USE_GMAKE=	yes
USE_TK=		84+
EXTRACT_AFTER_ARGS=--exclude CVS

post-patch:
	${REINPLACE_CMD} -e 's,itkarray=.*,itkarray=${WISH},' ${WRKSRC}/itk.sh

.include <bsd.port.mk>
