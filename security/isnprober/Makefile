# Ports collection makefile for:  isnprober
# Date created:			  28/7/2006
# Whom:				  Yonatan <onatan@gmail.com>
#
# $FreeBSD: ports/security/isnprober/Makefile,v 1.3 2012/11/17 06:01:06 svnexp Exp $
#

PORTNAME=	isnprober
PORTVERSION=	1.02
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.ubizen.com/tools/ \
		${MASTER_SITE_PACKETSTORM}
MASTER_SITE_SUBDIR=	UNIX/scanners
EXTRACT_SUFX=	.tgz

MAINTAINER=	onatan@gmail.com
COMMENT=	PenTest tool for TCP Initial Sequence Numbers research

RUN_DEPENDS=	p5-Net-RawIP>=0:${PORTSDIR}/net/p5-Net-RawIP

PLIST_FILES=	bin/${PORTNAME}
PORTDOCS=	README

USE_PERL5_RUN=	yes
NO_BUILD=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/
.ifndef NOPORTDOCS
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
