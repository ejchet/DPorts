# Created by: ijliao
# $FreeBSD: graphics/springgraph/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	springgraph
PORTVERSION=	0.88
PORTREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	http://www.chaosreigns.com/code/springgraph/dl/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.pl

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Render graph described in a .dot file

RUN_DEPENDS=	p5-GD>=0:${PORTSDIR}/graphics/p5-GD

CONFLICTS_INSTALL=signing-party-[0-9]*

PLIST_FILES=	bin/springgraph
EXTRACT_CMD=	${CP}
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	${WRKDIR}
NO_WRKSUBDIR=	yes
NO_BUILD=	yes
USES=		shebangfix perl5
SHEBANG_FILES=	springgraph.pl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/springgraph.pl ${PREFIX}/bin/springgraph

.include <bsd.port.mk>
