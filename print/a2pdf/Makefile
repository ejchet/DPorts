# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: print/a2pdf/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	a2pdf
PORTVERSION=	1.13
CATEGORIES=	print perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JONALLEN

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Text to PDF converter

LICENSE=	ART20

BUILD_DEPENDS=	p5-PDF-API2>=0:${PORTSDIR}/textproc/p5-PDF-API2 \
		perltidy>=0:${PORTSDIR}/devel/perltidy \
		p5-Image-Size>=0:${PORTSDIR}/graphics/p5-Image-Size \
		p5-File-Type>=0:${PORTSDIR}/devel/p5-File-Type
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
MAN1=	${PORTNAME}.1

.include <bsd.port.mk>
