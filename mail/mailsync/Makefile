# New ports collection makefile for:	mailsync
# Date created:		03 Feb 2003
# Whom:			Maxim Tulyuk <mt@primats.org.ua>
#
# $FreeBSD: ports/mail/mailsync/Makefile,v 1.15 2012/11/17 05:59:05 svnexp Exp $
#

PORTNAME=	mailsync
PORTVERSION=	5.2.1
PORTREVISION=	3
CATEGORIES=	mail
MASTER_SITES=	SF
DISTNAME=	${PORTNAME}_${PORTVERSION}.orig

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Mailsync is a way of keeping a collection of mailboxes synchronized

LIB_DEPENDS=	c-client4.9:${PORTSDIR}/mail/cclient

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
USE_GMAKE=	yes
USE_OPENSSL=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-c-client=${LOCALBASE}

MAN1=		mailsync.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/mailsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/mailsync.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} AUTHORS COPYING NEWS README \
		THANKS TODO ${DOCSDIR}
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ABSTRACT HACKING \
		mail_open_close_flowchart.dia \
		mail_open_close_flowchart.svg \
		mail_open_close_flowchart2.svg ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/examples/mailsync ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
