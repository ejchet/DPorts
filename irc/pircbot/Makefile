# New ports collection makefile for:   pircbot
# Date created:                2 June 2002
# Whom:                        Tim Bishop <tim@bishnet.net>
#
# $FreeBSD: ports/irc/pircbot/Makefile,v 1.35 2012/11/17 05:58:29 svnexp Exp $
#

PORTNAME=	pircbot
PORTVERSION=	1.5.0
PORTREVISION=	1
CATEGORIES=	irc java
MASTER_SITES=	http://www.jibble.org/files/ \
		ftp://ftp.i-scream.org/pub/www.jibble.org/files/ \
		http://www.i-scream.org/pub/www.jibble.org/files/

MAINTAINER=	tdb@FreeBSD.org
COMMENT=	PircBot Java IRC Bot Framework

USE_ZIP=	yes
NO_BUILD=	yes

USE_JAVA=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/pircbot.jar ${JAVAJARDIR}
.ifndef(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${CP} -r ${WRKSRC}/javadocs/* ${DOCSDIR}/
.endif

post-install:
	@${ECHO_MSG} "    ---------------------------------------------------------------"
	@${ECHO_MSG} "    To use pircbot add ${JAVAJARDIR}/pircbot.jar to"
	@${ECHO_MSG} "    your classpath. A short tutorial can be found here:"
	@${ECHO_MSG} "        http://www.jibble.org/pircbot.php"
.ifndef(NOPORTDOCS)
	@${ECHO_MSG} "    pircbot javadoc documentation has also been installed in:"
	@${ECHO_MSG} "        ${DOCSDIR}"
.endif
	@${ECHO_MSG} "    ---------------------------------------------------------------"

.include <bsd.port.mk>
