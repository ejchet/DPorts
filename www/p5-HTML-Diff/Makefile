# New ports collection makefile for:	p5-MasonX-WebApp
# Date created:			2004.07.16
# Whom:				Travis Campbell <hcoyote@ghostar.org>
#
# $FreeBSD: ports/www/p5-HTML-Diff/Makefile,v 1.6 2012/11/17 06:02:49 svnexp Exp $
#

PORTNAME=	HTML-Diff
PORTVERSION=	0.561
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	hcoyote@ghostar.org
COMMENT=	A Perl module for finding changes between two strings of HTML

BUILD_DEPENDS=	p5-Algorithm-Diff>=0:${PORTSDIR}/devel/p5-Algorithm-Diff
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		HTML::Diff.3

.include <bsd.port.mk>
