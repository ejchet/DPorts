# Created by: paul@FreeBSD.org
# $FreeBSD: net/ldapsdk/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	ldapsdk
PORTVERSION=	6.0.7
PORTEPOCH=	1
CATEGORIES=	net
MASTER_SITES=	MOZILLA/directory/c-sdk/releases/v${PORTVERSION}/src
DISTNAME=	mozldap-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Mozilla LDAP sdk

LIB_DEPENDS=	nspr4.1:${PORTSDIR}/devel/nspr

WRKSRC=		${WRKDIR}/${DISTNAME}/c-sdk

USES=		perl5
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-optimize \
		--with-dist-prefix=${WRKDIR}/fakeroot \
		--with-nspr-inc=${LOCALBASE}/include/nspr \
		--with-nspr-lib=${LOCALBASE}/lib
MAKE_JOBS_SAFE=	yes

post-extract:
	@${MKDIR} ${WRKDIR}/fakeroot

do-install:
	@${MKDIR} ${PREFIX}/mozilla/directory
	@(cd ${WRKDIR}/fakeroot \
		&& ${COPYTREE_SHARE} . ${PREFIX}/mozilla/directory)

.include <bsd.port.mk>
