# Created by: Jin-Sih Lin <linpct@gmail.com>
# $FreeBSD: www/node/Makefile 323787 2013-07-27 13:49:49Z swills $

PORTNAME=	node
PORTVERSION=	0.10.15
CATEGORIES=	www
MASTER_SITES=	http://nodejs.org/dist/v${PORTVERSION}/
DISTNAME=	${PORTNAME}-v${PORTVERSION}

MAINTAINER=	linpct@gmail.com
COMMENT=	V8 JavaScript for client and server

LIB_DEPENDS=	execinfo:${PORTSDIR}/devel/libexecinfo

MAN1=		node.1

HAS_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_PYTHON=	2.7
USE_GMAKE=	yes

CONFLICTS=	node-0.[02-9][0-9]* node-devel-0.[0-9]*

ONLY_FOR_ARCHS=	i386 amd64
MAKE_JOBS_SAFE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX_RELDEST} --without-npm
PREFIX_RELDEST=	${PREFIX:S,^${DESTDIR},,}
REINPLACE_ARGS=	-i ''

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local|${LOCALBASE}|' \
		${WRKSRC}/deps/v8/build/common.gypi \
		${WRKSRC}/deps/v8/tools/gyp/v8.gyp

post-install:
	${MKDIR} ${PREFIX}/lib/node_modules/
	${TOUCH} ${PREFIX}/lib/node_modules/.keepme
	${CHMOD} ${MANMODE} ${PREFIX}/man/man1/node.1
	@${ECHO_MSG}
	@${ECHO_MSG} "Note: If you need npm (Node Package Manager), please install www/npm."
	@${ECHO_MSG}

.include <bsd.port.mk>
