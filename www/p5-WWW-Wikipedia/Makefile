# Created by: Cheng-Lung Sung <clsung@dragon2.net>
# $FreeBSD: www/p5-WWW-Wikipedia/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	WWW-Wikipedia
PORTVERSION=	2.01
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BRICAS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module of Automated interface to the Wikipedia

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Text-Autoformat>=0:${PORTSDIR}/textproc/p5-Text-Autoformat
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN1=		wikipedia.1
MAN3=		WWW::Wikipedia.3 \
		WWW::Wikipedia::Entry.3

.include <bsd.port.mk>
