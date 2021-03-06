# Created by: Jim Riggs <ports@christianserving.org>
# $FreeBSD: www/drraw/Makefile 313599 2013-03-07 16:53:45Z miwi $

PORTNAME=	drraw
DISTVERSION=	2.2b2
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://web.taranis.org/drraw/dist/ \
		http://christianserving.org/ports/mail/imapsync/

MAINTAINER=	avg@icyb.net.ua
COMMENT=	A simple web-based presentation front-end for RRDtool

RUN_DEPENDS+=	rrdtool>=0:${PORTSDIR}/databases/rrdtool

OPTIONS_DEFINE=	ZOOM_PATCH
ZOOM_PATCH_DESC=	Zoom support using jQuery via external patch

USE_PERL5_RUN=	yes
NO_BUILD=	yes

PORTDOCS=	CHANGES INSTALL LICENSE README.EVENTS

CONFDIR?=	etc
DATADIRS?=	"/var/db/rrdtool" => "[Label1] "
SAVEDDIR?=	/var/db/${PORTNAME}/saved
TMPDIR?=	/var/db/${PORTNAME}/tmp

PLIST_SUB+=	CONFDIR=${CONFDIR}

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MZOOM_PATCH}
PATCH_SITES+=	http://aprilmayjune.org/wp-content/uploads/2009/09/
PATCHFILES+=	drraw.cgi.zoom_patch
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|%%CONFDIR%%|${PREFIX}/${CONFDIR}|g' ${WRKSRC}/drraw.cgi

	@${CP} -p ${WRKSRC}/drraw.conf ${WRKSRC}/drraw.conf-dist
	@${REINPLACE_CMD} \
		-e 's|%%DATADIRS%%|${DATADIRS}|g' \
		-e 's|%%SAVEDDIR%%|${SAVEDDIR}|g' \
		-e 's|%%TMPDIR%%|${TMPDIR}|g' \
		${WRKSRC}/drraw.conf-dist

do-install:
	${INSTALL_DATA} ${WRKSRC}/drraw.conf-dist ${PREFIX}/${CONFDIR}

	${MKDIR} ${WWWDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/drraw.cgi ${WWWDIR}

	${MKDIR} ${WWWDIR}/icons
.for theFile in bomb.gif folder.gif folder.open.gif generic.gif link.gif text.gif unknown.gif
	${INSTALL_DATA} ${WRKSRC}/icons/${theFile} ${WWWDIR}/icons
.endfor

.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
. for theFile in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${theFile} ${DOCSDIR}
. endfor
.endif

post-install:
	@if [ ! -f ${PREFIX}/etc/drraw.conf ];\
	then \
		${CP} -p ${PREFIX}/etc/drraw.conf-dist ${PREFIX}/etc/drraw.conf; \
	fi

.include <bsd.port.mk>
