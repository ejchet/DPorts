# Created by: eivind
# $FreeBSD: mail/isync/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	isync
PORTVERSION=	1.0.6
CATEGORIES=	mail
MASTER_SITES=	SF

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Maintain local copies of remote IMAP folders w/synchronized flags

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
USE_OPENSSL=	yes
USE_BDB=	42+

MAN1=		isync.1 mbsync.1 mdconvert.1
PORTDOCS=	AUTHORS ChangeLog NEWS README TODO
PLIST_FILES=	bin/get-cert bin/isync bin/mbsync bin/mdconvert

CPPFLAGS+=	-I${BDB_INCLUDE_DIR} -I${OPENSSLINC}
LDFLAGS+=	-L${BDB_LIB_DIR} -L${OPENSSLLIB} -lssl -lcrypto

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|: install-docDATA|:|g' ${WRKSRC}/Makefile.in

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
