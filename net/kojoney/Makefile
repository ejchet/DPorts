# Ports collection makefile for:	kojoney
# Date created:				5 December 2006
# Whom:					mj <systemoperator@gmail.com>
#
# $FreeBSD: ports/net/kojoney/Makefile,v 1.8 2012/11/17 06:00:03 svnexp Exp $
#

PORTNAME=	kojoney
PORTVERSION=	0.0.4.2
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}

MAINTAINER=	systemoperator@gmail.com
COMMENT=	A low level interaction honeypot that emulates an SSH server

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zope.interface>=3.3.0_1:${PORTSDIR}/devel/py-zope.interface \
		${PYTHONPREFIX_SITELIBDIR}/Crypto:${PORTSDIR}/security/py-pycrypto \
		p5-IP-Country>=0:${PORTSDIR}/net/p5-IP-Country

WRKSRC=		${WRKDIR}/kojoney

USE_PYTHON=	2.5+
USE_TWISTED=	conch
USE_OPENSSL=	yes
USE_PERL5_RUN=	yes

.include <bsd.port.mk>
