# New ports collection makefile for:	Log-Dispatch-Configurator-YAML
# Date created:				28 May 2008
# Whom:					Oleg Mamontov <oleg@mamontov.net>
#
# $FreeBSD: ports/devel/p5-Log-Dispatch-Configurator-YAML/Makefile,v 1.2 2012/11/17 05:56:21 svnexp Exp $
#

PORTNAME=	Log-Dispatch-Configurator-YAML
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	oleg@mamontov.net
COMMENT=	Configurator implementation with YAML

RUN_DEPENDS=	p5-Log-Dispatch-Config>=0:${PORTSDIR}/devel/p5-Log-Dispatch-Config \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML
BUILD_DEPENDS=	p5-Log-Dispatch-Config>=0:${PORTSDIR}/devel/p5-Log-Dispatch-Config \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML

PERL_CONFIGURE=	yes

MAN3=		Log::Dispatch::Configurator::YAML.3

.include <bsd.port.mk>
