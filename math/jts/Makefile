# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD: math/jts/Makefile 312393 2013-02-16 23:57:07Z wen $

PORTNAME=	jts
PORTVERSION=	1.13
CATEGORIES=	math databases
MASTER_SITES=	SF/${PORTNAME}-topo-suite/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	JTS Topology Suite

RUN_DEPENDS=	${JAVALIBDIR}/jdom.jar:${PORTSDIR}/java/jdom		\
		${JAVALIBDIR}/junit.jar:${PORTSDIR}/java/junit		\
		${JAVALIBDIR}/xml-apis.jar:${PORTSDIR}/textproc/xerces-j

USE_ZIP=	yes
NO_BUILD=	yes
USE_JAVA=	yes
NO_WRKSUBDIR=	yes

VER=		${PORTVERSION:tl}
JARFILES=	JTS_Test acme jts-${VER}

.include <bsd.port.options.mk>

do-install:
.for jar in ${JARFILES}
	${INSTALL_DATA} ${WRKSRC}/lib/${jar}.jar	\
		${JAVAJARDIR}/${jar:S|-${VER}||}.jar
.endfor
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	@cd ${WRKDIR}/doc && ${COPYTREE_SHARE} . ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.if defined(MAINTAINER_MODE)
regression-test:	install
	${SED} -e 's|%%JAVAJARDIR%%|${JAVAJARDIR}|;	\
			s|%%JAVALIBDIR%%|${JAVALIBDIR}|;\
			s|%%JAVA%%|${JAVA}|'		\
		${FILESDIR}/testJTS.sh.in > ${WRKSRC}/testJTS.sh
	(cd ${WRKSRC} && ${SH} ./testJTS.sh )
.endif

.include <bsd.port.mk>
