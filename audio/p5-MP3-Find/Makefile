# New ports collection makefile for:	p5-MP3-Find
# Date created:				2006-07-12
# Whom:					Jin-Shan Tseng <tjs@cdpa.nsysu.edu.tw>
#
# $FreeBSD: ports/audio/p5-MP3-Find/Makefile,v 1.6 2012/11/17 05:54:40 svnexp Exp $
#

PORTNAME=	MP3-Find
PORTVERSION=	0.07
CATEGORIES=	audio perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tjs@cdpa.nsysu.edu.tw
COMMENT=	Search and sort MP3 files based on their ID3 tags

BUILD_DEPENDS=	p5-MP3-Info>=0:${PORTSDIR}/audio/p5-MP3-Info
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		mp3db.1 mp3find.1
MAN3=		MP3::Find.3 \
		MP3::Find::Base.3 \
		MP3::Find::DB.3 \
		MP3::Find::Filesystem.3

.include <bsd.port.mk>
