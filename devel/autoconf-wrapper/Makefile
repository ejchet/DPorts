# $FreeBSD: devel/autoconf-wrapper/Makefile 323088 2013-07-16 05:42:36Z ade $

PORTNAME?=	autoconf-wrapper
PORTVERSION=	20130530
CATEGORIES=	devel
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	autotools@FreeBSD.org
COMMENT?=	Wrapper script for GNU autoconf

WRKSRC=		${WRKDIR}
NO_BUILD=	YES

TOOL?=		AUTOCONF
WRAPPED_TOOLS?=	autoconf autoheader autom4te autoreconf autoscan \
		autoupdate ifnames
.include <bsd.port.pre.mk>

TOOLS_CASE!=	${ECHO_CMD} ${WRAPPED_TOOLS} | ${TR} ' ' '|'
PLIST_FILES=	bin/${PORTNAME}
.for tool in ${WRAPPED_TOOLS}
PLIST_FILES+=	bin/${tool}
.endfor

do-configure:
	@${SED} \
	    -e 's,%%PREFIX%%,${PREFIX},g' \
	    -e 's,%%TOOL%%,${TOOL},g' \
	    -e 's,%%TOOLS_CASE%%,${TOOLS_CASE},g' \
	    <${FILESDIR}/autotools-wrapper.sh >${WRKDIR}/${PORTNAME}.sh

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME}.sh ${PREFIX}/bin/${PORTNAME}
.for tool in ${WRAPPED_TOOLS}
	@${LN} -s ${PORTNAME} ${PREFIX}/bin/${tool}
.endfor

.include <bsd.port.post.mk>
