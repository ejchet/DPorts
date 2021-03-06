# Created by: Hubert Tournier <hubert@frbsd.org>
# $FreeBSD: security/smtpscan/Makefile 324191 2013-08-03 13:44:00Z mat $

PORTNAME=	smtpscan
PORTVERSION=	0.5
PORTREVISION=	2
CATEGORIES=	security mail perl5
MASTER_SITES=	PACKETSTORM/UNIX/scanners \
		http://www.frbsd.org/dist/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Remote SMTP server version detector

LICENSE=	GPLv2

RUN_DEPENDS=	p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS

WRKSRC=		${WRKDIR}/${PORTNAME}
NO_BUILD=	yes

USES=		perl5
USE_PERL5=	run

MAN1=		smtpscan.1
PLIST_FILES=	bin/smtpscan \
		%%DATADIR%%/fingerprints \
		%%DATADIR%%/tests
PLIST_DIRS=	%%DATADIR%%

post-patch:
	@${REINPLACE_CMD} -e \
		's|^#!.*|#!${PERL}| ; \
		 s|/usr/local/share|${PREFIX}/share| ; \
		 s|@VERSION@|${PORTVERSION}|' ${WRKSRC}/src/smtpscan
	@${REINPLACE_CMD} -e \
		's|@VERSION@|${PORTVERSION}| ; \
		 s|@prefix@|${PREFIX}/share|' ${WRKSRC}/docs/man/smtpscan.1

do-install:
	(cd ${WRKSRC}/src && ${INSTALL_SCRIPT} smtpscan ${PREFIX}/bin)
	(cd ${WRKSRC}/docs/man \
		&& ${INSTALL_MAN} smtpscan.1 ${MANPREFIX}/man/man1)
	@${MKDIR} ${DATADIR}
	(cd ${WRKSRC}/src && ${INSTALL_SCRIPT} fingerprints tests ${DATADIR})

.include <bsd.port.mk>
