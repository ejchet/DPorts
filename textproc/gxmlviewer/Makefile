# Created by: ijliao
# $FreeBSD: textproc/gxmlviewer/Makefile 316596 2013-04-26 10:44:28Z ak $

PORTNAME=	gxmlviewer
PORTVERSION=	1.3.3
PORTREVISION=	13
CATEGORIES=	textproc
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTVERSION}-0

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An xmlviewer with a netscape plugin, and now a bonobo control as well

USES=        pathfix gettext
USE_GNOME=	bonobo gnomelibs gnomeprefix libxml2
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}"

USE_WEBPLUGINS=	native
WEBPLUGINS_DIR=	${PREFIX}/lib/gxmlviewer/plugins
WEBPLUGINS_FILES=npgxmlviewer.so

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/www/firefox/Makefile.webplugins"

post-patch:
	@${REINPLACE_CMD} -e 's|intl||g' ${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e 's|= -DXP_UNIX|= -fPIC -DXP_UNIX|g ; \
		s|/netscape/|/gxmlviewer/|g ; \
		s|@LIBS@|@LIBS@ -lXt -lXext|g' \
			${WRKSRC}/src/nsplugin/Makefile.in

.include <bsd.port.post.mk>
