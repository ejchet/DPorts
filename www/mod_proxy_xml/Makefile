# Created by: Dominic Marks <dom@goodforbusiness.co.uk>
# $FreeBSD: www/mod_proxy_xml/Makefile 319447 2013-05-30 19:14:44Z ohauer $

PORTNAME=	mod_proxy_xml
PORTVERSION=	0.1
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://apache.webthing.com/svn/apache/filters/xmlns/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}
DISTFILES=	xmlns.h mod_proxy_xml.c

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Apache module for rewriting URI references in XML

MAKE_JOBS_SAFE=	yes

WRKSRC=	${WRKDIR}

USE_GNOME=	libxml2
USE_APACHE=	22+

AP_FAST_BUILD=	yes
AP_GENPLIST=	yes
AP_INC=	${LOCALBASE}/include/libxml2
AP_LIB=	${LOCALBASE}/lib -lxml2

pre-extract:
	@${MKDIR} ${WRKDIR}

do-extract:
	@${CP} ${DISTDIR}/xmlns.h ${DISTDIR}/mod_proxy_xml.c ${WRKDIR}/

.include <bsd.port.mk>
