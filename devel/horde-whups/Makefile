# $FreeBSD: devel/horde-whups/Makefile 323132 2013-07-16 22:23:18Z mm $

PORTNAME=	whups
DISTVERSION=	3.0.0RC1
CATEGORIES=	devel www pear
PKGNAMEPREFIX=	horde-

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde bug tracking/ticketing system

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/LICENSE

LATEST_LINK=	horde-${PORTNAME}

USE_PHP=	gettext json
USE_HORDE_BUILD=	Horde_Role
USE_HORDE_RUN=	Horde_Role \
		horde \
		Horde_Auth \
		Horde_Autoloader \
		Horde_Compress \
		Horde_Core \
		Horde_Date \
		Horde_Db \
		Horde_Exception \
		Horde_Form \
		Horde_Group \
		Horde_Mail \
		Horde_Mime \
		Horde_Mime_Viewer \
		Horde_Notification \
		Horde_Perms \
		Horde_Prefs \
		Horde_Scheduler \
		Horde_Share \
		Horde_Support \
		Horde_Text_Filter \
		Horde_Util \
		Horde_Vfs \
		Horde_View

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>
