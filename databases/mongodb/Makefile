# Created by: Mirko Zinn <mail@derzinn.de>
# $FreeBSD: databases/mongodb/Makefile 320489 2013-06-10 15:44:14Z ale $

PORTNAME=	mongodb
PORTVERSION=	2.4.4
CATEGORIES=	databases net
MASTER_SITES=	http://downloads.mongodb.org/src/
DISTNAME=	${PORTNAME}-src-r${PORTVERSION}

MAINTAINER=	ale@FreeBSD.org
COMMENT=	NOSQL distributed document-oriented database

# mongodb is AGPLv3, C++ driver is AL2
LICENSE=	AGPLv3 AL2
LICENSE_COMB=	multi

LIB_DEPENDS=	execinfo:${PORTSDIR}/devel/libexecinfo \
		pcre:${PORTSDIR}/devel/pcre \
		snappy:${PORTSDIR}/archivers/snappy
# boost 1.52 from ports make mongod segfaulting with many tests
# LIB_DEPENDS+=	boost_system:${PORTSDIR}/devel/boost-libs
# SCONS_ARGS+=	--use-system-boost

ONLY_FOR_ARCHS=	i386 amd64
ONLY_FOR_ARCHS_REASON=	"not yet ported to anything other than i386 and amd64"

OPTIONS_DEFINE=	SM SSL TEST
OPTIONS_DEFAULT=SSL
SM_DESC=	Use SpiderMonkey instead of V8 for JavaScript
TEST_DESC=	Add support for running regression test

USE_SCONS=	yes
SCONS_ARGS=	--prefix=${PREFIX} --cc=${CC} --cxx=${CXX} --use-system-pcre --use-system-snappy

USERS=	mongodb
GROUPS=	mongodb

USE_RC_SUBR=	mongod

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSM}
SCONS_ARGS+=	--usesm --use-system-sm
LIB_DEPENDS+=	js:${PORTSDIR}/lang/spidermonkey17
.else
SCONS_ARGS+=	--usev8 --use-system-v8
LIB_DEPENDS+=	v8:${PORTSDIR}/lang/v8
.endif

.if ${PORT_OPTIONS:MSSL}
USE_OPENSSL=	yes
SCONS_ARGS+=	--ssl
.endif

.if ${PORT_OPTIONS:MTEST}
BUILD_DEPENDS=	pymongo>=2.5:${PORTSDIR}/databases/pymongo
SCONS_TARGET=	all
SMOKE_TESTS=	smokeAll smokeCppUnittests
.	if ${PORT_OPTIONS:MSSL}
SMOKE_TESTS+=	smokeSsl
.	endif
.else
SCONS_TARGET=	core tools
.endif

post-patch:
	@${REINPLACE_CMD} 's/\["-O3"\]/"${CFLAGS}"/' \
		${WRKSRC}/SConstruct

post-install:
	@if [ ! -f ${PREFIX}/etc/mongodb.conf ]; then \
		${TOUCH} ${PREFIX}/etc/mongodb.conf ; \
	fi

.if ${PORT_OPTIONS:MTEST}
test: build-depends build
	@cd ${BUILD_WRKSRC} && \
		${SCONS_BIN} ${SCONS_ENV} ${SCONS_ARGS} ${SMOKE_TESTS}
.endif

.include <bsd.port.mk>
