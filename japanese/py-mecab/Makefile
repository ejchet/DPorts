# Created by: Junji NAKANISHI <jun-g@daemonfreaks.com>
# $FreeBSD: japanese/py-mecab/Makefile 314728 2013-03-20 12:42:31Z tota $

PORTNAME=	mecab
PORTVERSION=	0.995
CATEGORIES=	japanese python textproc
MASTER_SITES=	GOOGLE_CODE
DISTNAME=	${PORTNAME}-python-${PORTVERSION}

MAINTAINER=	jun-g@daemonfreaks.com
COMMENT=	Python bindings for MeCab

LICENSE=	BSD GPLv2 LGPL21
LICENSE_COMB=	dual
LICENSE_FILE_BSD=	${WRKSRC}/BSD
LICENSE_FILE_GPLv2=	${WRKSRC}/GPL
LICENSE_FILE_LGPL21=	${WRKSRC}/LGPL

BUILD_DEPENDS=	swig>=1.3:${PORTSDIR}/devel/swig13
LIB_DEPENDS=	mecab:${PORTSDIR}/japanese/mecab

USE_PYTHON=	yes
USE_PYDISTUTILS=yes
PYDISTUTILS_EGGINFO=	${PORTNAME}_python-${PKGVERSION}-${PYTHON_VERSION:S/thon//}.egg-info

pre-patch:
	@${REINPLACE_CMD} -e 's|cmd1("mecab-config --version")|"${PKGVERSION}"|' \
		${WRKSRC}/setup.py

.include <bsd.port.pre.mk>

PKGNAMEPREFIX:=	${PKGNAMEPREFIX}${PYTHON_PKGNAMEPREFIX}

.include <bsd.port.post.mk>
