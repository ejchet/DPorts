# Created by: Simon Olofsson <simon@olofsson.de>
# $FreeBSD: ports/devel/hub/Makefile,v 1.2 2012/11/17 05:55:50 svnexp Exp $

PORTNAME=	hub
PORTVERSION=	1.10.2
CATEGORIES=	devel

MAINTAINER=	simon@olofsson.de
COMMENT=	Introduces git to GitHub

USE_GITHUB=	yes
GH_ACCOUNT=	defunkt
GH_TAGNAME=	v${DISTVERSION}
GH_COMMIT=	16b388a

USE_RUBY=	yes
USE_RAKE=	yes

PLIST_FILES=	bin/hub \
		etc/bash_completion.d/hub \
		share/zsh/site-functions/_hub
PLIST_DIRSTRY=	etc/bash_completion.d \
		share/zsh/site-functions share/zsh
MAN1=		hub.1

do-build:
	@cd ${WRKSRC} && ${RAKE_BIN} standalone

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/hub ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/hub.1 ${MAN1PREFIX}/man/man1

post-install:
	${MKDIR} ${PREFIX}/etc/bash_completion.d
	${INSTALL_DATA} ${WRKSRC}/etc/hub.bash_completion.sh ${PREFIX}/etc/bash_completion.d/hub
	${MKDIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/etc/hub.zsh_completion ${PREFIX}/share/zsh/site-functions/_hub

.include <bsd.port.mk>
