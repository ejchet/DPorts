# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: security/p5-OpenCA-REQ/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	OpenCA-REQ
PORTVERSION=	0.9.52
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension to easily manage Cert REQUESTs

BUILD_DEPENDS=	p5-X500-DN>=0:${PORTSDIR}/net/p5-X500-DN
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		OpenCA::REQ.3

post-patch:
	@${MV} ${WRKSRC}/prova.pl  ${WRKSRC}/prova.pl.sample

.include <bsd.port.mk>
