# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: ports/graphics/py-seqdiag/Makefile,v 1.24 2013/02/11 02:50:27 svnexp Exp $

PORTNAME=	seqdiag
PORTVERSION=	0.8.2
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Simple sequence-diagram image generator

LICENSE=	AL2

RUN_DEPENDS=	${PKGNAMEPREFIX}imaging>=1.1.5:${PORTSDIR}/graphics/py-imaging \
		${PKGNAMEPREFIX}funcparserlib>=0.3.4:${PORTSDIR}/devel/py-funcparserlib \
		${PKGNAMEPREFIX}blockdiag>=1.2.4:${PORTSDIR}/graphics/py-blockdiag

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install

DOCSDIR=	${PREFIX}/share/doc/${UNIQUENAME}
EXAMPLESDIR=	${PREFIX}/share/examples/${UNIQUENAME}

MAN1=	${PORTNAME}.1

PORTDOCS=	README.txt
PORTEXAMPLES=	*

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/src/${PORTDOCS} ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/examples/${PORTEXAMPLES} ${EXAMPLESDIR}
.endif
	@${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MAN1PREFIX}/man/man1/

x-generate-plist:
	${ECHO} bin/${PORTNAME} > pkg-plist.new
	${FIND} ${PYTHON_SITELIBDIR}/${PYEASYINSTALL_EGG} -type f | ${SORT} | \
	${SED} -e 's,${PYTHON_SITELIBDIR},%%PYTHON_SITELIBDIR%%,' \
		-e 's,${PYEASYINSTALL_EGG},%%PYEASYINSTALL_EGG%%,' \
		>> pkg-plist.new
	${FIND} ${PYTHON_SITELIBDIR}/${PYEASYINSTALL_EGG} -type d -depth | ${SORT} -r | \
	${SED} -e 's,${PYTHON_SITELIBDIR},@dirrm %%PYTHON_SITELIBDIR%%,' \
		-e 's,${PYEASYINSTALL_EGG},%%PYEASYINSTALL_EGG%%,' \
		>> pkg-plist.new

.include <bsd.port.mk>
