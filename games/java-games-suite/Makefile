# Created by: Jason Helfman <jgh@FreeBSD.org>
# $FreeBSD: games/java-games-suite/Makefile 321447 2013-06-21 06:37:05Z jgh $

PORTNAME=	java-games-suite
PORTVERSION=	1.0
CATEGORIES=	games java
MASTER_SITES=	SF/javagamessuite

MAINTAINER=	jgh@FreeBSD.org
COMMENT=	Simple Java games collection

USE_JAVA=	yes
JAVA_VERSION=	1.6+
PLIST_FILES=	bin/java-games-suite \
		%%JAVAJARDIR%%/MM.jar \
		%%JAVAJARDIR%%/reversi.jar \
		%%JAVAJARDIR%%/Mine.jar \
		%%JAVAJARDIR%%/Tetris.jar \
		%%JAVAJARDIR%%/RT.jar \
		%%JAVAJARDIR%%/Number.jar
SUB_FILES=	${PORTNAME}.sh
GAMES=	MM reversi Mine Tetris RT Number

post-extract-script:
.for game in ${GAMES}
	@${ECHO_CMD} "Main-Class: ${game}" > ${WRKSRC}/${game}/MANIFEST.MF
.endfor

do-build:
.for game in ${GAMES}
	cd ${WRKSRC}/${game} && \
		${JAVAC} ${game}.java
.endfor

post-build-script:
.for game in ${GAMES}
	@cd ${WRKSRC}/${game} && \
		${JAR} -cfm ${game}.jar MANIFEST.MF ${game}.java ${game}.class
.endfor

do-install:
.for game in ${GAMES}
	${INSTALL_DATA} ${WRKSRC}/${game}/${game}.jar ${JAVAJARDIR}
.endfor
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME}.sh ${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
