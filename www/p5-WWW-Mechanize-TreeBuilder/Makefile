# New ports collection makefile for:	www/p5-WWW-Mechanize-TreeBuilder
# Date created:				25 December 2009
# Whom:					Alex Deiter <Alex.Deiter@Gmail.COM>
#
# $FreeBSD: ports/www/p5-WWW-Mechanize-TreeBuilder/Makefile,v 1.7 2012/11/17 06:02:55 svnexp Exp $
#

PORTNAME=	WWW-Mechanize-TreeBuilder
PORTVERSION=	1.10003
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	alex.deiter@gmail.com
COMMENT=	WWW::Mechanize::TreeBuilder

BUILD_DEPENDS=	p5-MooseX-Role-Parameterized>=0:${PORTSDIR}/devel/p5-MooseX-Role-Parameterized \
		p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree \
		p5-Test-WWW-Mechanize>=0:${PORTSDIR}/devel/p5-Test-WWW-Mechanize \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	WWW::Mechanize::TreeBuilder.3

.include <bsd.port.mk>
