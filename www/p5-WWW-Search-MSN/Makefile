# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: www/p5-WWW-Search-MSN/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	WWW-Search-MSN
PORTVERSION=	0.0106
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Backend for searching search.msn.com

BUILD_DEPENDS=	p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree \
		p5-WWW-Search>=0:${PORTSDIR}/www/p5-WWW-Search
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		WWW::Search::MSN.3

.include <bsd.port.mk>
