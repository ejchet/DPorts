# Created by: Ceri Davies (ceri@FreeBSD.org)
# $FreeBSD: ports/games/robotfindskitten/Makefile,v 1.11 2013/02/08 18:58:09 svnexp Exp $

PORTNAME=	robotfindskitten
PORTVERSION=	2.7182818.701
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	games
MASTER_SITES=	http://robotfindskitten.org/download/POSIX/

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Yet another zen simulation

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

GNU_CONFIGURE=	YES

OPTIONS_DEFINE=	EXTRANKI MEGAHYPERDEATH

EXTRANKI_DESC=	Install additional Non Kitten Items
MEGAHYPERDEATH_DESC=	Add the possibility of MEGA. HYPER. DEATH!	

OPTIONS_DEFAULT=	EXTRANKI

MAN6=		robotfindskitten.6

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MEXTRANKI}
SUB_FILES=	freebsd.nki nethack.nki
PLIST_SUB+=	EXTRANKI=""
.else
PLIST_SUB+=	EXTRANKI="@comment "
.endif

.if ${PORT_OPTIONS:MMEGAHYPERDEATH}
EXTRA_PATCHES+=	${FILESDIR}/extrapatch-megahyperdeath
.endif

post-patch:
	@${REINPLACE_CMD} -e 's,/usr/share/games/robotfindskitten,${DATADIR},' \
		${WRKSRC}/doc/robotfindskitten.6

do-install:
	${MKDIR} ${DATADIR}
	${INSTALL_PROGRAM} ${WRKSRC}/src/robotfindskitten ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nki/vanilla.nki ${DATADIR}
	${INSTALL_MAN} ${WRKSRC}/doc/robotfindskitten.6 ${MANPREFIX}/man/man6

.if ${PORT_OPTIONS:MEXTRANKI}
.for NKI in ${SUB_FILES}
	${INSTALL_DATA} ${WRKDIR}/${NKI} ${DATADIR}
.endfor
.endif

.include <bsd.port.mk>
