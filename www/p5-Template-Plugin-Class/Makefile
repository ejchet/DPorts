# New ports collection makefile for:	p5-Template-Plugin-Class
# Date created:		24 June 2004
# Whom:			Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: www/p5-Template-Plugin-Class/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	Template-Plugin-Class
PORTVERSION=	0.14
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Allow calling of class methods on arbitrary classes

BUILD_DEPENDS=	p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Template::Plugin::Class.3

.include <bsd.port.mk>
