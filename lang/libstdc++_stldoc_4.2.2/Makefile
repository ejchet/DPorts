# New ports collection makefile for:	libstdc++_stldoc
# Date created:		18th January 2008
# Whom:			Bruce M. Simpson
#
# $FreeBSD: ports/lang/libstdc++_stldoc_4.2.2/Makefile,v 1.4 2012/11/17 05:58:52 svnexp Exp $
#
# Note: Specific versions of this documentation exist for each version
# of the libstdc++ library, note versioning convention below.
#

PORTNAME=	libstdc++_stldoc_4.2.2
PORTVERSION=	20071101
PORTREVISION=	1
CATEGORIES=	lang devel
MASTER_SITES=	${MASTER_SITE_GCC}
MASTER_SITE_SUBDIR= \
		libstdc++/doxygen
DISTNAME=	libstdc++-html-USERS-4.2.2

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GNU libstdc++ API documentation

USE_BZIP2=	yes

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

# This port contains too many pathnames to use for globs.
# PORTDOCS does not do the right thing when a single directory '.'
# is specified, so use a directory name.

PORTDOCS=	stldoc

do-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR} ${DOCSDIR}/stldoc
	    cd ${WRKSRC}/html_user-4.2.20071101 && \
	    ${FIND} . -type f | \
	    ${XARGS} -J % ${INSTALL_DATA} % ${DOCSDIR}/stldoc &&
	    ${CHMOD} 755 ${DOCSDIR} ${DOCSDIR}/stldoc
.else
	@${ECHO} "NOPORTDOCS is set -- installing nothing."
.endif

.include <bsd.port.mk>
