# New ports collection makefile for:	yali
# Date created:				12/04/2009
# Whom:					Tom Sparks <tsparks@appliedops.net>
# $FreeBSD: ports/textproc/yali/Makefile,v 1.3 2012/11/17 06:02:25 svnexp Exp $

PORTNAME=	yali
PORTVERSION=	1.1
CATEGORIES=	textproc
PORTREVISION=	1
MASTER_SITES=	http://mirror.appliedops.net/distfiles/ \
		http://1.618034.com/blog_data/files/
DISTNAME=	yali.v1.1.pl.txt
EXTRACT_SUFX=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	tsparks@appliedops.net
COMMENT=	YALI: Yet Another LOLCODE Interpreter

RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Parse-RecDescent>=0:${PORTSDIR}/devel/p5-Parse-RecDescent

USE_PERL5_RUN=	yes

USE_DOS2UNIX=	yes

NO_BUILD=	yes

PLIST_FILES=	bin/yali

post-extract:
	@${CP} ${DISTDIR}/${DIST_SUBDIR}/${DISTFILES} ${WRKSRC}

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC} ${PREFIX}/bin/yali

.include <bsd.port.mk>
