# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: www/p5-Test-HTTP-Server-Simple/Makefile 324276 2013-08-05 15:05:29Z az $

PORTNAME=	Test-HTTP-Server-Simple
PORTVERSION=	0.11
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Test::More functions for HTTP::Server::Simple

BUILD_DEPENDS=	p5-HTTP-Server-Simple>=0:${PORTSDIR}/www/p5-HTTP-Server-Simple \
		p5-URI>0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Test::HTTP::Server::Simple.3

.include <bsd.port.mk>
