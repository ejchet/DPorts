# New ports collection makefile for:	iriverter
# Date created:		2006-09-05
# Whom:			Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: ports/multimedia/iriverter/Makefile,v 1.12 2012/11/17 05:59:50 svnexp Exp $
#

PORTNAME=	iriverter
PORTVERSION=	0.16
PORTREVISION=	8
CATEGORIES=	multimedia java
MASTER_SITES=	SF

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Cross-platform frontend to mencoder

RUN_DEPENDS=	mencoder:${PORTSDIR}/multimedia/mencoder

USE_JAVA=	yes
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

OPTIONS_DEFINE=	SWTDEVEL
SWTDEVEL_DESC=	Use SWT Development port

CONFIGURE_ARGS=	--with-swt="${JAVALIBDIR}/${SWT_JAR}"

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSWTDEVEL}
BUILD_DEPENDS+=	\
		${JAVALIBDIR}/swt-devel.jar:${PORTSDIR}/x11-toolkits/swt-devel
RUN_DEPENDS+=	\
		${JAVALIBDIR}/swt-devel.jar:${PORTSDIR}/x11-toolkits/swt-devel
SWT_JAR=	swt-devel.jar
.else
BUILD_DEPENDS+=	\
		${JAVALIBDIR}/swt.jar:${PORTSDIR}/x11-toolkits/swt
RUN_DEPENDS+=	\
		${JAVALIBDIR}/swt.jar:${PORTSDIR}/x11-toolkits/swt
SWT_JAR=	swt.jar
.endif

.include <bsd.port.mk>
