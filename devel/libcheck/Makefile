# Created by: mikeh@FreeBSD.org
# $FreeBSD: devel/libcheck/Makefile 316540 2013-04-26 02:28:07Z sunpoet $

PORTNAME=	libcheck
PORTVERSION=	0.9.10
CATEGORIES=	devel
MASTER_SITES=	SF/check/check/${PORTVERSION}
DISTNAME=	check-${PORTVERSION}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	A unit test framework for C

LICENSE=	LGPL21

OPTIONS_DEFINE=	DOCS EXAMPLES

CONFIGURE_ENV=	ac_cv_path_AWK_PATH=${AWK}
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_LDCONFIG=	yes
USES=		pathfix

INFO=		check
MAN1=		checkmk.1

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} \
		-e 's|COPYING.LESSER||' \
		-e '/^docdir = / s|$$(PACKAGE)|${PORTNAME}|' \
			${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} \
		-e '/^exampledir = / s|(docdir)/example|(datadir)/examples/${PORTNAME}|' \
		-e '/^example[a-z]*dir = / s|(docdir)/example/|(exampledir)/|' \
			${WRKSRC}/doc/Makefile.in
.if empty(PORT_OPTIONS:MDOCS)
	@${REINPLACE_CMD} -e '/^install-data-am:/ s| install-docDATA||' ${WRKSRC}/Makefile.in
.endif
.if empty(PORT_OPTIONS:MEXAMPLES)
	@${REINPLACE_CMD} \
		-e '/^install-data-am:/ s| install-exampleDATA install-examplesrcDATA||' \
		-e 's|install-exampletestsDATA ||' \
			${WRKSRC}/doc/Makefile.in
.endif

.include <bsd.port.mk>
