# Created by: Vladimir Timofeev <vovkasm@gmail.com>
# $FreeBSD: ports/www/p5-AnyEvent-HTTP/Makefile,v 1.17 2012/12/05 07:27:45 svnexp Exp $

PORTNAME=	AnyEvent-HTTP
PORTVERSION=	2.15
PORTEPOCH=	2
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MLEHMANN
PKGNAMEPREFIX=	p5-

MAINTAINER=	vovkasm@gmail.com
COMMENT=	Simple but non-blocking HTTP/HTTPS client

BUILD_DEPENDS=	p5-AnyEvent>=5.33:${PORTSDIR}/devel/p5-AnyEvent \
		p5-common-sense>=3.3:${PORTSDIR}/devel/p5-common-sense
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		AnyEvent::HTTP.3

.include <bsd.port.mk>
