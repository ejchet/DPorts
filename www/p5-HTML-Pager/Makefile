# New ports collection makefile for:	HTML-Pager
# Date created:				Mon Jan  1 11:59:43 2001
# Whom:					will
#
# $FreeBSD: www/p5-HTML-Pager/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	HTML-Pager
PORTVERSION=	0.03
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl module for handling CGI HTML paging of arbitrary data

BUILD_DEPENDS=	p5-HTML-Template>=0:${PORTSDIR}/www/p5-HTML-Template
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		HTML::Pager.3

.include <bsd.port.mk>
