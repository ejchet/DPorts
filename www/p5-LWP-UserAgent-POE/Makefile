# New ports collection makefile for:	LWP-UserAgent-POE
# Date created:				25 February 2009
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: www/p5-LWP-UserAgent-POE/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	LWP-UserAgent-POE
PORTVERSION=	0.03
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	LWP
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Drop-in LWP::UserAgent replacement in POE environments

BUILD_DEPENDS=	p5-POE>=0.9999:${PORTSDIR}/devel/p5-POE \
		p5-POE-Component-Client-HTTP>=0.83:${PORTSDIR}/www/p5-POE-Component-Client-HTTP \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Log-Log4perl>=1:${PORTSDIR}/devel/p5-Log-Log4perl
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		LWP::UserAgent::POE.3

.include <bsd.port.mk>
