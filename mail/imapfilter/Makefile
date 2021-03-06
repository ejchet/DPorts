# Created by: Lefteris Chatzibarbas <lefcha@hellug.gr>
# $FreeBSD: mail/imapfilter/Makefile 321069 2013-06-16 19:38:38Z stefan $

PORTNAME=	imapfilter
PORTVERSION=	2.5.5
#PORTREVISION=	0
CATEGORIES=	mail
MASTER_SITES=	http://www.gegenunendlich.de/distfiles/ \
		GH

MAINTAINER=	stefan@FreeBSD.org
COMMENT=	IMAP mail filtering utility

LIB_DEPENDS=	pcre:${PORTSDIR}/devel/pcre

USE_LUA=	5.1
USE_OPENSSL=	yes
WITH_OPENSSL_PORT=yes
CPPFLAGS+=	-I${LOCALBASE}/include -I${LUA_INCDIR}
LDFLAGS+=	-L${LOCALBASE}/lib -L${LUA_LIBDIR}

USE_GITHUB=	yes
GH_ACCOUNT=	lefcha
GH_TAGNAME=	v${PORTVERSION}
GH_COMMIT=	ef03d60

MAN1=		imapfilter.1
MAN5=		imapfilter_config.5
PORTDOCS=	LICENSE NEWS README
PLIST_FILES=	bin/imapfilter \
		%%DATADIR%%/account.lua \
		%%DATADIR%%/auxiliary.lua \
		%%DATADIR%%/common.lua \
		%%DATADIR%%/mailbox.lua \
		%%DATADIR%%/message.lua \
		%%DATADIR%%/options.lua \
		%%DATADIR%%/regex.lua \
		%%DATADIR%%/set.lua \
		%%EXAMPLESDIR%%/config.lua \
		%%EXAMPLESDIR%%/extend.lua
PLIST_DIRS=	%%DATADIR%% %%EXAMPLESDIR%%

post-patch:
	${REINPLACE_CMD} -Ee ' \
	    s|^(PREFIX =).*|\1${PREFIX}|; \
	    s|^(MYCFLAGS =).*|\1${CPPFLAGS}|; \
	    s|^(MYLDFLAGS =).*|\1${LDFLAGS}|; \
	    s|^(BINDIR =).*|\1${PREFIX}/bin|; \
	    s|^(SHAREDIR =).*|\1${DATADIR}|; \
	    s|^(MANDIR =).*|\1${MANPREFIX}/man|' \
	    ${WRKSRC}/src/Makefile

post-install:
	${STRIP_CMD} ${PREFIX}/bin/imapfilter
	@${MKDIR} ${DATADIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/samples && \
		${INSTALL_DATA} config.lua extend.lua \
			${EXAMPLESDIR}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
