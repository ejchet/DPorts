# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: sysutils/hachoir-metadata/Makefile 319470 2013-05-31 09:02:44Z antoine $

PORTNAME=	hachoir-metadata
PORTVERSION=	1.3.3
PORTREVISION=	1
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Extract metadata from files

BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/hachoir_parser/__init__.py:${PORTSDIR}/devel/hachoir-parser
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/hachoir_parser/__init__.py:${PORTSDIR}/devel/hachoir-parser

USE_PYTHON=	yes
USE_PYDISTUTILS=yes

.include <bsd.port.pre.mk>

PYDISTUTILS_CONFIGUREARGS+=	--disable-qt
PYDISTUTILS_BUILDARGS+=	--disable-qt
PYDISTUTILS_INSTALLARGS+=	--disable-qt

pre-everything::
	@${ECHO_MSG} ""
	@${ECHO_MSG} "To make hachoir-metadata-gtk work you need to have"
	@${ECHO_MSG} "py-gtk (x11-toolkits/py-gtk2) installed."
	@${ECHO_MSG} ""

.include <bsd.port.post.mk>
