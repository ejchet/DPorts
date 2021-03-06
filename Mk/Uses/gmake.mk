# $FreeBSD: Mk/Uses/gmake.mk 323942 2013-07-30 06:32:01Z bapt $
#
# Provide support to use the GNU make
#
# MAINTAINER: portmgr@FreeBSD.org
#
# Feature:		gmake
# Usage:		USES=gmake
#

.if !defined(_INCLUDE_USES_GMAKE_MK)
_INCLUDE_USES_GMAKE_MK=	yes

.if defined(gmake_ARGS)
IGNORE=	Incorrect 'USES+= gmake:${gmake_ARGS}' gmake takes no arguments
.endif

BUILD_DEPENDS+=		gmake:${PORTSDIR}/devel/gmake
CONFIGURE_ENV+=		MAKE=${GMAKE}
MAKE_CMD?=		${GMAKE}

.endif
