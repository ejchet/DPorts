# Created by: pauls
# $FreeBSD: security/chaosreader/Makefile 315566 2013-03-29 19:33:41Z cs $
#

PORTNAME=	chaosreader
PORTVERSION=	0.94
PORTREVISION=	1
CATEGORIES=	security
MASTER_SITES=	SF
DISTFILES=	${PORTNAME}${PORTVERSION} sshkeydata0.20
EXTRACT_ONLY=
NO_WRKSUBDIR=	yes

MAINTAINER=	pauls@utdallas.edu
COMMENT=	Tool to extract data from tcpdump logs

NO_BUILD=	yes
USE_PERL5_RUN=	yes

PLIST_FILES=	bin/${PORTNAME} bin/sshkeydata

post-extract:
	${CP} ${DISTDIR}/${PORTNAME}${PORTVERSION} ${WRKDIR}/${PORTNAME}
	${CP} ${DISTDIR}/sshkeydata0.20 ${WRKDIR}/sshkeydata

post-patch:
	${REINPLACE_CMD} s:/usr/bin/perl:${PERL}: \
		${WRKDIR}/${PORTNAME} ${WRKDIR}/sshkeydata

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIR}/sshkeydata ${PREFIX}/bin

.include <bsd.port.mk>
