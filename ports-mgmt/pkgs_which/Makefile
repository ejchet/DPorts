# Created by: Matthias Andree <mandree@FreeBSD.org>
# $FreeBSD: ports-mgmt/pkgs_which/Makefile 313945 2013-03-11 23:13:18Z mandree $

PORTNAME=	pkgs_which
PORTVERSION=	0.3.0
CATEGORIES=	ports-mgmt perl5
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	mandree@FreeBSD.org
COMMENT=	Quickly find out which ports contributed to a file tree

LICENSE=	GPLv3

NO_BUILD=	yes
USE_PERL5=	yes
PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
MAN1=		${PORTNAME}.1
.endif

do-install:
		${MKDIR} ${PREFIX}/bin
		${INSTALL_SCRIPT} ${FILESDIR}/${PORTNAME} ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
		${MKDIR} ${PREFIX}/man/man1
		${LOCALBASE}/bin/pod2man ${FILESDIR}/${PORTNAME} >${PREFIX}/man/man1/${MAN1}
.endif

.include <bsd.port.mk>
