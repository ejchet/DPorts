# New ports collection makefile for:	qorganizer
# Date created:		20 August 2007
# Whom:			Yinghong Liu <relaxbsd@gmail.com>
#
# $FreeBSD: ports/deskutils/qorganizer/Makefile,v 1.13 2013/01/23 15:05:32 svnexp Exp $
#

PORTNAME=	qorganizer
PORTVERSION=	3.1
PORTREVISION=	4
CATEGORIES=	deskutils
MASTER_SITES=	SF/${PORTNAME}/OldFiles
DISTNAME=	qOrganizer-${PORTVERSION}

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A general organizer that includes calendar with jurnal and schedule

USE_QT4=	gui network qmake_build moc_build rcc_build sql
WRKSRC=		${WRKDIR}/qOrganizer/src

PLIST_FILES=	bin/qOrganizer share/pixmaps/qOrganizer.png
PORTDOCS=	CHANGELOG.txt COPYING

DESKTOP_ENTRIES=	"qOrganizer" \
			"${COMMENT}" \
			"qOrganizer" \
			"qOrganizer" \
			"Qt;KDE;Office;" \
			"false"

pre-build:
	@cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} ${QMAKE}

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/qOrganizer ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/../qOrganizer.png ${PREFIX}/share/pixmaps
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for doc in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/../${doc} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
