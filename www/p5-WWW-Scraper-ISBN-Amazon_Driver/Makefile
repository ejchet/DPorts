# Created by: Ying-Chieh Liao <ijliao@csie.nctu.edu.tw>
# $FreeBSD: www/p5-WWW-Scraper-ISBN-Amazon_Driver/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	WWW-Scraper-ISBN-Amazon_Driver
PORTVERSION=	0.29
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Search driver for the (US) Amazon online catalog

LICENSE=	ART20

BUILD_DEPENDS=	p5-WWW-Mechanize>=1.60:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-WWW-Scraper-ISBN>=0.25:${PORTSDIR}/www/p5-WWW-Scraper-ISBN \
		p5-WWW-Scraper-ISBN-Driver>=0.18:${PORTSDIR}/www/p5-WWW-Scraper-ISBN-Driver
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	WWW::Scraper::ISBN::AmazonUK_Driver.3 \
	WWW::Scraper::ISBN::AmazonUS_Driver.3

.include <bsd.port.mk>
