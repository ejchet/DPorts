# Created by: will
# $FreeBSD: mail/p5-Mail-Freshmeat/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Mail-Freshmeat
PORTVERSION=	1.20
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:FOX
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module to parse daily newsletters from freshmeat.net

BUILD_DEPENDS=	p5-Mail-Tools>=0:${PORTSDIR}/mail/p5-Mail-Tools
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Freshmeat.3

.include <bsd.port.mk>
