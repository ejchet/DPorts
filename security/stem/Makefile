# Created by: Carlo Strub
# $FreeBSD: security/stem/Makefile 315442 2013-03-28 06:44:19Z cs $
#

PORTNAME=	stem
PORTVERSION=	1.0.1
CATEGORIES=	security net python
MASTER_SITES=	http://www.atagar.com/transfer/tmp/ \
		http://www.c-s.li/ports/
DISTNAME=	${PORTNAME}.${PORTVERSION}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Python controller library for Tor

LICENSE=	GPLv3

RUN_DEPENDS=	tor:${PORTSDIR}/security/tor

USE_BZIP2=	yes
USE_PYTHON=	yes
USE_PYDISTUTILS=yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

.include <bsd.port.mk>
