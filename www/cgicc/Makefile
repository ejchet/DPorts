# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>
# $FreeBSD: www/cgicc/Makefile 315656 2013-04-01 15:44:05Z bdrewery $

PORTNAME=	cgicc
PORTVERSION=	3.2.10
PORTREVISION=	1
CATEGORIES=	www devel
MASTER_SITES=	GNU

MAINTAINER=	ports@FreeBSD.org
COMMENT=	C++ class library for writing CGI applications

USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool
MAKE_ARGS=	ACLOCAL="${TRUE}" AUTOCONF="${TRUE}" AUTOHEADER="${TRUE}" \
		AUTOMAKE="${TRUE}"
USE_LDCONFIG=	yes
USES=		pathfix

PORTDOCS=	*
CXXFLAGS+=	-Wno-unknown-pragmas
MAKE_JOBS_SAFE=	yes

.if !defined(NOPORTDOCS)
BUILD_DEPENDS+=	doxygen:${PORTSDIR}/devel/doxygen
.endif

post-patch:
	@${REINPLACE_CMD} -e '/CXXFLAGS/s|-pedantic||g' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e '/^SUBDIRS/s|doc||g' ${WRKSRC}/Makefile.in

post-build:
.if !defined(NOPORTDOCS)
	@(cd ${WRKSRC}/doc; ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_FLAGS} \
		${MAKEFILE} ${ALL_TARGET})
.endif

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@(cd ${WRKSRC}/doc/html && ${COPYTREE_SHARE} . ${DOCSDIR})
.endif
	${RM} -f ${PREFIX}/lib/libcgicc.la

.include <bsd.port.mk>
