# New ports collection makefile for:	fmirror
# Date created:				26 June 2002
# Whom:					Xavier Beaudouin <kiwi@oav.net>
#
# $FreeBSD: ports/ftp/fmirror/Makefile,v 1.7 2012/11/17 05:57:29 svnexp Exp $
#

PORTNAME=	fmirror
PORTVERSION=	0.8.4
PORTREVISION=	4
CATEGORIES=	ftp ipv6
MASTER_SITES=	ftp://ftp.guardian.no/pub/free/ftp/fmirror/ \
		ftp://ftp.oav.net/pkg_freebsd/distfiles/

MAINTAINER=	kiwi@oav.net
COMMENT=	Program for mirroring files and directories from a remote FTP server

GNU_CONFIGURE=	yes

MAN1=		fmirror.1

do-install:
	cd ${WRKSRC} && \
		${INSTALL_PROGRAM} fmirror ${PREFIX}/bin && \
		${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR} && \
	cd ${WRKSRC} && \
		${INSTALL_DATA} ChangeLog README ${DOCSDIR} && \
	cd ${WRKSRC}/configs && \
		${INSTALL_DATA} generic.conf redhat.conf sample.conf ${DOCSDIR}
.endif

.include <bsd.port.mk>
