# New ports collection makefile for:	p5-WWW-Shorten-KUSO
# Date created:				2006-07-16
# Whom:					Tsung-Han Yeh <snowfly@yuntech.edu.tw>
#
# $FreeBSD: ports/www/p5-WWW-Shorten-KUSO/Makefile,v 1.6 2012/11/17 06:02:55 svnexp Exp $
#

PORTNAME=	WWW-Shorten-KUSO
PORTVERSION=	0.3
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	Shorten URL using http://KUSO.CC/

BUILD_DEPENDS=	p5-WWW-Shorten>=0:${PORTSDIR}/www/p5-WWW-Shorten
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		WWW::Shorten::KUSO.3

.include <bsd.port.mk>
