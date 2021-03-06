# New ports collection makefile for:	autoconf
# Date created:		7th December 2006
# Whom:			ade@FreeBSD.org
#
# $FreeBSD: ports/devel/autoconf/Makefile,v 1.52 2012/11/17 05:55:34 svnexp Exp $
#

PORTNAME=	autoconf
PORTVERSION=	2.69
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	autoconf
DISTNAME=	autoconf-${PORTVERSION}

MAINTAINER=	autotools@FreeBSD.org
COMMENT=	Automatically configure source code on many Un*x platforms

BUILD_DEPENDS=	gm4:${PORTSDIR}/devel/m4 \
		help2man:${PORTSDIR}/misc/help2man
RUN_DEPENDS=	gm4:${PORTSDIR}/devel/m4 \
		autoconf-wrapper:${PORTSDIR}/devel/autoconf-wrapper

BUILD_VERSION=	2.69
PLIST_SUB=	BUILD_VERSION=${BUILD_VERSION}
USE_XZ=		yes
USE_GMAKE=	yes
USE_PERL5=	yes
INFO=		autoconf

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	CONFIG_SHELL=${SH} M4=${LOCALBASE}/bin/gm4 AWK=${AWK} \
		ac_cv_prog_TEST_EMACS=no
CONFIGURE_ARGS=	--program-suffix=-${BUILD_VERSION} --without-lispdir

GENERIC_TOOLS=	config.guess config.sub	elisp-comp install-sh mdate-sh missing
GENERIC_LINKS=	autoconf autoheader autom4te autoreconf autoscan autoupdate \
		ifnames

MAN1_PAGES=	${GENERIC_LINKS} config.guess config.sub
MAN1=		${MAN1_PAGES:S/$/-${BUILD_VERSION}.1/g}

post-patch:
	@(cd ${WRKSRC}/man && \
		for file in *.[1x]; do \
			${REINPLACE_CMD} -E 's,([^-]auto)(conf|make|reconf|update|header|scan),\1\2-${BUILD_VERSION},g ; \
						s,(config\.guess|config\.sub|ifnames),\1-${BUILD_VERSION},g' $$file ; \
		done)
	@(cd ${WRKSRC}/doc && ${RM} -f *.info)
	@${FIND} ${WRKSRC} -name Makefile.in | ${XARGS} ${REINPLACE_CMD} -e \
		's|@PACKAGE@$$|@PACKAGE@-@VERSION@|'

post-install:
.for FILE in ${GENERIC_TOOLS}
	@${INSTALL_SCRIPT} ${WRKSRC}/build-aux/${FILE} ${PREFIX}/share/autoconf-${BUILD_VERSION}
.endfor

.include <bsd.port.mk>
