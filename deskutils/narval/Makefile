# ex:ts=8
# Ports collection Makefile for:	narval
# Date created:			Jan 4, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/deskutils/narval/Makefile,v 1.22 2012/11/17 05:55:29 svnexp Exp $
#

PORTNAME=	narval
PORTVERSION=	2.0.2
PORTREVISION=	7
CATEGORIES=	deskutils python
MASTER_SITES=	LOGILAB

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Network Assistant Reasoning with a Validating Agent Language

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/xmlrpclib.py:${PORTSDIR}/net/py-xmlrpclib \
		${PYTHON_SITELIBDIR}/logilab/xmltools/XmlTree.py:${PORTSDIR}/textproc/py-xmltools \
		${PYTHON_SITELIBDIR}/mx/DateTime/mxDateTime/__init__.py:${PORTSDIR}/lang/py-mx-base

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
USE_TWISTED=	yes
USE_GNOME=	pygtk2

.include <bsd.port.pre.mk>

.if defined(NOPORTDOCS)
post-patch:
	@${REINPLACE_CMD} -e 's|(.share/doc/narval., .doc.)||' ${WRKSRC}/__pkginfo__.py
.endif

before-install:
	@${REINPLACE_CMD} -e 's,/usr,${PREFIX},' ${WRKSRC}/conf/narval.conf.bak

post-install:
	@${INSTALL_DATA} ${WRKSRC}/conf/narval.conf ${PREFIX}/etc/narval/narval.conf.bak

.include <bsd.port.post.mk>
