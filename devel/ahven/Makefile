# Created by: John Marino <marino@FreeBSD.org>
# $FreeBSD: devel/ahven/Makefile 323393 2013-07-21 14:29:46Z marino $

PORTNAME=	ahven
PORTVERSION=	2.3
CATEGORIES=	devel
MASTER_SITES=	SF
MASTER_SITE_SUBDIR=${PORTNAME}/${PORTNAME}/Ahven%20${PORTVERSION}

MAINTAINER=	marino@FreeBSD.org
COMMENT=	Ada unit test framework

BUILD_DEPENDS=	adactl:${PORTSDIR}/lang/adacontrol

USES=		ada
ALL_TARGET=	build_all
DESTINY=	${WRKDIR}/destino
MAKE_ENV+=	DESTDIR=${DESTINY}

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
USE_PYTHON=	yes
BUILD_DEPENDS+=	sphinx-build:${PORTSDIR}/textproc/py-sphinx \
		${PYTHON_PKGNAMEPREFIX}sphinxcontrib-adadomain>0:${PORTSDIR}/textproc/py-sphinxcontrib-adadomain
ALL_TARGET+=	docs
.endif

post-install:
	@${RM} -rf ${DESTINY}${PREFIX}/share/doc/ahven/html/_sources
	@${RM} ${DESTINY}${PREFIX}/share/doc/ahven/html/.buildinfo
	@${CP} -pR ${DESTINY}${PREFIX}/ ${PREFIX}/

.include <bsd.port.mk>
