# Created by: Ruben van Staveren
# $FreeBSD: ports/devel/p5-threads-shared/Makefile,v 1.18 2013/02/18 15:22:42 svnexp Exp $

PORTNAME=	threads-shared
PORTVERSION=	1.43
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JDHEDDEN
PKGNAMEPREFIX=	p5-

MAINTAINER=	pclin@FreeBSD.org
COMMENT=	Perl extension for sharing data structures between threads

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

PERL_CONFIGURE=	yes

MAN3=	threads::shared.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501100
BUILD_DEPENDS+=	p5-threads>=1.73:${PORTSDIR}/devel/p5-threads
RUN_DEPENDS+=	p5-threads>=1.73:${PORTSDIR}/devel/p5-threads
.endif

.include <bsd.port.post.mk>
