# Created by: Johann Visagie <wjv@FreeBSD.org>
# $FreeBSD: ports/security/keychain/Makefile,v 1.36 2012/12/17 13:36:42 svnexp Exp $

PORTNAME=	keychain
PORTVERSION=	2.7.1
CATEGORIES=	security
MASTER_SITES=	http://www.funtoo.org/archive/keychain/ \
		GENTOO/distfiles

MAINTAINER=	garga@FreeBSD.org
COMMENT=	User-friendly front-end to ssh-agent(1)

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS
FETCH_ARGS?=	-Fpr
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_PERL5_BUILD=yes

MAN1=		keychain.1

PLIST_FILES=	bin/${PORTNAME}

PORTDOCS=	ChangeLog README.rst

.include <bsd.port.pre.mk>

.if !exists(${LOCALBASE}/bin/ssh-agent) && !exists(/usr/bin/ssh-agent)
RUN_DEPENDS+=	ssh-agent:${PORTSDIR}/security/openssh-portable
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MAN1PREFIX}/man/man1

.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
