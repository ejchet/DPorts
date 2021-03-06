# Created by: ijliao
# $FreeBSD: audio/gnump3d/Makefile 319179 2013-05-27 08:57:05Z jadawin $

PORTNAME=	gnump3d
PORTVERSION=	3.0
PORTREVISION=	5
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Streaming server for MP3, Ogg Vorbis, and other streamable audio files

RUN_DEPENDS=	lame:${PORTSDIR}/audio/lame \
		sox:${PORTSDIR}/audio/sox \
		oggenc:${PORTSDIR}/audio/vorbis-tools

USE_BZIP2=	yes
USE_PERL5_RUN=	yes
NO_BUILD=	yes
USE_RC_SUBR=	gnump3d
SUB_LIST+=	PERL=${PERL}

MAN1=		gnump3d-index.1 gnump3d-top.1 gnump3d.1 gnump3d.conf.1

CONFDIR=	${PREFIX}/etc/${PORTNAME}

.include <bsd.port.pre.mk>

post-patch:
.for f in bin/gnump3d-index bin/gnump3d-top bin/gnump3d2 etc/gnump3d.conf \
	man/gnump3d.conf.1
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g ; \
		 s|%%LOCALBASE%%|${LOCALBASE}|g ; \
		 s|!/usr/bin/perl|!${PERL}| ; \
		 s|%%SITE_PERL%%|${SITE_PERL}|g' ${WRKSRC}/${f}
.endfor

do-install:
.for f in gnump3d-index gnump3d-top gnump3d2
	${INSTALL_SCRIPT} ${WRKSRC}/bin/${f} ${PREFIX}/bin
.endfor
	${LN} -sf gnump3d2 ${PREFIX}/bin/gnump3d
.for f in gnump3d-index.1 gnump3d-top.1 gnump3d.1 gnump3d.conf.1
	${INSTALL_MAN} ${WRKSRC}/man/${f} ${MANPREFIX}/man/man1
.endfor
	${MKDIR} ${SITE_PERL}
	cd ${WRKSRC}/lib && ${FIND} . ! -empty | \
		${CPIO} -pdm -L -R ${LIBOWN}:${LIBGRP} ${SITE_PERL}
	${MKDIR} ${DATADIR}
	cd ${WRKSRC}/templates && ${FIND} . ! -empty | \
		${CPIO} -pdm -L -R ${SHAREOWN}:${SHAREGRP} ${DATADIR}
	${MKDIR} ${CONFDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/mime.types ${CONFDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/file.types ${CONFDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/gnump3d.conf \
		${CONFDIR}/gnump3d.conf-default
.if !exists(${PREFIX}/etc/${PORTNAME}/gnump3d.conf)
	cd ${CONFDIR} && ${CP} gnump3d.conf-default gnump3d.conf
.endif
	${MKDIR} /var/log/${PORTNAME}

.include <bsd.port.post.mk>
