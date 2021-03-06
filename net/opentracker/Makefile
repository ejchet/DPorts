# New ports collection Makefile for:	opentracker
# Date created:				27 July 2009
# Whom:					utisoft@gmail.com
#
# $FreeBSD: net/opentracker/Makefile 316567 2013-04-26 04:03:43Z gjb $
#

PORTNAME=	opentracker
PORTVERSION=	0.2010.05.30
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.bayofrum.net/dist/${PORTNAME}/ \
		https://www.glenbarber.us/ports/net/${PORTNAME}/

MAINTAINER=	crees@FreeBSD.org
COMMENT=	A free lightweight bittorrent tracker using libowfat

BUILD_DEPENDS=	${LOCALBASE}/lib/libowfat.a:${PORTSDIR}/devel/libowfat

USE_BZIP2=	yes
USE_RC_SUBR=	${PORTNAME}

OPTIONS_DEFINE= COMPRESSION_GZIP DEBUG_HTTPERROR FULLSCRAPE RESTRICT_STATS IPV6
OPTIONS_SINGLE=	accesslist
OPTIONS_SINGLE_accesslist=	ACCESSLIST_OPEN ACCESSLIST_BLACK \
				ACCESSLIST_WHITE

OPTIONS_DEFAULT=	FULLSCRAPE RESTRICT_STATS ACCESSLIST_OPEN

ACCESSLIST_OPEN_DESC=	Disable black/whitelisting
ACCESSLIST_BLACK_DESC=	Enable client blacklisting
ACCESSLIST_WHITE_DESC=	Enable client whitelisting
COMPRESSION_GZIP_DESC=	Deliver gzip compressed full scrapes
DEBUG_HTTPERROR_DESC=	Verbose HTTPERRORs
FULLSCRAPE_DESC=	Can query tracker for all torrents
RESTRICT_STATS_DESC=	Limit stats access based on IP

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MACCESSLIST_BLACK}
FEATURES+=-DWANT_ACCESSLIST_BLACK
.elif ${PORT_OPTIONS:MACCESSLIST_WHITE}
FEATURES+=-DWANT_ACCESSLIST_WHITE
.endif

.if ${PORT_OPTIONS:MCOMPRESSION_GZIP}
FEATURES+=-DWANT_COMPRESSION_GZIP
.endif

.if ${PORT_OPTIONS:MDEBUG_HTTPERROR}
FEATURES+=-D_DEBUG_HTTPERROR
.endif

.if ${PORT_OPTIONS:MFULLSCRAPE}
FEATURES+=-DWANT_FULLSCRAPE
.endif

.if ${PORT_OPTIONS:MIPV6}
FEATURES+=-DWANT_V6
.endif

.if ${PORT_OPTIONS:MRESTRICT_STATS}
FEATURES+=-DWANT_RESTRICT_STATS
.endif

MAKE_ENV+=FEATURES="${FEATURES}"

post-patch:
	@${FIND} ${WRKSRC} -name "*.orig" -delete

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${MKDIR} ${PREFIX}/etc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.conf.sample \
		${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf.sample

post-install:
	@if [ ! -f ${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf ]; then \
		${CP} -p ${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf.sample \
			${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf ; \
		fi
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
