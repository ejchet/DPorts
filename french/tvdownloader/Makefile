# New ports collection makefile for:	tvdownloader
# Date created:		Fri 19 dec 2010
# Whom:			thierry@pompo.net
#
# $FreeBSD: ports/french/tvdownloader/Makefile,v 1.7 2013/02/03 22:43:17 svnexp Exp $
#

PORTNAME=	tvdownloader
PORTVERSION=	0.7.2
PORTREVISION=	4
CATEGORIES=	french multimedia
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
MASTER_SITE_SUBDIR=

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Download podcasts and videos from French websites

RUN_DEPENDS=	msdl:${PORTSDIR}/multimedia/msdl	\
		rtmpdump:${PORTSDIR}/multimedia/rtmpdump	\
		${PYTHON_SITELIBDIR}/PyQt4/QtGui.so:${PORTSDIR}/x11-toolkits/py-qt4-gui	\
		${PYTHON_SITELIBDIR}/Crypto/__init__.py:${PORTSDIR}/security/py-pycrypto\
		${PYTHON_SITELIBDIR}/${MECHA_EGG}:${PORTSDIR}/www/py-mechanize

MECHA_VER=	0.2.5
MECHA_EGG=	mechanize-${MECHA_VER}-${PYTHON_VERSION:S/thon//}${PYEASYINSTALL_OSARCH}.egg

USE_PYTHON=	yes
ALL_TARGET=	build

LICENSE=	GPLv2

pre-configure:
	${REINPLACE_CMD} -e 's|%%PYTHON_CMD%%|${PYTHON_CMD}|'	\
		${WRKSRC}/tvdownloader.sh
	${REINPLACE_CMD} -e 's|/usr/share|${PREFIX}/share|'	\
		${WRKSRC}/tvdownload.desktop
.if defined(NOPORTDOCS)
	${REINPLACE_CMD} -e 's|%%DOC%%|#|' ${WRKSRC}/Makefile
.else
	${REINPLACE_CMD} -e 's|%%DOC%%||' ${WRKSRC}/Makefile
.endif

.include <bsd.port.mk>
