# Created by: ijliao
# $FreeBSD: sysutils/lfm/Makefile 319212 2013-05-27 11:33:08Z bsam $

PORTNAME=	lfm
PORTVERSION=	2.3
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	GOOGLE_CODE \
		https://inigo.katxi.org/devel/lfm/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Last File Manager, a simple 'commander'-type file manager

LICENSE=	GPLv3

OPTIONS_DEFINE=	DOCS

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

MAN1=		lfm.1 pyview.1
PORTDOCS=	ChangeLog NEWS README README.pyview TODO

post-patch:
	@${REINPLACE_CMD} -e \
		'/DOC_FILES/d ; \
		 /MAN_FILES/d' ${WRKSRC}/setup.py

.include <bsd.port.options.mk>

post-install:
.for f in lfm pyview
	(cd ${WRKSRC} && ${INSTALL_MAN} ${f}.1 ${MAN1PREFIX}/man/man1)
.endfor
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
