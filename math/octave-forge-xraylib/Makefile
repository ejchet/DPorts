# Created by: Stephen Montgomery-Smith <stephen@math.missouri.edu>
# $FreeBSD: math/octave-forge-xraylib/Makefile 322356 2013-07-05 20:59:44Z stephen $

PORTNAME=	octave-forge-xraylib
PORTVERSION=	1.0.8
PORTREVISION=	7
CATEGORIES=	math

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Octave-forge package ${OCTAVE_PKGNAME}

GNU_CONFIGURE=	yes

BUILD_DEPENDS+=	bash:${PORTSDIR}/shells/bash

post-patch:
	@${REINPLACE_CMD} s+/bin/bash+${LOCALBASE}/bin/bash+g ${WRKSRC}/src/xraylib/src/*.sh
	@${REINPLACE_CMD} s+/bin/bash+${LOCALBASE}/bin/bash+g ${WRKSRC}/src/xraylib/src/Makefile
	@${REINPLACE_CMD} s+/bin/bash+${LOCALBASE}/bin/bash+g ${WRKSRC}/src/xraylib/bin/xraylib
	@${REINPLACE_CMD} s+/bin/bash+${LOCALBASE}/bin/bash+g ${WRKSRC}/src/xraylib/*.sh

.include "${.CURDIR}/../../Mk/bsd.octave.mk"
.include <bsd.port.mk>
