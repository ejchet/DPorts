# ex:ts=8
# Ports collection makefile for:	Finance::TW::TSEQuote
# Created by: ijliao
# $FreeBSD: finance/p5-Finance-TW-TSEQuote/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Finance-TW-TSEQuote
PORTVERSION=	0.2.8
PORTREVISION=	1
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:R}${PORTVERSION:E}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Check stock quotes from Taiwan Security Exchange

BUILD_DEPENDS=	p5-App-Cache>=0:${PORTSDIR}/devel/p5-App-Cache \
		p5-HTML-TableExtract>=0:${PORTSDIR}/www/p5-HTML-TableExtract \
		p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN1=		pfq.1
MAN3=		Finance::TW::TSEQuote.3

.include <bsd.port.mk>
