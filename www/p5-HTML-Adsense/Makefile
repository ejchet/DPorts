# New ports collection makefile for:	p5-HTML-Adsense
# Date created:		2007-06-29
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/www/p5-HTML-Adsense/Makefile,v 1.4 2012/11/17 06:02:49 svnexp Exp $
#

PORTNAME=	HTML-Adsense
PORTVERSION=	0.2
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	HTML
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Create adsense widgets easily

RUN_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor

PERL_CONFIGURE=	yes

MAN3=		HTML::Adsense.3

post-patch:
	${RM} -f ${WRKSRC}/lib/HTML/._Adsense.pm

.include <bsd.port.mk>
