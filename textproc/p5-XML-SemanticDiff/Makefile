# New ports collection makefile for:	textproc/p5-XML-SemanticDiff
# Date created:				04 November 2005
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: textproc/p5-XML-SemanticDiff/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	XML-SemanticDiff
PORTVERSION=	1.0000
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Perl extension for comparing XML documents

BUILD_DEPENDS=	p5-XML-Parser>=0:${PORTSDIR}/textproc/p5-XML-Parser
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	XML::SemanticDiff.3 \
	XML::SemanticDiff::BasicHandler.3

.include <bsd.port.mk>
