# New ports collection makefile for:	vdradmin-am
# Date created:		Wed Apr 14 18:11:42 CEST 2010
# Whom:			Juergen Lock <nox@freebsd.org>
#
# $FreeBSD: ports/www/vdradmin-am/Makefile,v 1.6 2012/11/17 06:03:10 svnexp Exp $
#

PORTNAME=	vdradmin-am
PORTVERSION=	3.6.9
CATEGORIES=	www
MASTER_SITES=	http://andreas.vdr-developer.org/vdradmin-am/download/

MAINTAINER=	nox@FreeBSD.org
COMMENT=	Video Disk Recorder - webinterface

BUILD_DEPENDS=	bash:${PORTSDIR}/shells/bash \
		p5-Locale-gettext>=0:${PORTSDIR}/devel/p5-Locale-gettext \
		p5-Template-Plugin-JavaScript>=0:${PORTSDIR}/www/p5-Template-Plugin-JavaScript \
		p5-Authen-SASL>=0:${PORTSDIR}/security/p5-Authen-SASL \
		p5-IO-Compress>=0:${PORTSDIR}/archivers/p5-IO-Compress \
		p5-IO-Socket-INET6>=0:${PORTSDIR}/net/p5-IO-Socket-INET6 \
		p5-IO-Socket-SSL>=0:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS=	p5-Locale-gettext>=0:${PORTSDIR}/devel/p5-Locale-gettext \
		p5-Template-Plugin-JavaScript>=0:${PORTSDIR}/www/p5-Template-Plugin-JavaScript \
		p5-Authen-SASL>=0:${PORTSDIR}/security/p5-Authen-SASL \
		p5-IO-Compress>=0:${PORTSDIR}/archivers/p5-IO-Compress \
		p5-IO-Socket-INET6>=0:${PORTSDIR}/net/p5-IO-Socket-INET6 \
		p5-IO-Socket-SSL>=0:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

DIST_SUBDIR=	vdr
PATCH_STRIP=	-p1
USE_BZIP2=	yes
WRKSRC=		${WRKDIR}/${PORTNAME:S/_/-/}-${DISTVERSION}
NO_BUILD=	yes
MAN8=		vdradmind.8
USE_RC_SUBR=	vdradmind

VIDEODIR=	/video
LIBDIR=		${DATADIR}
MAKE_ENV+=	LIBDIR=${LIBDIR}
MAKE_ENV+=	ETCDIR=${ETCDIR}
MAKE_ENV+=	DOCDIR=${DOCSDIR}
MAKE_ENV+=	BINDIR=${PREFIX}/bin
MAKE_ENV+=	LOCDIR=${PREFIX}/share/locale
MAKE_ENV+=	MANDIR=${PREFIX}/man
MAKE_ENV+=	LOGDIR=/var/log/${PORTNAME}
MAKE_ENV+=	CACHEDIR=/var/cache/${PORTNAME}
MAKE_ENV+=	PIDFILE=/var/run/${PORTNAME}/vdradmind.pid
MAKE_ENV+=	VIDEODIR=${VIDEODIR}
MAKE_ENV+=	EPGIMAGES=${VIDEODIR}/epgimages
MAKE_ENV+=	VDRCONF=${PREFIX}/etc/vdr

VDR_USER=	vdr
VDR_GROUP=	vdr
USERS=		${VDR_USER}
GROUPS=		${VDR_GROUP}
PLIST_SUB=	VDR_USER=${VDR_USER}
PLIST_SUB+=	VDR_GROUP=${VDR_GROUP}

post-patch:
	@${REINPLACE_CMD} 1s-^#!/bin/bash-#!${LOCALBASE}/bin/bash- \
		${WRKSRC}/install.sh ${WRKSRC}/make.sh

do-install:
	@${INSTALL} -o ${VDR_USER} -g ${VDR_GROUP} -d ${ETCDIR}
	@${INSTALL_DATA} -m 644 ${FILESDIR}/vdradmind.conf ${ETCDIR}/vdradmind.conf.sample
	@if [ ! -f ${ETCDIR}/vdradmind.conf ]; then \
	    ${INSTALL_DATA} -o ${VDR_USER} -g ${VDR_GROUP} -m 644 ${FILESDIR}/vdradmind.conf ${ETCDIR}; \
	fi
	@${INSTALL} -o ${VDR_USER} -g ${VDR_GROUP} -d /var/cache/${PORTNAME} \
		/var/log/${PORTNAME} /var/run/${PORTNAME}
	@(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./install.sh)

.include <bsd.port.mk>
