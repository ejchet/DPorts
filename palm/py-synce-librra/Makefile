# New ports collection makefile for:   py-synce-librra
# Date created:                19 Jun 2008
# Whom:                        Ilya Bakulin <webmaster@kibab.com>
#
# $FreeBSD: ports/palm/py-synce-librra/Makefile,v 1.4 2012/11/17 06:00:44 svnexp Exp $

CATEGORIES=	palm python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}synce-

MAINTAINER=	webmaster@kibab.com
COMMENT=	Python bindings for the SynCE RRA library

LIB_DEPENDS=	rra.0:${PORTSDIR}/palm/synce-librra
BUILD_DEPENDS=	pyrexc:${PORTSDIR}/devel/pyrex

MASTERDIR=	${.CURDIR}/../synce-librra

USE_PYTHON=	yes

PLIST=		${.CURDIR}/pkg-plist

RRA_SLAVE=	pythonb

pre-patch:
	@${REINPLACE_CMD} -e 's|$$(top_builddir)/lib/librra.la|${LOCALBASE}/lib/librra.la|g' \
		${WRKSRC}/python/Makefile.in

do-build:
	@(cd ${WRKSRC}/python && ${MAKE})

do-install:
	@(cd ${WRKSRC}/python && ${MAKE} install)

.include "${MASTERDIR}/Makefile"
