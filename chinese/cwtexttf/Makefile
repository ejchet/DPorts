# New ports collection makefile for:	cwTeX Chinese TrueType fonts
# Date created:		18 Dec 2002
# Whom:			Shen Chuan-Hsing <satue@freebsd.sinica.edu.tw>
#
# $FreeBSD: chinese/cwtexttf/Makefile 321284 2013-06-19 16:03:12Z rafan $
#

PORTNAME=	cwtexttf
PORTVERSION=	1.2
PORTREVISION=	2
CATEGORIES=	chinese x11-fonts
MASTER_SITES=	http://ftp.wustl.edu/pub/FreeBSD/distfiles/ \
		http://ftp.jaist.ac.jp/pub/FreeBSD/distfiles/
DISTNAME=	cwtex-ttf

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Five Chinese Big5 TrueType fonts made by cwTeX

USE_ZIP=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/texmf/fonts/truetype/cwTeX

TTF=		bbttf.ttf fttf.ttf kttf.ttf mttf.ttf rttf.ttf

do-install:
	@${MKDIR} ${FONTSDIR}
.for i in ${TTF}
	${INSTALL_DATA} ${WRKSRC}/${i} ${FONTSDIR}
.endfor

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/chinese/ttfm/Makefile.ttf"
.include <bsd.port.post.mk>
