# Created by: Christopher J. Ruwe
# $FreeBSD: math/ess/Makefile 319316 2013-05-28 15:15:05Z bf $

PORTNAME=	ess
DISTVERSION=	13.05
PORTREVISION=	1
CATEGORIES=	math
MASTER_SITES=	http://ess.r-project.org/downloads/ess/
EXTRACT_SUFX=	.tgz

MAINTAINER=	cjr@cruwe.de
COMMENT=	R support for Emacsen

LICENSE=	GPLv2

RUN_DEPENDS=	R:${PORTSDIR}/math/R

USE_EMACS=	yes
USE_GMAKE=	yes

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
INFO=	ess
.endif

post-patch: .SILENT
	${REINPLACE_CMD} -e "\|^PREFIX=|d" -e "\|^INSTALL=|d" \
		-e "\|^EMACS=|s|=.*|=${EMACS_NAME}|" \
		-e "\|^ETCDIR=|s|=.*|=${PREFIX}/${EMACS_LIBDIR}/etc/ess|" \
		-e "\|^INFODIR=|s|=.*|=${PREFIX}/${INFO_PATH}|" \
		-e "\|^LISPDIR=|s|=.*|=${PREFIX}/${EMACS_SITE_LISPDIR}|" \
		${WRKSRC}/Makeconf
	${REINPLACE_CMD} -e "\|cd doc; \$$(MAKE) \$$@|d" \
		${WRKSRC}/Makefile
	${REINPLACE_CMD} -e "s|\$$(INSTALL)|${INSTALL_DATA}|g" \
		${WRKSRC}/doc/Makefile ${WRKSRC}/etc/Makefile
	${REINPLACE_CMD} -e "s|\$$(INSTALL)|${INSTALL_SCRIPT}|g" \
		${WRKSRC}/lisp/Makefile

.if ${PORT_OPTIONS:MDOCS}
post-build:
	@(cd ${WRKSRC}/doc; ${SETENV} ${MAKE_ENV} ${GMAKE} ${_MAKE_JOBS} \
		${MAKE_ARGS} info)
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@(cd ${WRKSRC}/doc; ${SETENV} ${MAKE_ENV} ${GMAKE} ${_MAKE_JOBS} \
		${MAKE_ARGS} install-info)
.endif
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}

.include <bsd.port.mk>
