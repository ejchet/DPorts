# Created by: Kirill Ponomarew <ponomarew@oberon.net>
# $FreeBSD: net-mgmt/portmon/Makefile 315736 2013-04-05 19:42:03Z bdrewery $

PORTNAME=	portmon
PORTVERSION=	2.0
CATEGORIES=	net-mgmt
MASTER_SITES=	http://voodoo.bawue.com/download/ \
		http://www.aboleo.net/software/portmon/downloads/ \
		http://www.bayofrum.net/dist/${PORTNAME}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Daemon that monitor network services

GNU_CONFIGURE=	yes

MAN8=		portmon.8

PORTDOCS=	README
PLIST_FILES=	bin/portmon etc/portmon.hosts.sample

post-patch:
	@${REINPLACE_CMD} -e 's|/etc|${PREFIX}/etc|g' \
		 ${WRKSRC}/extras/${PORTNAME}.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/${PORTNAME} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/extras/portmon.8 \
		${PREFIX}/man/man8
	${INSTALL_DATA} ${WRKSRC}/extras/portmon.hosts.sample \
		${PREFIX}/etc
	@${ECHO} "------------------------------------------------------------"
	@${ECHO} "Sample of configuration file placed at"
	@${ECHO} "${PREFIX}/etc/portmon.hosts.sample"
	@${ECHO} "------------------------------------------------------------"

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in README
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
