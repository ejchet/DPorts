# $FreeBSD: ports/sysutils/grok/Makefile,v 1.16 2012/12/12 18:51:48 svnexp Exp $

PORTNAME=	grok
PORTVERSION=	1.20110708.1
PORTEPOCH=	1
CATEGORIES=	sysutils
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	wxs@FreeBSD.org
COMMENT=	An expert system for real-time log analysis

BUILD_DEPENDS=	gperf>=3.0.3:${PORTSDIR}/devel/gperf \
		libevent>=1.3:${PORTSDIR}/devel/libevent \
		pcre>=7.6:${PORTSDIR}/devel/pcre \
		tokyocabinet>=1.4.9:${PORTSDIR}/databases/tokyocabinet
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAKE_ENV+=	GPERF=${LOCALBASE}/bin/gperf \
		EXTRA_CFLAGS=-I${LOCALBASE}/include \
		EXTRA_LDFLAGS=-L${LOCALBASE}/lib

USE_GMAKE=	yes
USE_LDCONFIG=	yes

SUB_FILES=	pkg-message

PROJECTHOST=	semicomplete
PORTDOCS=	CHANGELIST INSTALL
MAN1=		grok.1

post-patch:
	@${REINPLACE_CMD} 's|PREFIX=|PREFIX?=|; s|-g root|-g wheel|' \
		${WRKSRC}/Makefile

post-install:
	${INSTALL_MAN} ${WRKSRC}/grok.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@${INSTALL} -d ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
