# Created by: Thomas Seck <tmseck@netcologne.de>
# $FreeBSD: mail/usendmail/Makefile 314324 2013-03-15 22:03:42Z bdrewery $

PORTNAME=	usendmail
PORTVERSION=	0.1.6
PORTREVISION=	2
CATEGORIES=	mail
MASTER_SITES=	http://www.ohse.de/uwe/usendmail/

MAINTAINER=	tmseck@FreeBSD.org
COMMENT=	A replacement for qmail's sendmail drop-in

USES=		qmail

WRKSRC=		${WRKDIR}/mail/${DISTNAME}

PLIST_FILES=	sbin/usendmail
PORTDOCS=	NEWS README
SUB_FILES=	pkg-message
SUB_LIST=	QMAIL_PREFIX=${QMAIL_PREFIX}

post-patch:
	@${REINPLACE_CMD} -e 's,/var/qmail,${QMAIL_PREFIX},' \
	    ${WRKSRC}/src/usendmail.c
	@${REINPLACE_CMD} -e 's,^CC=,CC\?=,' \
	    ${WRKSRC}/src/Makefile

regression-test: build
	cd ${WRKSRC} && ./package/check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/command/usendmail ${PREFIX}/sbin/
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}/src && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
