# Created by: Martin Matuska <martin@matuska.org>
# $FreeBSD: www/p5-Apache-Clean2/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Apache-Clean
PORTVERSION=	2.00
PORTREVISION=	2
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Apache/GEOFF
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION}_7

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Mod_perl interface into HTML::Clean

BUILD_DEPENDS=	${APACHE_PKGNAMEPREFIX}mod_perl2>=0:${PORTSDIR}/www/mod_perl2 \
		p5-HTML-Clean>=0.8:${PORTSDIR}/www/p5-HTML-Clean

LATEST_LINK=	${PKGNAMEPREFIX}${PORTNAME}2

USES=		perl5
USE_PERL5=	configure
USE_APACHE=	22+

MAN3=		Apache::Clean.3
DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
