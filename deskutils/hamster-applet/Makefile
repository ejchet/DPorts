# New ports collection makefile for:	hamster-applet
# Date created:				06 August 2008
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: deskutils/hamster-applet/Makefile 316464 2013-04-24 18:10:30Z ak $
#   $MCom: ports/deskutils/hamster-applet/Makefile,v 1.42 2010/06/06 11:27:47 kwm Exp $
#

PORTNAME=	hamster-applet
PORTVERSION=	2.32.1
PORTREVISION=	4
CATEGORIES=	deskutils gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Time management applet for the GNOME Desktop

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlite3>0:${PORTSDIR}/databases/py-sqlite3
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlite3>0:${PORTSDIR}/databases/py-sqlite3 \
		${PYTHON_SITELIBDIR}/xdg/__init__.py:${PORTSDIR}/devel/py-xdg \
		${PYTHON_SITELIBDIR}/_dbus_bindings.so:${PORTSDIR}/devel/py-dbus

USE_BZIP2=	yes
USES=		gettext
USE_GMAKE=	yes
USE_PYTHON=	yes
USE_XORG=	xscrnsaver
USE_GNOME=	gnomeprefix intlhack gnomehack pygnomedesktop \
		gnomecontrolcenter2 gnomedocutils
INSTALLS_OMF=	yes
INSTALLS_ICONS=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

GCONF_SCHEMAS=	hamster-applet.schemas

.include <bsd.port.pre.mk>

# WAF needs that
CONFIGURE_ENV+=	CC="${CC}"

do-configure:
	@cd ${WRKSRC} && ./waf --prefix=${PREFIX} configure

do-build:
	@cd ${WRKSRC} && ./waf build

do-install:
	@cd ${WRKSRC} && dbus-launch ./waf install
# -O -Qold
	@${PYTHON_CMD} -Qold ${PYTHON_LIBDIR}/compileall.py -q \
		${PYTHON_SITELIBDIR:S|${LOCALBASE}|${PREFIX}|}/hamster
	@${PYTHON_CMD} -O ${PYTHON_LIBDIR}/compileall.py -q \
		${PYTHON_SITELIBDIR:S|${LOCALBASE}|${PREFIX}|}/hamster

.include <bsd.port.post.mk>
