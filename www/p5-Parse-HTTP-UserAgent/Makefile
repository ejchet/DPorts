# New ports collection makefile for:	p5-Parse-HTTP-UserAgent
# Date created:		2011-11-13
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Parse-HTTP-UserAgent/Makefile,v 1.5 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	Parse-HTTP-UserAgent
PORTVERSION=	0.35
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BURAK
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Parser for the User Agent string

TEST_DEPENDS=	p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		Parse::HTTP::UserAgent.3 \
		Parse::HTTP::UserAgent::Base::Accessors.3 \
		Parse::HTTP::UserAgent::Base::Dumper.3 \
		Parse::HTTP::UserAgent::Base::IS.3 \
		Parse::HTTP::UserAgent::Base::Parsers.3 \
		Parse::HTTP::UserAgent::Constants.3

.include <bsd.port.mk>
