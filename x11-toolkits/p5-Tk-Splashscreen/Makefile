# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: x11-toolkits/p5-Tk-Splashscreen/Makefile 324276 2013-08-05 15:05:29Z az $

PORTNAME=	Tk-Splashscreen
PORTVERSION=	1.0
PORTREVISION=	4
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Tk::Splashscreen, display a Splashscreen during program initialization

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Tk::Splashscreen.3 \
	Tk::waitVariableX.3

.include <bsd.port.mk>
