# Created by: Hiroyuki Iwatsuki <don@na.rim.or.jp>
# $FreeBSD: devel/ruby-subversion/Makefile 321328 2013-06-19 21:13:34Z ohauer $

PKGNAMEPREFIX=	ruby-

MAINTAINER=	lev@FreeBSD.org
COMMENT=	Ruby bindings for version control system

.if defined(WITH_SUBVERSION_VER) && ${WITH_SUBVERSION_VER} == 16
MASTERDIR=	${.CURDIR}/../../devel/subversion16
.elif defined(WITH_SUBVERSION_VER) && ${WITH_SUBVERSION_VER} == 17
MASTERDIR=	${.CURDIR}/../../devel/subversion16
.else
MASTERDIR=	${.CURDIR}/../../devel/subversion
.endif
PKGDIR=		${.CURDIR}

USE_RUBY=	yes

SVN_BUILD_BINDINGS=yes

.include "${MASTERDIR}/Makefile.common"

CATEGORIES+=	ruby

do-build:
	cd ${WRKSRC} ; ${MAKE} swig-rb-lib ; ${MAKE} swig-rb

do-install:
	cd ${WRKSRC} ; ${MAKE} install-swig-rb

.include <bsd.port.post.mk>
