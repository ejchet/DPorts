# New ports collection makefile for:	mp3-archive-tools
# Date created:		2010-07-06
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@sunpoet.net>
#
# $FreeBSD: ports/audio/mp3-archive-tools/Makefile,v 1.6 2012/11/17 05:54:38 svnexp Exp $
#

PORTNAME=	mp3-archive-tools
PORTVERSION=	0.9
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://erislabs.net/ianb/projects/${PORTNAME}/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	A set of tools to ease organising a collection of audio files

BUILD_DEPENDS=	libmp3-archive-perl>=0:${PORTSDIR}/audio/libmp3-archive-perl \
		p5-MP3-Tag>=0:${PORTSDIR}/audio/p5-MP3-Tag
RUN_DEPENDS=	libmp3-archive-perl>=0:${PORTSDIR}/audio/libmp3-archive-perl \
		p5-MP3-Tag>=0:${PORTSDIR}/audio/p5-MP3-Tag

PERL_CONFIGURE=	yes

MAN1=		cddbtofilename.1 filenametoid3.1 freedbtofilename.1 \
		id3tofilename.1 movemusic.1 mp3-archive-tools.1 mp3id.1 \
		pmv.1 update-music-symlinks.1

.include <bsd.port.mk>
