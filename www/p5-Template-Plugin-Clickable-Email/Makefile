# New ports collection makefile for:	www/p5-Template-Plugin-Clickable-Email
# Date created:				27 January 2006
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: www/p5-Template-Plugin-Clickable-Email/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	Template-Plugin-Clickable-Email
PORTVERSION=	0.01
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	TT plugin to make email addresses into HTML links

BUILD_DEPENDS=	p5-Email-Find>=0:${PORTSDIR}/mail/p5-Email-Find \
		p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	Template::Plugin::Clickable::Email.3

.include <bsd.port.mk>
