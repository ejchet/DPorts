# New ports collection makefile for:	flash
# Date created:		11 Dec 1999
# Whom:			Will Andrews <andrews@technologist.com>
#
# $FreeBSD: ports/shells/flash/Makefile,v 1.24 2012/11/17 06:01:23 svnexp Exp $
#

PORTNAME=	flash
PORTVERSION=	0.9.5
CATEGORIES=	shells
MASTER_SITES=	http://www.sourcefiles.org/Shells/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A ncurses-based restriction shell

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
LDFLAGS+=	-rdynamic
CFLAGS+=	-rdynamic
SUB_FILES=	pkg-message
PKGMESSAGE=	${WRKDIR}/pkg-message

MAN1=		flash.1

PROGRAM=	alarms background countdown
SCRIPT=		mailshell system.menu system.menu.9798 system.menu.oldlast \
		system.menu.old
DATA=		system.bg.Netsoc.3 system.bg.Netsoc.4 system.flashlogin \
		system.maillogin system.module system.module.9798 system.rc \
		system.rc.mailshell

post-patch:
.for file in ${SCRIPT}
	@${REINPLACE_CMD} -e "s:/usr/slocal:${PREFIX}:g" ${WRKSRC}/orcasetup/${file}
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flash ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/flash.1 ${MANPREFIX}/man/man1
	@${MKDIR} ${PREFIX}/lib/flash
	${INSTALL_DATA} ${WRKSRC}/Manual ${PREFIX}/lib/flash
.for file in ${PROGRAM}
	${INSTALL_PROGRAM} ${WRKSRC}/modules/${file} ${PREFIX}/lib/flash
.endfor
.for file in ${SCRIPT}
	${INSTALL_SCRIPT} ${WRKSRC}/orcasetup/${file} ${PREFIX}/lib/flash
.endfor
.for file in ${DATA}
	${INSTALL_DATA} ${WRKSRC}/orcasetup/${file} ${PREFIX}/lib/flash
.endfor
	@${MKDIR} ${PREFIX}/lib/flash/flashdocs
	${INSTALL_DATA} ${WRKSRC}/orcasetup/flashdocs/* ${PREFIX}/lib/flash/flashdocs

post-install:
	@${ECHO_MSG} "Updating /etc/shells"
	@${CP} /etc/shells /etc/shells.bak
	@(${GREP} -v ${PREFIX}/bin/flash /etc/shells.bak; \
	${ECHO_CMD} ${PREFIX}/bin/flash) > /etc/shells
	@${RM} /etc/shells.bak
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
