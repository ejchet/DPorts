# New ports collection Makefile for:	gbemol
# Date created:				2008-02-21
# Whom:					Thomas M. Hermann <tmh.public@gmail.com>
#
# $FreeBSD: audio/gbemol/Makefile 322783 2013-07-11 16:26:26Z sunpoet $
#

PORTNAME=	gbemol
PORTVERSION=	0.3.2
PORTREVISION=	10
CATEGORIES=	audio
MASTER_SITES=	SF

MAINTAINER=	tmh.public@gmail.com
COMMENT=	Graphical frontend for the Music Player Daemon

LIB_DEPENDS=	mpd.4:${PORTSDIR}/audio/libmpd \
		curl:${PORTSDIR}/ftp/curl \
		xml2.5:${PORTSDIR}/textproc/libxml2

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_GNOME=	gtk20

post-patch:
	@${CHMOD} a+x ${WRKSRC}/install-sh
	@${REINPLACE_CMD} -e 's,$$(DATADIRNAME)/locale,share/locale,' ${WRKSRC}/po/Makefile.in.in

.include <bsd.port.mk>
