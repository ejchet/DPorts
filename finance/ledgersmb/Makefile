# Created by: anarcat@anarcat.ath.cx
# $FreeBSD: finance/ledgersmb/Makefile 324180 2013-08-03 07:52:55Z az $

PORTNAME=	ledger-smb
PORTVERSION=	1.1.12
PORTREVISION=	1
CATEGORIES=	finance perl5
MASTER_SITES=	SF/${PORTNAME}/ledgersmb/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A double entry accounting system

BUILD_DEPENDS=	p5-DBD-Pg>=0:${PORTSDIR}/databases/p5-DBD-Pg
RUN_DEPENDS:=	${BUILD_DEPENDS}

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}
PKGMESSAGE=	${WRKDIR}/pkg-message
USES=		shebangfix perl5
SHEBANG_FILES=	*.pl locale/*/*.pl bin/*/*.pl utils/*/*.pl
SUB_FILES=	${PORTNAME}-httpd.conf pkg-message

do-install:
	@cd ${WRKDIR} ; \
		${TAR} -cf - ${PORTNAME} | ( cd ${PREFIX} ; ${TAR} xf - )
	@cd ${PREFIX}/${PORTNAME} ; \
		${CHOWN} -hR ${WWWOWN}:${WWWGRP} * ; \
		${CHMOD} 711 users templates css spool
	@${INSTALL_DATA} ${WRKDIR}/${PORTNAME}-httpd.conf ${PREFIX}/etc/

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
