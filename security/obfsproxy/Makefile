# Created by: Carlo Strub
# $FreeBSD: security/obfsproxy/Makefile 323025 2013-07-15 09:20:33Z cs $
#

PORTNAME=	obfsproxy
PORTVERSION=	0.2.2
PORTEPOCH=	1
CATEGORIES=	security net python
MASTER_SITES=	http://www.c-s.li/ports/ \
		http://schema.filez.com/distfiles/
DISTNAME=	obfsproxy-${PORTVERSION}-${GIT_COMMIT}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Pluggable transport proxy

LICENSE=	BSD

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pyptlib>=0:${PORTSDIR}/security/py-pyptlib \
		${PYTHON_PKGNAMEPREFIX}argparse>0:${PORTSDIR}/devel/py-argparse \
		${PYTHON_PKGNAMEPREFIX}pycrypto>=2.1:${PORTSDIR}/security/py-pycrypto

GIT_COMMIT=	ba6098
USE_PYTHON=	yes
USE_TWISTED=	yes
USE_PYDISTUTILS=easy_install
SUB_FILES=	pkg-message
PYDISTUTILS_PKGNAME=obfsproxy

post-extract:
	${MV} ${WRKDIR}/${DISTNAME} ${WRKDIR}/obfsproxy-${PORTVERSION}

WRKSRC=${WRKDIR}/obfsproxy-${PORTVERSION}

post-install:
	${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
