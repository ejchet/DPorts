# Created by: pneumann@gmail.com
# $FreeBSD: x11-themes/gtk-murrina-fancy-clearlooks/Makefile 317646 2013-05-08 09:15:08Z olivierd $
#

PORTNAME=	gtk-murrina-fancy-clearlooks
PORTVERSION=	0.5
PORTREVISION=	6
CATEGORIES=	x11-themes
MASTER_SITES=	http://home.planet.nl/~bassa052/themes/
DISTNAME=	MurrinaFancyClearlooks_v${PORTVERSION}

MAINTAINER=	pneumann@gmail.com
COMMENT=	Murrine fancy clearlooks themes pack

BUILD_DEPENDS=	${LOCALBASE}/lib/gtk-2.0/${GTK2_VERSION}/engines/libmurrine.la:${PORTSDIR}/x11-themes/gtk-murrine-engine
RUN_DEPENDS=	${LOCALBASE}/lib/gtk-2.0/${GTK2_VERSION}/engines/libmurrine.la:${PORTSDIR}/x11-themes/gtk-murrine-engine

WRKSRC=	${WRKDIR}/MurrinaFancyClearlooks
USE_GNOME=	gtk20
NO_BUILD=	yes

do-install:
	@(cd ${WRKSRC} && for theme in *; do \
		${MKDIR} ${LOCALBASE}/share/themes/$$theme/gtk-2.0; \
		cd ${WRKSRC}/$$theme/gtk-2.0/ && for file in *; do\
			${INSTALL_DATA} ${WRKSRC}/$$theme/gtk-2.0/$$file ${LOCALBASE}/share/themes/$$theme/gtk-2.0; \
		done\
	done;)

.include <bsd.port.mk>
