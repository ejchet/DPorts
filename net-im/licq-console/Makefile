# Created by: Jeremy Norris <ishmael27@home.com>
# $FreeBSD: net-im/licq-console/Makefile 314960 2013-03-22 20:06:14Z makc $

PORTNAME=	console
PORTVERSION=	1.7.1
PORTREVISION=	1
CATEGORIES=	net-im

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	Ncurses-based console plugin for Licq

LIB_DEPENDS=	cdk:${PORTSDIR}/devel/cdk \
		boost_regex:${PORTSDIR}/devel/boost-libs

LICENSE=	GPLv2

USES=		cmake
DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}

DOCFILES=	README
PLIST_FILES=	lib/licq/licq_console.so \
		%%PORTDOCS%%%%DOCSDIR%%/README
PLIST_DIRS=	%%PORTDOCS%%%%DOCSDIR%%

LICQ_PORT?=	net-im/licq

.include <bsd.port.pre.mk>

.include "${PORTSDIR}/${LICQ_PORT}/Makefile.inc"

.if !defined(NOPORTDOCS)
post-install:
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}/
.endif

.include <bsd.port.post.mk>
