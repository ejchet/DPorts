# New ports collection makefile for:	bindgraph
# Date created:				Nov 29 2007
# Whom:					Rong-En Fan <rafan@FreeBSD.org>
#
# $FreeBSD: ports/dns/bindgraph/Makefile,v 1.7 2012/11/17 05:57:08 svnexp Exp $
#

PORTNAME=	bindgraph
PORTVERSION=	0.2
PORTREVISION=	4
CATEGORIES=	dns
MASTER_SITES=	http://www.linux.it/~md/software/
EXTRACT_SUFX=	.tgz

MAINTAINER=	rafan@FreeBSD.org
COMMENT=	A RRDtool frontend for BIND statistics

RUN_DEPENDS=	rrdtool>=0:${PORTSDIR}/databases/rrdtool	\
		p5-File-Tail>=0:${PORTSDIR}/devel/p5-File-Tail

NO_BUILD=	yes
USE_PERL5=	yes

CGIDIR?=	${PREFIX}/www/cgi-bin
DATADIR?=	/var/db/bindgraph
BINDGRAPH_USER?=	${WWWOWN}
BINDGRAPH_GROUP?=	${WWWGRP}

USE_RC_SUBR=	${PORTNAME}
SUB_LIST+=	BINDGRAPH_USER=${BINDGRAPH_USER} BINDGRAPH_GROUP=${BINDGRAPH_GROUP}
PLIST_SUB=	CGIDIR=${CGIDIR:S,${PREFIX}/,,}

DOCS=		README ChangeLog
.if !defined(NOPORTDOCS)
PORTDOCS=	${DOCS}
.endif

pre-everything::
	@${ECHO_MSG} ""
	@${ECHO_MSG} "You may set following options:"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "DATADIR=/var/db/bindgraph	Where do you put RRD databases?"
	@${ECHO_MSG} "CGIDIR=${PREFIX}/www/cgi-bin	Where do you put cgi?"
	@${ECHO_MSG} "BINDGRAPH_USER=www		User to run bindgraph (Default: ${WWWOWN})"
	@${ECHO_MSG} ""

post-patch:
	@${REINPLACE_CMD} -e "s,%%DATADIR%%,${DATADIR}," ${WRKSRC}/bindgraph.cgi

do-install:
	${MKDIR} ${CGIDIR}
	${MKDIR} ${DATADIR}
	@${CHOWN} -R ${BINDGRAPH_USER}:${BINDGRAPH_GROUP} ${DATADIR}/
	@${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.pl ${PREFIX}/sbin/
	@${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.cgi ${CGIDIR}/
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	for f in ${DOCS}; do \
	  ${INSTALL_DATA} ${WRKSRC}/$$f ${DOCSDIR}/; \
	done
.endif

post-install:
	@${ECHO_MSG} ""
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG} ""

.include <bsd.port.mk>
