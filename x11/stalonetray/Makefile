# New ports collection makefile for:	stalonetray
# Date created:		Apr 6 2006
# Whom:			Stepan Zastupov [RedChrom] <redchrom@gmail.com>
#
# $FreeBSD: ports/x11/stalonetray/Makefile,v 1.15 2012/11/17 06:03:19 svnexp Exp $
#

PORTNAME=	stalonetray
PORTVERSION=	0.8.1
CATEGORIES=	x11
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	graudeejs@gmail.com
COMMENT=	STAnd-aLONE system tray

LICENSE=	GPLv2

USE_BZIP2=	yes
USE_XORG=	xpm
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-native-kde \
		--disable-debug

MAN1=		stalonetray.1
PORTDOCS=	AUTHORS ChangeLog NEWS README TODO stalonetray.html
PORTEXAMPLES=	stalonetrayrc.sample
PLIST_FILES=	bin/stalonetray

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
.for file in ${PORTEXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${EXAMPLESDIR}
.endfor
.endif

.include <bsd.port.mk>
