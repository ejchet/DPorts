# New ports collection makefile for:	pcfclock
# Date created:				23 November 2004
# Whom:					Frank W. Josellis <frank@dynamical-systems.org>
#
# $FreeBSD: ports/sysutils/pcfclock/Makefile,v 1.6 2012/11/17 06:01:40 svnexp Exp $
#

PORTNAME=	pcfclock
PORTVERSION=	0.44
PORTREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	http://www-stud.ims.uni-stuttgart.de/~voegelas/pcfclock/

MAINTAINER=	frank@dynamical-systems.org
COMMENT=	Userland access to the pcfclock device

USE_RC_SUBR=	pcfdate

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--without-linux

MAN8=		pcfdate.8
PLIST_FILES=	sbin/pcfdate

.include <bsd.port.pre.mk>

.if ${ARCH} == "ia64" || ${ARCH} == "powerpc" || ${ARCH} == "sparc64"
IGNORE=		not supported for architecture ${ARCH}
.endif

post-install:
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.post.mk>
