# New ports collection makefile for:   thrulay
# Date created:        2005-10-19
# Whom:                shalunov
#
# $FreeBSD: ports/benchmarks/thrulay/Makefile,v 1.6 2012/11/17 05:54:51 svnexp Exp $

PORTNAME=	thrulay
PORTVERSION=	0.9
CATEGORIES=	benchmarks net ipv6
MASTER_SITES=	SF \
		http://www.internet2.edu/~shalunov/thrulay/

MAINTAINER=	shalunov@shlang.com
COMMENT=	Network capacity tester

MAN1=		thrulay.1
MAN8=		thrulayd.8
MANCOMPRESSED=	no
HAS_CONFIGURE=	yes
USE_GMAKE=	yes
USE_LDCONFIG=	yes
USE_RC_SUBR=	thrulayd
SUB_FILES=	thrulayd
MAKE_JOBS_UNSAFE=	yes

PORTDOCS=	ChangeLog README thrulay-protocol.txt thrulay-index.html

post-patch:
	${REINPLACE_CMD} -e '922s,datarootdir,prefix,g' ${WRKSRC}/configure

post-extract:
	@${CP} ${WRKSRC}/doc/*.[ht]* ${WRKSRC}/

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for docs in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${docs} ${DOCSDIR}
.endfor
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
