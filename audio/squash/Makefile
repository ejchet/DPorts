# New ports collection makefile for: squash
# Date created:		5 August 2003
# Whom:			Matthias Andree <matthias.andree@gmx.de>
#
# $FreeBSD: audio/squash/Makefile 320405 2013-06-09 19:30:58Z naddy $

PORTNAME=		squash
PORTVERSION=		1.0
PORTREVISION=		8
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	mandree@FreeBSD.org
COMMENT=	Learning console-based MP3/OGG player

LIB_DEPENDS+=	FLAC:${PORTSDIR}/audio/flac \
		fftw.2:${PORTSDIR}/math/fftw \
		id3-3.8.3:${PORTSDIR}/audio/id3lib \
		mad.2:${PORTSDIR}/audio/mad \
		vorbis.4:${PORTSDIR}/audio/libvorbis \
		ao.4:${PORTSDIR}/audio/libao
RUN_DEPENDS=	id3v2:${PORTSDIR}/audio/id3v2

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_RUBY=	yes
.if !defined(NOPORTDOCS)
PORTDOCS=	*
.endif

post-patch:
	@${REINPLACE_CMD} -e "s|--std=gnu99|--std=gnu99 ${CFLAGS} ${PTHREAD_CFLAGS}|; \
		s|-Iinclude|-Iinclude -I${LOCALBASE}/include|; \
		s|-lpthread|${PTHREAD_LIBS}|; s|-ldl|-L${LOCALBASE}/lib|" ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e "s,/usr/bin/ruby,${RUBY}," \
		${WRKSRC}/extra/*.rb
	@${REINPLACE_CMD} -e "s,/etc/squash.conf,${PREFIX}/etc/squash.conf," \
		${WRKSRC}/src/global.c

do-install:
	${MKDIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/squash ${PREFIX}/bin
.for FILE in collect_info edit_tag export_music import_music joystick uncollect_info
	${INSTALL_SCRIPT} ${WRKSRC}/extra/${FILE}.rb ${PREFIX}/bin
.endfor
	${INSTALL_DATA} ${WRKSRC}/extra/musicdb_lib.rb ${RUBY_SITELIBDIR}
	${INSTALL_DATA} ${WRKSRC}/extra/squash.conf ${PREFIX}/etc/squash.conf.dist
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in README doc/FEATURES doc/LOCKS doc/INSTALL doc/USERS_GUIDE
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
