# Created by: Sergei Vyshenski <svysh@pn.sinp.msu.ru>
# $FreeBSD: textproc/p5-Data-SpreadPagination/Makefile 313266 2013-03-02 15:55:17Z miwi $

PORTNAME=	Data-SpreadPagination
PORTVERSION=	0.1.2
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	svysh.fbsd@gmail.com
COMMENT=	Page numbering and spread pagination

BUILD_DEPENDS=	\
	p5-Data-Page>=0:${PORTSDIR}/databases/p5-Data-Page \
	p5-Math-Round>=0:${PORTSDIR}/math/p5-Math-Round
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Data::SpreadPagination.3

test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
