# Created by: Philip M. Gollucci <pgollucci@FreeBSD.org>
# $FreeBSD: graphics/p5-GD/Makefile 324445 2013-08-09 15:21:56Z dinoex $

PORTNAME=	GD
PORTVERSION=	2.49
PORTREVISION=	1
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	GD-${PORTVERSION}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 interface to Gd Graphics Library version2

LIB_DEPENDS=	gd:${PORTSDIR}/graphics/gd

USES=		perl5
USE_PERL5=	configure
CONFIGURE_ARGS=	-options "JPEG,FT,XPM,GIF,PNG" \
		-lib_gd_path ${LOCALBASE} -lib_ft_path} \
		-lib_png_path ${LOCALBASE} -lib_zlib_path

MAN1=		bdf2gdfont.pl.1
MAN3=		GD.3 GD::Polyline.3 GD::Simple.3 \
		GD::Image.3 GD::Polygon.3

.include <bsd.port.mk>
