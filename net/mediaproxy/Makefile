# Created by: Steve Ames <steve@energistic.com>
# $FreeBSD: net/mediaproxy/Makefile 319985 2013-06-05 12:22:03Z bapt $

PORTNAME=	mediaproxy
PORTVERSION=	1.8.2
PORTREVISION=	4
CATEGORIES=	net
MASTER_SITES=	http://mediaproxy.ag-projects.com/ \
		http://mediaproxy.ag-projects.com/old/

MAINTAINER=	steve@energistic.com
COMMENT=	A far-end NAT traversal solution for SER/OpenSER

USE_RC_SUBR=	mediaproxy proxydispatcher

USE_PYTHON=	2.5+

SUB_LIST+=	PYTHON_CMD=${PYTHON_CMD}

OPTIONS_DEFINE=	ACCOUNTING
ACCOUNTING_DESC=	ACCOUNTING support (Requires MySQL)

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MACCOUNTING}
USE_MYSQL=	yes
.endif

post-extract:
	@${MV} ${WRKDIR}/${PORTNAME} ${WRKSRC}

post-install:
	${CP} -pRP ${WRKSRC}/ ${PREFIX}/mediaproxy
	${CHOWN} -R 0:0 ${PREFIX}/mediaproxy

.include <bsd.port.post.mk>
