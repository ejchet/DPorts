# Created by:	Jason Bacon
# $FreeBSD: ports-mgmt/genplist/Makefile 320519 2013-06-11 02:14:25Z tabthorpe $

PORTNAME=	genplist
PORTVERSION=	1.0
CATEGORIES=	ports-mgmt
MASTER_SITES=	http://personalpages.tds.net/~jwbacon/Ports/distfiles/ \
		http://acadix.biz/Ports/distfiles/

MAINTAINER=	jwbacon@tds.net
COMMENT=	Generates a static plist for a port

NO_BUILD=	yes

PLIST_FILES=	bin/genplist

MAN1=		genplist.1

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/genplist ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/genplist.1 ${MAN1PREFIX}/man/man1

.include <bsd.port.pre.mk>
post-patch:
		${REINPLACE_CMD} 's|/etc/mtree|$${PORTSDIR=/usr/ports}/Templates|' ${WRKSRC}/genplist
.include <bsd.port.post.mk>
