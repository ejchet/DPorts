# Created by: bsam
# $FreeBSD: mail/imaptools/Makefile 319031 2013-05-25 07:46:10Z bsam $

PORTNAME=	imaptools
PORTVERSION=	1.135
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	bsam
DISTNAME=	imap_tools_V${PORTVERSION}

MAINTAINER=	bsam@FreeBSD.org
COMMENT=	Tools and scripts to use with IMAP servers

LICENSE=	ISCL

CONFLICTS=	imaputils-[0-9]*

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
USES=		shebangfix
SHEBANG_FILES=	*.pl
USE_PERL5_RUN=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/*.pl ${PREFIX}/bin

.include <bsd.port.mk>
