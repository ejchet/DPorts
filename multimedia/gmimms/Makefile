# New ports collection makefile for:	gmimms
# Date created:		3 Jul 2007
# Whom:                	Yinghong.Liu <liu_yinghong@yahoo.com.cn>
#
# $FreeBSD: ports/multimedia/gmimms/Makefile,v 1.10 2013/01/23 15:05:36 svnexp Exp $
#

PORTNAME=	gmimms
DISTVERSION=	0.0.9
PORTREVISION=	6
CATEGORIES=	multimedia net
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	liu_yinghong@yahoo.com.cn
COMMENT=	Frontend to MiMMS (Multimedia Stream ripper)

RUN_DEPENDS=	mimms:${PORTSDIR}/multimedia/mimms

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GNOME=	gtk20
CONFIGURE_ARGS+=--disable-nls
INSTALL_TARGET=	install-exec

PLIST_FILES=	bin/gmimms

PORTDOCS=	AUTHORS ChangeLog COPYING INSTALL NEWS README

DESKTOP_ENTRIES=	"GIMMS" \
			"Multimedia Stream ripper" \
			"" \
			"gmimms" \
			"GTK;AudioVideo;Network;" \
			"false"

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for doc in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
