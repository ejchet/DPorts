# Created by: James FitzGibbon <jfitz@FreeBSD.org>
# $FreeBSD: devel/p5-Config-IniFiles/Makefile 318922 2013-05-24 08:09:37Z culot $

PORTNAME=	Config-IniFiles
PORTVERSION=	2.82
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Perl5 module for reading .ini-style configuration files

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-List-MoreUtils>=0.33:${PORTSDIR}/lang/p5-List-MoreUtils
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-IO-stringy>=0:${PORTSDIR}/devel/p5-IO-stringy

PERL_CONFIGURE=	yes

MAN3=		Config::IniFiles.3

.include <bsd.port.mk>
