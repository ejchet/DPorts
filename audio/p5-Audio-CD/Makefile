# New ports collection makefile for:	p5-Audio-CD
# Date created:				22 Oct 2000
# Whom:	      				Roman Shterenzon <roman@xpert.com>
#
# $FreeBSD: audio/p5-Audio-CD/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Audio-CD
PORTVERSION=	0.04
PORTREVISION=	1
CATEGORIES=	audio perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl interface to libcdaudio (cd + cddb)

LIB_DEPENDS=	cdaudio.1:${PORTSDIR}/audio/libcdaudio

USES=		perl5
USE_PERL5=	configure
CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include " \
		LIBS="-L${LOCALBASE}/lib -lcdaudio"

MAN3=		Audio::CD.3

.include <bsd.port.mk>
