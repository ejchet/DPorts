# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: devel/p5-Config-AutoConf/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Config-AutoConf
PORTVERSION=	0.22
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module to implement some of AutoConf macros

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Capture-Tiny>=0:${PORTSDIR}/devel/p5-Capture-Tiny
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Config::AutoConf.3

.include <bsd.port.mk>
