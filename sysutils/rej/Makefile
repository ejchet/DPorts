# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD: sysutils/rej/Makefile 317591 2013-05-07 08:57:37Z ehaupt $

PORTNAME=	rej
PORTVERSION=	0.16
CATEGORIES=	sysutils perl5
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Merges patch-rejects and runs a merge program to verify the changes

USES=		shebangfix
USE_PERL5=	yes
NO_BUILD=	yes

SHEBANG_FILES=	qp mp

PORTDOCS=	CHANGELOG README vimrc
PLIST_FILES=	bin/rej bin/rej-qp bin/rej-mp

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|/bin/bash|${SH}|' \
		${WRKSRC}/runtests.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
.for f in qp mp
	${INSTALL_SCRIPT} ${WRKSRC}/${f} ${PREFIX}/bin/${PORTNAME}-${f}
.endfor

.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

run-test: patch
	@cd ${WRKSRC}; ${SH} runtests.sh

.include <bsd.port.mk>
