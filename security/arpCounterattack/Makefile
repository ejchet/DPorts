# New ports collection makefile for:	arpCounterattack
# Date created:				05 November 2010
# Whom:					Boris Kochergin <spawk@acm.poly.edu>
# $FreeBSD: ports/security/arpCounterattack/Makefile,v 1.2 2012/11/17 06:01:00 svnexp Exp $
#

PORTNAME=	arpCounterattack
PORTVERSION=	1.2.0
CATEGORIES=	security
MASTER_SITES=	http://isis.poly.edu/~bk/${PORTNAME}/ \
		http://bk.macroblock.net/${PORTNAME}/
EXTRACT_SUFX=	.tbz

MAINTAINER=	spawk@acm.poly.edu
COMMENT=	Detects and remedies ARP attacks

LIB_DEPENDS=	dnet.1:${PORTSDIR}/net/libdnet

SUB_FILES=	pkg-message

USE_RC_SUBR=	${PORTNAME}

.include <bsd.port.pre.mk>

post-install:
	@if [ ! -f ${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf ]; then \
		${CP} -p ${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf.sample \
		${PREFIX}/etc/${PORTNAME}/${PORTNAME}.conf ; \
	fi
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
