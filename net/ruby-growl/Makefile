# New ports collection makefile for:	ruby-growl
# Date created:		2011-05-08
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/net/ruby-growl/Makefile,v 1.2 2012/11/17 06:00:18 svnexp Exp $
#

PORTNAME=	growl
PORTVERSION=	3.0
CATEGORIES=	net ruby
MASTER_SITES=	RF
MASTER_SITE_SUBDIR=	${PKGNAMEPREFIX:S|${RUBY_SUFFIX}||}${PORTNAME}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${PKGNAMEPREFIX:S|${RUBY_SUFFIX}||}${PORTNAME}-${PORTVERSION}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${RUBY_PKGNAMEPREFIX:S|${RUBY_SUFFIX}-||}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	A pure-ruby growl notifier

USE_RUBY=	yes
NO_BUILD=	yes

RUBY_SHEBANG_FILES=	bin/growl lib/ruby-growl.rb
PLIST_FILES=	bin/growl \
		%%RUBY_SITELIBDIR%%/ruby-growl.rb

PORTDOCS=	History.txt README.txt
DOCSDIR=	${RUBY_MODDOCDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/growl ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/lib/ruby-growl.rb ${RUBY_SITELIBDIR}/
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}/
.endfor
.endif

.include <bsd.port.mk>
