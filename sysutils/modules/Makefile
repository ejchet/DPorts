# New ports collection makefile for:   modules
# Date created:        9 March 2005
# Whom:                Hokan
#
# $FreeBSD: ports/sysutils/modules/Makefile,v 1.5 2012/11/17 06:01:38 svnexp Exp $
#

PORTNAME=	modules
PORTVERSION=	3.1.6
CATEGORIES=	sysutils tcl
MASTER_SITES=	SF/${PORTNAME}/Modules/${PORTNAME}-${PORTVERSION}

MAINTAINER=	hokan@me.umn.edu
COMMENT=	Dynamic modification of a user's environment

LIB_DEPENDS=	tcl${TCL_VER}:${PORTSDIR}/lang/tcl${TCL_VER}

PLIST_SUB=	MODULES_VERSION=${PORTVERSION}

BINDIR=		${PREFIX}/Modules

TCL_DVER?=	8.4
TCL_VER=	${TCL_DVER:S/.//}
HAS_CONFIGURE=	yes

CONFIGURE_ARGS=	--prefix=${PREFIX}/Modules/@VERSION@ \
		--without-x \
		--with-version-path=${PREFIX}/Modules/versions \
		--mandir=${MANPREFIX}/man \
		--with-tcl-version=${TCL_VER} \
		--with-tcl-include=${LOCALBASE}/include/tcl${TCL_DVER} \
		--with-tcl-libraries=${LOCALBASE}/lib/

MAN1=		module.1
MAN5=		modulefile.5

post-extract:
		${MV} ${WRKSRC}/doc/modulefile.4.in ${WRKSRC}/doc/modulefile.5.in

pre-install:
		${MKDIR} ${PREFIX}/Modules

.include <bsd.port.mk>
