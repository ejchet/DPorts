# Created by: Kubilay Kocak <koobs@FreeBSD.org>
#
# $FreeBSD: ports/devel/rebar/Makefile,v 1.3 2013/02/09 15:59:06 svnexp Exp $
#

PORTNAME=	rebar
PORTVERSION=	2.0.0
CATEGORIES=	devel
MASTER_SITES=	http://github.com/basho/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	basho-${PORTNAME}-${GITVERSION}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	A build-tool for Erlang that follows OTP principles

LICENSE=	AL2

BUILD_DEPENDS=	${LOCALBASE}/bin/escript:${PORTSDIR}/lang/erlang
RUN_DEPENDS:=	${BUILD_DEPENDS}

PLIST_FILES=	bin/${PORTNAME}

GITVERSION=	1c98f6c
FETCH_ARGS=	-Fpr

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/

.include <bsd.port.mk>
